### A Pluto.jl notebook ###
# v0.19.39

using Markdown
using InteractiveUtils

# ╔═╡ a95250f0-1d3b-11eb-0492-5576bc284913
md"## Listing 1.5"

# ╔═╡ f2bc632e-1d3c-11eb-0fab-b741d7d2d04f
begin
	data3 = [1,2,3]
	s = 0
	beta, gamma = 2, 1

	for i in 1:length(data3)
		global s += beta*data3[i]
		data3[i] *= -1
	end
	
	"Sum of data in external scope: ", s, data3
end

# ╔═╡ 36795a2c-1d3d-11eb-22fe-7f694a7a816c
begin

	function sumData(beta)
		s = 0
		for i in 1:length(data3)
			s += data3[i] + gamma
		end
		return s
	end
	
	"Sum of data in a function: ", s, sumData(beta/2)
end

# ╔═╡ e0d70c94-1d3d-11eb-1caf-4dc5c83c9482
md"##### As mentioned before, `begin` and `end` is a very important construct in Pluto notebooks!"

# ╔═╡ 0a6f9b48-1d3e-11eb-336f-fd577cf395ef
begin
	"This will be printed!"
end

# ╔═╡ 338544f6-1d3e-11eb-1ca7-c994c82458f5
md"##### Suppress printing of the final result by a `;` after `end`."

# ╔═╡ 20635ec6-1d3e-11eb-3ad1-b99b1fe6b4c2
begin
	"This will not be printed!"
end;

# ╔═╡ Cell order:
# ╟─a95250f0-1d3b-11eb-0492-5576bc284913
# ╠═f2bc632e-1d3c-11eb-0fab-b741d7d2d04f
# ╠═36795a2c-1d3d-11eb-22fe-7f694a7a816c
# ╟─e0d70c94-1d3d-11eb-1caf-4dc5c83c9482
# ╠═0a6f9b48-1d3e-11eb-336f-fd577cf395ef
# ╟─338544f6-1d3e-11eb-1ca7-c994c82458f5
# ╠═20635ec6-1d3e-11eb-3ad1-b99b1fe6b4c2
