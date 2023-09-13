export ChargingStationAgent

using Agents

@agent ChargingStationAgent GridAgent{2} begin
    capacity::Float64
end