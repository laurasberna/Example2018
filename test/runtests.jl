using Example2018
using Test

# Polynomials for a ring:
# 1. addition is associative
# 2. additive identity
# 3. additive inverse
# 4. addition commutes
# 5. multiplication.. (not implemented yet)

@testset "Polynomials for a ring" begin
    
z=Polynomial([0,0,0])

for n in 1:1000000
    deg=rand(0:100)
    p=Polynomial(rand(-1000000:1000000,deg))
    q=-p

    @test p+z==p # 2.
    @test z+p==p # 2.
    @test p+q==z # 3.
    
end
    end
