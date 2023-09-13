using Documenter
using AgentEV

makedocs(
    sitename = "AgentEV.jl",
    modules = [AgentEV],
    pages = [
        "Home" => "index.md"
    ],
    format = Documenter.HTML()
)

# Documenter can also automatically deploy documentation to gh-pages.
# See "Hosting Documentation" and deploydocs() in the Documenter manual
# for more information.
deploydocs(
    repo = "github.com/MamboPower/AgentEV.jl"
)
