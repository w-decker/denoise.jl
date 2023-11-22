module MeanSmooth

using Statistics

export msmooth

"""
    msmooth(data)

Mean smooth the time series data
"""

function msmooth(data, window)
    # check data type
    @assert eltype(data) == Int64 || eltype(data) == Float64
    # check window type
    @assert typeof(window) == Int64

    # some variables
    m, n = size(data)
    C = zeros(size(data))

    # run the mean smoothing algorythm
    for i = 1:n
        for j = window+1:m-window-1
            C[j, i] = mean(data[j-window:j+window, i])
        end
    end

    # return
    return C
end

end