#!/bin/bash

##### Beginning of file

set -ev

julia --check-bounds=yes --color=yes -e '
    import Pkg;
    Pkg.add(Pkg.PackageSpec(rev="master", url="https://github.com/DilumAluthge/PredictMDExtra.jl",));
    '

julia --check-bounds=yes --color=yes -e '
    import Pkg;
    Pkg.build("PredictMDFull");
    '

julia --check-bounds=yes --color=yes -e '
    import PredictMDFull;
    '

julia --check-bounds=yes --color=yes -e '
    import Pkg;
    Pkg.test("PredictMDFull"; coverage=true);
    '

julia --check-bounds=yes --color=yes -e '
    import Pkg;
    try Pkg.add("Coverage") catch end;
    '

julia --check-bounds=yes --color=yes -e '
    import Coverage;
    import PredictMDExtra;
    cd(PredictMDExtra.pkg_dir());
    Coverage.Codecov.submit(Coverage.Codecov.process_folder());
    '

cat Project.toml

cat Manifest.toml

##### End of file
