module Simulate

using Statistics
using Interpolations

export simulate

function simulate(sr, t, p, noise)

    time = 0:1/sr:t
    noise = noise * randn(size(time))
    a = interpolate((randn(p, 1)))

    interpolate(A, (BSpline(Linear()), NoInterp()))

end

end