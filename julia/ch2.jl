x0 = 1
f = (x,t) -> -x



# exact answer is from the fact its a seperable diff eqn

x_exact = (x0,t) -> exp(-t)*x0
x_exact(x0,1)

euler(f, 0:1e0:1, x0)[:,end]
euler(f, 0:1e-1:1, x0)[:,end]
euler(f, 0:1e-2:1, x0)[:,end]
euler(f, 0:1e-3:1, x0)[:,end]
euler(f, 0:1e-3:1, x0)[:,end]