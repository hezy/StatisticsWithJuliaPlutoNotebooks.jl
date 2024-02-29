### A Pluto.jl notebook ###
# v0.19.39

using Markdown
using InteractiveUtils

# ╔═╡ 8be3ec46-1d49-11eb-0cb0-bb04f5925358
md"## Listing 1.6"

# ╔═╡ 837f96be-1d3e-11eb-1df7-878544276c0a
function bubbleSort!(a)
    n = length(a)
    for i in 1:n-1
        for j in 1:n-i
            if a[j] > a[j+1]
                a[j], a[j+1] = a[j+1], a[j]
            end
        end
    end
    return a
end

# ╔═╡ b14809a4-1d3f-11eb-1567-0364629fc97d
data = [65, 51, 32, 12, 23, 84, 68, 1]

# ╔═╡ b1485852-1d3f-11eb-1ebe-09648d32a6f8
bubbleSort!(data)

# ╔═╡ 3e65dfd4-1d66-11eb-275a-8747968227c7
md"## Listing 1.7"

# ╔═╡ Cell order:
# ╟─8be3ec46-1d49-11eb-0cb0-bb04f5925358
# ╠═837f96be-1d3e-11eb-1df7-878544276c0a
# ╠═b14809a4-1d3f-11eb-1567-0364629fc97d
# ╠═b1485852-1d3f-11eb-1ebe-09648d32a6f8
# ╟─3e65dfd4-1d66-11eb-275a-8747968227c7
