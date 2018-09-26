using Example2018
using Test

# Polynomials for a ring:
# 1. addition is associative (done)
# 2. additive identity (done)
# 3. additive inverse (done)
# 4. addition commutes
# 5. multiplication.. (not implemented yet)

@testset "Polynomials form a ring" begin
    
z=Polynomial([0,0,0])

for n in 1:100
    deg=rand(0:100)
    p=Polynomial(rand(-1000000:1000000,deg))
    q=-p

    @test p+z==p # 2.
    @test z+p==p # 2.
    @test p+q==z # 3.

    dega=rand(0:100); degb=rand(0:100); degc=rand(0:100)
    a=Polynomial(rand(-1000000:1000000,dega))
    b=Polynomial(rand(-1000000:1000000,degb))
    c=Polynomial(rand(-1000000:1000000,degc))
    prov1=a+b
    prov2=b+c
    @test prov1+c==a+prov2 # 1.
    @test a+b==b+a #4.
    
    
end
    
    end
