<!-- Beginning of file -->

# PredictMDFull - Install PredictMD and all of its dependencies

# Main repository: [bcbi/PredictMD.jl](https://github.com/bcbi/PredictMD.jl)

# Website: [https://www.predictmd.net](https://www.predictmd.net)

---

## Installation

To install PredictMDFull, open Julia and run the following lines:
```julia
import Pkg;
Pkg.add(Pkg.PackageSpec(rev="master", url="https://github.com/bcbi/PredictMDExtra.jl",));
# Pkg.add(Pkg.PackageSpec(rev="master", url="https://github.com/bcbi/PredictMD.jl",));
Pkg.add(Pkg.PackageSpec(rev="master", url="https://github.com/bcbi/PredictMDFull.jl",));
```

## CI/CD

<table>
    <thead>
        <tr>
            <th></th>
            <th>master (stable)</th>
            <th>develop (latest)</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Travis CI</td>
            <td><a href="https://travis-ci.org/bcbi/PredictMDFull.jl/branches">
            <img
            src="https://travis-ci.org/bcbi/PredictMDFull.jl.svg?branch=master"
            /></a></td>
            <td><a href="https://travis-ci.org/bcbi/PredictMDFull.jl/branches">
            <img
            src="https://travis-ci.org/bcbi/PredictMDFull.jl.svg?branch=develop"
            /></a></td>
        </tr>
        <!--<tr>
            <td>AppVeyor CI</td>
            <td>
            <a
            href="https://ci.appveyor.com/project/mirestrepo/predictmdfull-jl/history">
            <img
            title="AppVeyor build status (master)" src="https://ci.appveyor.com/api/projects/status/github/bcbi/PredictMDFull.jl?branch=master&svg=true"
            />
            </a></td>
            <td><a href="https://ci.appveyor.com/project/mirestrepo/predictmdfull-jl/history">
            <img
            src="https://ci.appveyor.com/api/projects/status/github/bcbi/PredictMDFull.jl?branch=develop&svg=true"
            />
            </a></td>
        </tr>-->
        <tr>
            <td>CodeCov</td>
            <td>
            <a
            href="https://codecov.io/gh/bcbi/PredictMDFull.jl/branch/master">
            <img
            src="https://codecov.io/gh/bcbi/PredictMDFull.jl/branch/master/graph/badge.svg"
            /></a></td>
            <td>
            <a
            href="https://codecov.io/gh/bcbi/PredictMDFull.jl/branch/develop">
            <img src="https://codecov.io/gh/bcbi/PredictMDFull.jl/branch/develop/graph/badge.svg"
            /></a></td>
        </tr>
    </tbody>
</table>

## Repository Status

<a href="https://www.repostatus.org/#wip">
    <img src="https://www.repostatus.org/badges/latest/wip.svg" alt="Project Status: WIP – Initial development is in progress, but there has not yet been a stable, usable release suitable for the public." />
</a>

<!-- End of file -->
