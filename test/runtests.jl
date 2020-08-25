using CoveragePackage
using Test

@testset "CoveragePackage.jl" begin
    e = CoveragePackage.ExtractKeyAsField(1, "2")
    e2 = CoveragePackage.ExtractKeyAsField(1, "2")
	@test hash(e) === hash(e2)
	@test e == e2
end
