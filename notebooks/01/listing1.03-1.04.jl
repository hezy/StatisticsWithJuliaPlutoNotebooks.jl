### A Pluto.jl notebook ###
# v0.19.39

using Markdown
using InteractiveUtils

# ╔═╡ 82cda098-82f9-417d-b497-9ea59f7f9363
using Statistics

# ╔═╡ 06a876ce-1d2f-11eb-2128-e1e8c67779cb
md"## Listing 1.3"

# ╔═╡ 293b0710-1d2f-11eb-2da1-2d516ce4c85f
begin
	Text(@time begin
			data1 = Float64[]
				for _ in 1:10^6
					group = Float64[]
						for _ in 1:5*10^2
							push!(group,rand())
						end
					push!(data1,mean(group))
				end
			"98% of the means lie in the estimated range: ",
                        (quantile(data1,0.01), quantile(data1,0.99))
		end
	)
end

# ╔═╡ 0ade9930-1d2f-11eb-2329-334dc91bc5a9
md"## Listing 1.4"

# ╔═╡ b283773a-1d3b-11eb-21b8-89af728c6fed
@time begin
	data2 = [mean(rand(5*10^2)) for _ in 1:10^6]
        "98% of the means lie in the estimated range: ",
                        (quantile(data2,0.01),quantile(data2,0.99))
end

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
Statistics = "10745b16-79ce-11e8-11f9-7d13ad32a3b2"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.8.5"
manifest_format = "2.0"
project_hash = "c2ebf593fb8fca52e25f227c4ea4799a3b858e2f"

[[deps.Artifacts]]
uuid = "56f22d72-fd6d-98f1-02f0-08ddc0907c33"

[[deps.CompilerSupportLibraries_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "e66e0078-7015-5450-92f7-15fbd957f2ae"
version = "1.0.1+0"

[[deps.Libdl]]
uuid = "8f399da3-3557-5675-b5ff-fb832c97cbdb"

[[deps.LinearAlgebra]]
deps = ["Libdl", "libblastrampoline_jll"]
uuid = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"

[[deps.OpenBLAS_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Libdl"]
uuid = "4536629a-c528-5b80-bd46-f80d51c5b363"
version = "0.3.20+0"

[[deps.Random]]
deps = ["SHA", "Serialization"]
uuid = "9a3f8284-a2c9-5f02-9a11-845980a1fd5c"

[[deps.SHA]]
uuid = "ea8e919c-243c-51af-8825-aaa63cd721ce"
version = "0.7.0"

[[deps.Serialization]]
uuid = "9e88b42a-f829-5b0c-bbe9-9e923198166b"

[[deps.SparseArrays]]
deps = ["LinearAlgebra", "Random"]
uuid = "2f01184e-e22b-5df5-ae63-d93ebab69eaf"

[[deps.Statistics]]
deps = ["LinearAlgebra", "SparseArrays"]
uuid = "10745b16-79ce-11e8-11f9-7d13ad32a3b2"

[[deps.libblastrampoline_jll]]
deps = ["Artifacts", "Libdl", "OpenBLAS_jll"]
uuid = "8e850b90-86db-534c-a0d3-1478176c7d93"
version = "5.1.1+0"
"""

# ╔═╡ Cell order:
# ╟─06a876ce-1d2f-11eb-2128-e1e8c67779cb
# ╠═82cda098-82f9-417d-b497-9ea59f7f9363
# ╠═293b0710-1d2f-11eb-2da1-2d516ce4c85f
# ╟─0ade9930-1d2f-11eb-2329-334dc91bc5a9
# ╠═b283773a-1d3b-11eb-21b8-89af728c6fed
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
