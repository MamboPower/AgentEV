module AgentEV

# Use the README as the module docs
@doc let
    path = joinpath(dirname(@__DIR__), "README.md")
    include_dependency(path)
    read(path, String)
end AgentEV

include("agents/ElectricVehicleAgent.jl")
include("agents/ChargingStationAgent.jl")
end
