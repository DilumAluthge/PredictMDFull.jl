#!/bin/bash

##### Beginning of file

set -ev

julia --check-bounds=yes --color=yes -e 'import Pkg; Pkg.build("PredictMDFull");'

julia --check-bounds=yes --color=yes -e 'import PredictMDFull;'

julia --check-bounds=yes --color=yes -e '
    import Pkg;
    Pkg.test("PredictMDFull"; coverage=true);
    '

julia --check-bounds=yes --color=yes -e '
    import Pkg;
    cd(Pkg.dir("PredictMDFull"));
    import Coverage;
    Coverage.Codecov.submit(Coverage.Codecov.process_folder());
    '

cat Project.toml

cat Manifest.toml

##### End of file
