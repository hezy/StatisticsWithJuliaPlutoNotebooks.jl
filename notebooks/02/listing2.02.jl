### A Pluto.jl notebook ###
# v0.19.40

using Markdown
using InteractiveUtils

# ╔═╡ 0bf166c8-da45-11ee-0381-51c8806fcd25
begin
	using Random
	Random.seed!()
end

# ╔═╡ e14d4af1-d5f8-45ff-a733-f27c8a5332ff
passLength, numMatchesForLog = 8, 1

# ╔═╡ 3008129b-ae34-47ab-b872-e66db31cc758
possibleChars = ['a':'z' ; 'A':'Z' ; '0':'9']

# ╔═╡ d668b433-2ac4-4ca4-8c62-0c789619513d
correctPassword = "3xyZu4vN"

# ╔═╡ d2a567e5-ca39-4485-a689-3a28b576c3c0
numMatch(loginPassword) = 
	sum([loginPassword[i] == correctPassword[i] for i in 1:passLength])

# ╔═╡ 624eb676-77b5-49e0-8210-29bbba68e3f2
N = 10^7

# ╔═╡ 99d173cf-9e1b-4f95-a1c5-aec05295c4e5
passwords = [String(rand(possibleChars,passLength)) for _ in 1:N]

# ╔═╡ 7f2ed370-b218-4fce-9e10-68769dc6317f
numLogs = sum([numMatch(p) >= numMatchesForLog for p in passwords])

# ╔═╡ d91f6cb1-4128-4726-8c1b-422170566926
numLogs/N

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
Random = "9a3f8284-a2c9-5f02-9a11-845980a1fd5c"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.10.2"
manifest_format = "2.0"
project_hash = "fa3e19418881bf344f5796e1504923a7c80ab1ed"

[[deps.Random]]
deps = ["SHA"]
uuid = "9a3f8284-a2c9-5f02-9a11-845980a1fd5c"

[[deps.SHA]]
uuid = "ea8e919c-243c-51af-8825-aaa63cd721ce"
version = "0.7.0"
"""

# ╔═╡ Cell order:
# ╠═0bf166c8-da45-11ee-0381-51c8806fcd25
# ╠═e14d4af1-d5f8-45ff-a733-f27c8a5332ff
# ╠═3008129b-ae34-47ab-b872-e66db31cc758
# ╠═d668b433-2ac4-4ca4-8c62-0c789619513d
# ╠═d2a567e5-ca39-4485-a689-3a28b576c3c0
# ╠═624eb676-77b5-49e0-8210-29bbba68e3f2
# ╠═99d173cf-9e1b-4f95-a1c5-aec05295c4e5
# ╠═7f2ed370-b218-4fce-9e10-68769dc6317f
# ╠═d91f6cb1-4128-4726-8c1b-422170566926
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
