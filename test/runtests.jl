using Example2018
using Test

# Polynomials for a ring:
# 1. addition is associative
# 2. additive identity
# 3. additive inverse
# 4. addition commutes
# 5. multiplication.. (not implemented yet)

z=Polynomial([0,0,0])
p=Polynomial([1,2,3])
q=-p

@test p+z==p # 2.
@test p+q==z # 3.
