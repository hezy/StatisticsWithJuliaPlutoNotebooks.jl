### A Pluto.jl notebook ###
# v0.19.39

using Markdown
using InteractiveUtils

# ╔═╡ 29db8358-1d24-11eb-166a-e1b1c886af45
md"## Listing 1.2"

# ╔═╡ af985f1c-1d23-11eb-335b-c3abd97e66ea
begin
	array1 = [(2n+1)^2 for n in 1:5]
	array2 = [sqrt(i) for i in array1]
	typeof(1:5), typeof(array1), typeof(array2)
end

# ╔═╡ d4e0542a-1d23-11eb-1ef2-3d3b86cd30cb
1:5, array1, array2

# ╔═╡ Cell order:
# ╟─29db8358-1d24-11eb-166a-e1b1c886af45
# ╠═af985f1c-1d23-11eb-335b-c3abd97e66ea
# ╠═d4e0542a-1d23-11eb-1ef2-3d3b86cd30cb
