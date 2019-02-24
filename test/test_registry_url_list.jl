##### Beginning of file

import PredictMDFull
import Test

Test.@test(typeof(PredictMDExtra._registry_url_list()) <: Vector{String})
Test.@test(length(PredictMDExtra._registry_url_list()) > 0)

##### End of file
