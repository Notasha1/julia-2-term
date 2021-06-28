function gcdex(m::Int,n::Int)
    a, b = m, n
u_a, v_a = 1, 0
u_b, v_b = 0, 1
while b != 0
    k = a÷b
    a, b = b, a % b 
    u, v = u_a, v_a
    u_a, v_a = u_b, u_a
    u_b, v_b = u-k*u_b, v-k*v_b
end
if u_a<0
    u_a+=n
end
return u_a
end