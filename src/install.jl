##### Beginning of file

function install(m::Module; precompile::Bool = true)
    registry_url_list::Vector{String} = _registry_url_list()
    package_list::Vector{String} = _package_list()
    try
        Base.eval(
            m,
            Base.Meta.parse("import Pkg"),
            )
    catch e1
        @warn("Ignoring exception: ", e1,)
    end
    for registry_url in registry_url_list
        try
            Base.eval(
                m,
                Base.Meta.parse(
                    string(
                        "Pkg.Registry.add(",
                        "Pkg.RegistrySpec(",
                        "url=\"$(registry_url)\"",
                        "))"
                        )
                    ),
                )
        catch e2
            @warn("Ignoring exception: ", e2,)
        end
    end
    for p in package_list
        try
            Base.eval(
                m,
                Base.Meta.parse(string("Pkg.add(\"",p,"\")",)),
                )
        catch e3
            @warn("Ignoring exception: ", e3,)
        end
    end
    if precompile
        import_all(m)
    end
end

install() = install(Main)

##### End of file
