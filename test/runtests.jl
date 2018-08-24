using MLMetrics
using MLLabelUtils
using LossFunctions
using Test
using ReferenceTests
# using Random # This is needed if 'randstring' is called
# using Statistics # This is necessary to use 'mean' etc.

tests = [
    "classification.jl",
    "regression.jl"
]

for test in tests
    @testset "$test" begin
        include(test)
    end
end
