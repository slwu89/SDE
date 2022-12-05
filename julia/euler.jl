# euler method in julia

function euler(f, tspan, x0)
    # number of steps
    steps = length(tspan)

    # allocate space
    x = zeros(length(x0), steps)

    # initial state
    x[:,1] .= x0    

    # iterate
    for k in 2:steps

        # time discretization
        dt = tspan[k] - tspan[k-1]

        # step
        x[:,k] .= x[:,k-1] + f(x[:,k-1], tspan[k-1]) * dt

    end

    return x
end