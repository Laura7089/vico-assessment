### A Pluto.jl notebook ###
# v0.19.36

#> [frontmatter]
#> title = "VICO Exam Submission"
#> 
#>     [[frontmatter.author]]
#>     name = "Y3863148"

using Markdown
using InteractiveUtils

# ╔═╡ 9df608cc-b6a9-11ee-173a-27baf166672a
begin
	using DataFrames
	using PlutoUI
	using LinearAlgebra
end

# ╔═╡ 169f0ebc-59ce-4a95-ad36-71313b346aa0
md"""
# VICO Exam 2023

Exam Number: Y3863148
"""

# ╔═╡ 24a5b52f-d8b3-428c-9447-6ab83d0ac884
md"""
## Question 1

### Q1 Part i
"""

# ╔═╡ d0ff2285-362b-40af-8143-3e01e32c32da
md"""
#### Q1i Part a

Given the equations:

```math
\begin{align}
Q &= \frac{hc}{\lambda} \\
Q &= \frac{\Phi}{n}
\end{align}
```

Where:
- ``Q`` is the radiant energy of a photon in Joules
- ``h`` is Planck's constant
- ``c`` is the speed of light in metres/second
- ``\lambda`` is the wavelength, our target, in metres
- ``\Phi`` is the radiant flux of the source in Watts
- ``n`` is the number of photons emitted per second

Setting our two equations equal and rearranging for ``\lambda``:

```math
\lambda = \frac{hcn}{\Phi}
```
"""

# ╔═╡ 2ec3752e-22a2-4ab4-a79c-2ae2f3fa2684
begin
	# photon emission rate of the LED
	const n = 10e19
	
	# radiant flux of the LED
	const Φ = 3.0

	# Planck's constant
	const h = 6.626e-34

	# speed of light
	const c = 299_792_458

	λ = (h * c * n) / Φ

	print(λ)
end

# ╔═╡ 83ca689f-ba67-4524-9335-66bf837ccacf
md"""
Hence, the final wavelength of the light source is approximately **$(round(λ * 10e6, digits=4))μm**.
"""

# ╔═╡ f48f7d00-790b-4424-b3bb-e8a0900558e9
md"""
#### Q1i Part b

Once more rearranging our equation, this time for ``\Phi``, the radiant flux:

```math
\Phi = \frac{hcn}{\lambda}
```
"""

# ╔═╡ e579c2cf-4429-4e12-a870-3720f4227320
begin
	radiantflux = (h * c * n) / 555e-9
	print(radiantflux)
end

# ╔═╡ 193527c1-bae2-4c7e-9566-0433ece552c9
md"""
To obtain the **luminous flux** from this value, we must compute the **Spectral Luminous Efficiency Function** at ``\lambda``, that is, ``V(\lambda)``.
555nm is the peak of the function, at 683lmw/w.

Ergo:
"""

# ╔═╡ 4577a569-2f6f-43e1-96af-551f86a7548e
begin
	luminousflux = radiantflux * 683
	print(luminousflux)
end

# ╔═╡ b8f55c25-d48a-4cf1-aa55-b4e1796b8d44
md"""
Hence, our light source has a luminous intensity of **$(Int(round(luminousflux)))lm**.
"""

# ╔═╡ 23ed8e3e-ddc3-4cc3-8586-06d5eacd2524
md"""
### Q1 Part ii
"""

# ╔═╡ 334bc7ce-5338-466f-b566-a7f04cd739c5
md"""
#### Q1ii Part a


"""

# ╔═╡ 3610f6ab-6ca6-4930-910e-ad3ece7d7a5d
md"""
#### Q1iii Part b

The Phong BRDF Specular lobe term is:

```math
f_r(v_i, v_r) = k_s(v_r \cdot r_{v_r})^m
```

Where ``r_{v_r}`` is the mirror of ``v_r``.

As code:
"""

# ╔═╡ 5b4b1649-28a6-4fac-b76a-06c81d4b6852
function phonglobe(vi, vr, ks, m)
	rvi = vi .* -1
	return ks * dot(vr, rvi) ^ m
end

# ╔═╡ 455e6b26-90f2-4067-8d41-46e94085eed9
md"""
The Lambertian diffuse lobe term is:

!!! warning
	TODO

```math
```
"""

# ╔═╡ 68a507c3-614c-4234-8fd3-6f4571a5570c
begin
	const r = 2.0
	const ρd = [75, 30, 50]
	const ks = [64, 64, 64]
	const m = 16
	const Li = [128, 255, 128]
	const vi = (θ = π/4, π = 0)
	const vr = (θ = π/6, ϕ = π)
end

# ╔═╡ 1542f5e6-2738-44b5-bfb7-6721cb78fe4f
md"""
## Question 2

### Q2 part i
"""

# ╔═╡ cd791d2f-e627-4790-b58d-43c48e0d795e
md"""
#### Q2i Part a

The *only* region of the cube which is visible in both images is the edge which the two protrayed faces share.

In each image, the visible parts of the cube are precisely the face parallel to the viewing plane of the projection (henceforth "face 1" and "face 2" for the two images) and the four edges surrounding them.
The right edge of face 1 and the left edge of face 2 are one and the same.
"""

# ╔═╡ 8ea0649b-c0cb-4864-9feb-97c7ec0c6c05
md"""
#### Q2i Part b

The world-to-image conversion matrices of each camera are as follows:

!!! warning
	TODO

```math
\begin{align}
C_1 &= \begin{bmatrix}
	
\end{bmatrix}
\end{align}
```
"""

# ╔═╡ cb27513c-80b2-421a-8d0a-13de0e43b133
md"""
#### Q2i Part c

!!! warning
	TODO
"""

# ╔═╡ d7b33754-3927-4ec0-8e40-b28ca18b2525
md"""
### Q2 Part ii

#### Q2ii Part a

The projection area of image 2 entirely encompasses (or appears to) the image plane of image 1.

Additionally, assuming that the camera is held perfectly steady, the two image planes are parallel.
"""

# ╔═╡ ce772428-65cf-4247-ad71-ed4dafaa64f3
md"""
#### Q2ii Part b

$(LocalResource("./corridor_epipolar.png"))
"""

# ╔═╡ 5d95bda6-a02a-4fdd-9477-14d87eb06d44
md"""
#### Q2ii Part c

!!! warning
	TODO
"""

# ╔═╡ 05e6abda-1d1f-4300-832e-84692d0e109d
md"""
#### Q2ii Part d

!!! warning
	TODO
"""

# ╔═╡ 43aaf1f1-3231-4f5b-aac8-e21f805d6457
md"""
## Question 3

!!! warning
	todo
"""

# ╔═╡ 246098e6-3d68-471f-bb38-6e9f37e6da52
md"""
## Question 4

### Q4 Part i

#### Q4i Part a

To represent most points from a sphere, two images suffice.

For a cube, likewise, two images suffice.

#### Q4i Part b

!!! warning
	TODO

#### Q4i Part c

In the case of the sphere, a band around the middle circumference of the sphere between the two projection planes is missing - the capturing projections must be of infinite length to view this in full.
The area around this band shows the most distorted pattern.

In the case of the cube, all areas of the cube are visible, but the areas around the edges that lie equidistant between the two image planes have the highest distortion.

#### Q4i Part d

!!! warning
	TODO
"""

# ╔═╡ d22cbac3-efd1-4997-a70e-83c0b4476af9
md"""
### Q4 Part ii

!!! warning
	TODO
"""

# ╔═╡ d9925de1-afe1-421e-b56d-08a76ef0bddc
md"""
### Q4 Part iii

!!! warning
	TODO
"""

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
DataFrames = "a93c6f00-e57d-5684-b7b6-d8193f3e46c0"
LinearAlgebra = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"
PlutoUI = "7f904dfe-b85e-4ff6-b463-dae2292396a8"

[compat]
DataFrames = "~1.6.1"
PlutoUI = "~0.7.54"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.10.0"
manifest_format = "2.0"
project_hash = "5ea1f0e2f744504db1406fcc0f6fb2cf828da5d9"

[[deps.AbstractPlutoDingetjes]]
deps = ["Pkg"]
git-tree-sha1 = "c278dfab760520b8bb7e9511b968bf4ba38b7acc"
uuid = "6e696c72-6542-2067-7265-42206c756150"
version = "1.2.3"

[[deps.ArgTools]]
uuid = "0dad84c5-d112-42e6-8d28-ef12dabb789f"
version = "1.1.1"

[[deps.Artifacts]]
uuid = "56f22d72-fd6d-98f1-02f0-08ddc0907c33"

[[deps.Base64]]
uuid = "2a0f44e3-6c83-55bd-87e4-b1978d98bd5f"

[[deps.ColorTypes]]
deps = ["FixedPointNumbers", "Random"]
git-tree-sha1 = "eb7f0f8307f71fac7c606984ea5fb2817275d6e4"
uuid = "3da002f7-5984-5a60-b8a6-cbb66c0b333f"
version = "0.11.4"

[[deps.Compat]]
deps = ["TOML", "UUIDs"]
git-tree-sha1 = "75bd5b6fc5089df449b5d35fa501c846c9b6549b"
uuid = "34da2185-b29b-5c13-b0c7-acf172513d20"
version = "4.12.0"
weakdeps = ["Dates", "LinearAlgebra"]

    [deps.Compat.extensions]
    CompatLinearAlgebraExt = "LinearAlgebra"

[[deps.CompilerSupportLibraries_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "e66e0078-7015-5450-92f7-15fbd957f2ae"
version = "1.0.5+1"

[[deps.Crayons]]
git-tree-sha1 = "249fe38abf76d48563e2f4556bebd215aa317e15"
uuid = "a8cc5b0e-0ffa-5ad4-8c14-923d3ee1735f"
version = "4.1.1"

[[deps.DataAPI]]
git-tree-sha1 = "8da84edb865b0b5b0100c0666a9bc9a0b71c553c"
uuid = "9a962f9c-6df0-11e9-0e5d-c546b8b5ee8a"
version = "1.15.0"

[[deps.DataFrames]]
deps = ["Compat", "DataAPI", "DataStructures", "Future", "InlineStrings", "InvertedIndices", "IteratorInterfaceExtensions", "LinearAlgebra", "Markdown", "Missings", "PooledArrays", "PrecompileTools", "PrettyTables", "Printf", "REPL", "Random", "Reexport", "SentinelArrays", "SortingAlgorithms", "Statistics", "TableTraits", "Tables", "Unicode"]
git-tree-sha1 = "04c738083f29f86e62c8afc341f0967d8717bdb8"
uuid = "a93c6f00-e57d-5684-b7b6-d8193f3e46c0"
version = "1.6.1"

[[deps.DataStructures]]
deps = ["Compat", "InteractiveUtils", "OrderedCollections"]
git-tree-sha1 = "ac67408d9ddf207de5cfa9a97e114352430f01ed"
uuid = "864edb3b-99cc-5e75-8d2d-829cb0a9cfe8"
version = "0.18.16"

[[deps.DataValueInterfaces]]
git-tree-sha1 = "bfc1187b79289637fa0ef6d4436ebdfe6905cbd6"
uuid = "e2d170a0-9d28-54be-80f0-106bbe20a464"
version = "1.0.0"

[[deps.Dates]]
deps = ["Printf"]
uuid = "ade2ca70-3891-5945-98fb-dc099432e06a"

[[deps.Downloads]]
deps = ["ArgTools", "FileWatching", "LibCURL", "NetworkOptions"]
uuid = "f43a241f-c20a-4ad4-852c-f6b1247861c6"
version = "1.6.0"

[[deps.FileWatching]]
uuid = "7b1f6079-737a-58dc-b8bc-7a2ca5c1b5ee"

[[deps.FixedPointNumbers]]
deps = ["Statistics"]
git-tree-sha1 = "335bfdceacc84c5cdf16aadc768aa5ddfc5383cc"
uuid = "53c48c17-4a7d-5ca2-90c5-79b7896eea93"
version = "0.8.4"

[[deps.Future]]
deps = ["Random"]
uuid = "9fa8497b-333b-5362-9e8d-4d0656e87820"

[[deps.Hyperscript]]
deps = ["Test"]
git-tree-sha1 = "8d511d5b81240fc8e6802386302675bdf47737b9"
uuid = "47d2ed2b-36de-50cf-bf87-49c2cf4b8b91"
version = "0.0.4"

[[deps.HypertextLiteral]]
deps = ["Tricks"]
git-tree-sha1 = "7134810b1afce04bbc1045ca1985fbe81ce17653"
uuid = "ac1192a8-f4b3-4bfe-ba22-af5b92cd3ab2"
version = "0.9.5"

[[deps.IOCapture]]
deps = ["Logging", "Random"]
git-tree-sha1 = "d75853a0bdbfb1ac815478bacd89cd27b550ace6"
uuid = "b5f81e59-6552-4d32-b1f0-c071b021bf89"
version = "0.2.3"

[[deps.InlineStrings]]
deps = ["Parsers"]
git-tree-sha1 = "9cc2baf75c6d09f9da536ddf58eb2f29dedaf461"
uuid = "842dd82b-1e85-43dc-bf29-5d0ee9dffc48"
version = "1.4.0"

[[deps.InteractiveUtils]]
deps = ["Markdown"]
uuid = "b77e0a4c-d291-57a0-90e8-8db25a27a240"

[[deps.InvertedIndices]]
git-tree-sha1 = "0dc7b50b8d436461be01300fd8cd45aa0274b038"
uuid = "41ab1584-1d38-5bbf-9106-f11c6c58b48f"
version = "1.3.0"

[[deps.IteratorInterfaceExtensions]]
git-tree-sha1 = "a3f24677c21f5bbe9d2a714f95dcd58337fb2856"
uuid = "82899510-4779-5014-852e-03e436cf321d"
version = "1.0.0"

[[deps.JSON]]
deps = ["Dates", "Mmap", "Parsers", "Unicode"]
git-tree-sha1 = "31e996f0a15c7b280ba9f76636b3ff9e2ae58c9a"
uuid = "682c06a0-de6a-54ab-a142-c8b1cf79cde6"
version = "0.21.4"

[[deps.LaTeXStrings]]
git-tree-sha1 = "50901ebc375ed41dbf8058da26f9de442febbbec"
uuid = "b964fa9f-0449-5b57-a5c2-d3ea65f4040f"
version = "1.3.1"

[[deps.LibCURL]]
deps = ["LibCURL_jll", "MozillaCACerts_jll"]
uuid = "b27032c2-a3e7-50c8-80cd-2d36dbcbfd21"
version = "0.6.4"

[[deps.LibCURL_jll]]
deps = ["Artifacts", "LibSSH2_jll", "Libdl", "MbedTLS_jll", "Zlib_jll", "nghttp2_jll"]
uuid = "deac9b47-8bc7-5906-a0fe-35ac56dc84c0"
version = "8.4.0+0"

[[deps.LibGit2]]
deps = ["Base64", "LibGit2_jll", "NetworkOptions", "Printf", "SHA"]
uuid = "76f85450-5226-5b5a-8eaa-529ad045b433"

[[deps.LibGit2_jll]]
deps = ["Artifacts", "LibSSH2_jll", "Libdl", "MbedTLS_jll"]
uuid = "e37daf67-58a4-590a-8e99-b0245dd2ffc5"
version = "1.6.4+0"

[[deps.LibSSH2_jll]]
deps = ["Artifacts", "Libdl", "MbedTLS_jll"]
uuid = "29816b5a-b9ab-546f-933c-edad1886dfa8"
version = "1.11.0+1"

[[deps.Libdl]]
uuid = "8f399da3-3557-5675-b5ff-fb832c97cbdb"

[[deps.LinearAlgebra]]
deps = ["Libdl", "OpenBLAS_jll", "libblastrampoline_jll"]
uuid = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"

[[deps.Logging]]
uuid = "56ddb016-857b-54e1-b83d-db4d58db5568"

[[deps.MIMEs]]
git-tree-sha1 = "65f28ad4b594aebe22157d6fac869786a255b7eb"
uuid = "6c6e2e6c-3030-632d-7369-2d6c69616d65"
version = "0.1.4"

[[deps.Markdown]]
deps = ["Base64"]
uuid = "d6f4376e-aef5-505a-96c1-9c027394607a"

[[deps.MbedTLS_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "c8ffd9c3-330d-5841-b78e-0817d7145fa1"
version = "2.28.2+1"

[[deps.Missings]]
deps = ["DataAPI"]
git-tree-sha1 = "f66bdc5de519e8f8ae43bdc598782d35a25b1272"
uuid = "e1d29d7a-bbdc-5cf2-9ac0-f12de2c33e28"
version = "1.1.0"

[[deps.Mmap]]
uuid = "a63ad114-7e13-5084-954f-fe012c677804"

[[deps.MozillaCACerts_jll]]
uuid = "14a3606d-f60d-562e-9121-12d972cd8159"
version = "2023.1.10"

[[deps.NetworkOptions]]
uuid = "ca575930-c2e3-43a9-ace4-1e988b2c1908"
version = "1.2.0"

[[deps.OpenBLAS_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Libdl"]
uuid = "4536629a-c528-5b80-bd46-f80d51c5b363"
version = "0.3.23+2"

[[deps.OrderedCollections]]
git-tree-sha1 = "dfdf5519f235516220579f949664f1bf44e741c5"
uuid = "bac558e1-5e72-5ebc-8fee-abe8a469f55d"
version = "1.6.3"

[[deps.Parsers]]
deps = ["Dates", "PrecompileTools", "UUIDs"]
git-tree-sha1 = "8489905bcdbcfac64d1daa51ca07c0d8f0283821"
uuid = "69de0a69-1ddd-5017-9359-2bf0b02dc9f0"
version = "2.8.1"

[[deps.Pkg]]
deps = ["Artifacts", "Dates", "Downloads", "FileWatching", "LibGit2", "Libdl", "Logging", "Markdown", "Printf", "REPL", "Random", "SHA", "Serialization", "TOML", "Tar", "UUIDs", "p7zip_jll"]
uuid = "44cfe95a-1eb2-52ea-b672-e2afdf69b78f"
version = "1.10.0"

[[deps.PlutoUI]]
deps = ["AbstractPlutoDingetjes", "Base64", "ColorTypes", "Dates", "FixedPointNumbers", "Hyperscript", "HypertextLiteral", "IOCapture", "InteractiveUtils", "JSON", "Logging", "MIMEs", "Markdown", "Random", "Reexport", "URIs", "UUIDs"]
git-tree-sha1 = "bd7c69c7f7173097e7b5e1be07cee2b8b7447f51"
uuid = "7f904dfe-b85e-4ff6-b463-dae2292396a8"
version = "0.7.54"

[[deps.PooledArrays]]
deps = ["DataAPI", "Future"]
git-tree-sha1 = "36d8b4b899628fb92c2749eb488d884a926614d3"
uuid = "2dfb63ee-cc39-5dd5-95bd-886bf059d720"
version = "1.4.3"

[[deps.PrecompileTools]]
deps = ["Preferences"]
git-tree-sha1 = "03b4c25b43cb84cee5c90aa9b5ea0a78fd848d2f"
uuid = "aea7be01-6a6a-4083-8856-8a6e6704d82a"
version = "1.2.0"

[[deps.Preferences]]
deps = ["TOML"]
git-tree-sha1 = "00805cd429dcb4870060ff49ef443486c262e38e"
uuid = "21216c6a-2e73-6563-6e65-726566657250"
version = "1.4.1"

[[deps.PrettyTables]]
deps = ["Crayons", "LaTeXStrings", "Markdown", "PrecompileTools", "Printf", "Reexport", "StringManipulation", "Tables"]
git-tree-sha1 = "88b895d13d53b5577fd53379d913b9ab9ac82660"
uuid = "08abe8d2-0d0c-5749-adfa-8a2ac140af0d"
version = "2.3.1"

[[deps.Printf]]
deps = ["Unicode"]
uuid = "de0858da-6303-5e67-8744-51eddeeeb8d7"

[[deps.REPL]]
deps = ["InteractiveUtils", "Markdown", "Sockets", "Unicode"]
uuid = "3fa0cd96-eef1-5676-8a61-b3b8758bbffb"

[[deps.Random]]
deps = ["SHA"]
uuid = "9a3f8284-a2c9-5f02-9a11-845980a1fd5c"

[[deps.Reexport]]
git-tree-sha1 = "45e428421666073eab6f2da5c9d310d99bb12f9b"
uuid = "189a3867-3050-52da-a836-e630ba90ab69"
version = "1.2.2"

[[deps.SHA]]
uuid = "ea8e919c-243c-51af-8825-aaa63cd721ce"
version = "0.7.0"

[[deps.SentinelArrays]]
deps = ["Dates", "Random"]
git-tree-sha1 = "0e7508ff27ba32f26cd459474ca2ede1bc10991f"
uuid = "91c51154-3ec4-41a3-a24f-3f23e20d615c"
version = "1.4.1"

[[deps.Serialization]]
uuid = "9e88b42a-f829-5b0c-bbe9-9e923198166b"

[[deps.Sockets]]
uuid = "6462fe0b-24de-5631-8697-dd941f90decc"

[[deps.SortingAlgorithms]]
deps = ["DataStructures"]
git-tree-sha1 = "66e0a8e672a0bdfca2c3f5937efb8538b9ddc085"
uuid = "a2af1166-a08f-5f64-846c-94a0d3cef48c"
version = "1.2.1"

[[deps.SparseArrays]]
deps = ["Libdl", "LinearAlgebra", "Random", "Serialization", "SuiteSparse_jll"]
uuid = "2f01184e-e22b-5df5-ae63-d93ebab69eaf"
version = "1.10.0"

[[deps.Statistics]]
deps = ["LinearAlgebra", "SparseArrays"]
uuid = "10745b16-79ce-11e8-11f9-7d13ad32a3b2"
version = "1.10.0"

[[deps.StringManipulation]]
deps = ["PrecompileTools"]
git-tree-sha1 = "a04cabe79c5f01f4d723cc6704070ada0b9d46d5"
uuid = "892a3eda-7b42-436c-8928-eab12a02cf0e"
version = "0.3.4"

[[deps.SuiteSparse_jll]]
deps = ["Artifacts", "Libdl", "libblastrampoline_jll"]
uuid = "bea87d4a-7f5b-5778-9afe-8cc45184846c"
version = "7.2.1+1"

[[deps.TOML]]
deps = ["Dates"]
uuid = "fa267f1f-6049-4f14-aa54-33bafae1ed76"
version = "1.0.3"

[[deps.TableTraits]]
deps = ["IteratorInterfaceExtensions"]
git-tree-sha1 = "c06b2f539df1c6efa794486abfb6ed2022561a39"
uuid = "3783bdb8-4a98-5b6b-af9a-565f29a5fe9c"
version = "1.0.1"

[[deps.Tables]]
deps = ["DataAPI", "DataValueInterfaces", "IteratorInterfaceExtensions", "LinearAlgebra", "OrderedCollections", "TableTraits"]
git-tree-sha1 = "cb76cf677714c095e535e3501ac7954732aeea2d"
uuid = "bd369af6-aec1-5ad0-b16a-f7cc5008161c"
version = "1.11.1"

[[deps.Tar]]
deps = ["ArgTools", "SHA"]
uuid = "a4e569a6-e804-4fa4-b0f3-eef7a1d5b13e"
version = "1.10.0"

[[deps.Test]]
deps = ["InteractiveUtils", "Logging", "Random", "Serialization"]
uuid = "8dfed614-e22c-5e08-85e1-65c5234f0b40"

[[deps.Tricks]]
git-tree-sha1 = "eae1bb484cd63b36999ee58be2de6c178105112f"
uuid = "410a4b4d-49e4-4fbc-ab6d-cb71b17b3775"
version = "0.1.8"

[[deps.URIs]]
git-tree-sha1 = "67db6cc7b3821e19ebe75791a9dd19c9b1188f2b"
uuid = "5c2747f8-b7ea-4ff2-ba2e-563bfd36b1d4"
version = "1.5.1"

[[deps.UUIDs]]
deps = ["Random", "SHA"]
uuid = "cf7118a7-6976-5b1a-9a39-7adc72f591a4"

[[deps.Unicode]]
uuid = "4ec0a83e-493e-50e2-b9ac-8f72acf5a8f5"

[[deps.Zlib_jll]]
deps = ["Libdl"]
uuid = "83775a58-1f1d-513f-b197-d71354ab007a"
version = "1.2.13+1"

[[deps.libblastrampoline_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "8e850b90-86db-534c-a0d3-1478176c7d93"
version = "5.8.0+1"

[[deps.nghttp2_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "8e850ede-7688-5339-a07c-302acd2aaf8d"
version = "1.52.0+1"

[[deps.p7zip_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "3f19e933-33d8-53b3-aaab-bd5110c3b7a0"
version = "17.4.0+2"
"""

# ╔═╡ Cell order:
# ╠═9df608cc-b6a9-11ee-173a-27baf166672a
# ╟─169f0ebc-59ce-4a95-ad36-71313b346aa0
# ╟─24a5b52f-d8b3-428c-9447-6ab83d0ac884
# ╟─d0ff2285-362b-40af-8143-3e01e32c32da
# ╠═2ec3752e-22a2-4ab4-a79c-2ae2f3fa2684
# ╟─83ca689f-ba67-4524-9335-66bf837ccacf
# ╟─f48f7d00-790b-4424-b3bb-e8a0900558e9
# ╠═e579c2cf-4429-4e12-a870-3720f4227320
# ╟─193527c1-bae2-4c7e-9566-0433ece552c9
# ╠═4577a569-2f6f-43e1-96af-551f86a7548e
# ╟─b8f55c25-d48a-4cf1-aa55-b4e1796b8d44
# ╟─23ed8e3e-ddc3-4cc3-8586-06d5eacd2524
# ╠═334bc7ce-5338-466f-b566-a7f04cd739c5
# ╟─3610f6ab-6ca6-4930-910e-ad3ece7d7a5d
# ╠═5b4b1649-28a6-4fac-b76a-06c81d4b6852
# ╟─455e6b26-90f2-4067-8d41-46e94085eed9
# ╠═68a507c3-614c-4234-8fd3-6f4571a5570c
# ╟─1542f5e6-2738-44b5-bfb7-6721cb78fe4f
# ╟─cd791d2f-e627-4790-b58d-43c48e0d795e
# ╟─8ea0649b-c0cb-4864-9feb-97c7ec0c6c05
# ╟─cb27513c-80b2-421a-8d0a-13de0e43b133
# ╟─d7b33754-3927-4ec0-8e40-b28ca18b2525
# ╟─ce772428-65cf-4247-ad71-ed4dafaa64f3
# ╟─5d95bda6-a02a-4fdd-9477-14d87eb06d44
# ╟─05e6abda-1d1f-4300-832e-84692d0e109d
# ╟─43aaf1f1-3231-4f5b-aac8-e21f805d6457
# ╟─246098e6-3d68-471f-bb38-6e9f37e6da52
# ╟─d22cbac3-efd1-4997-a70e-83c0b4476af9
# ╟─d9925de1-afe1-421e-b56d-08a76ef0bddc
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
