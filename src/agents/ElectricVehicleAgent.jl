export ElectricVehicleAgent

using Agents

@agent ElectricVehicleAgent GridAgent{2} begin
	battery_capacity::Float64           # battery capacity in kWh
	state_of_charge::Float64            # State of Charge (SoC) between 0 to 1
	minimum_discharge_level::Float64    # discharge level between 0 to 1 
	                                    #    to decide to charge with a probability of 1
	maximum_discharge_level::Float64    # discharge level between 0 to 1 
	                                    #    to decide to charge with a probability of 0 

	function should_charge(ev::ElectricVehicleAgent)
		# Check if the state of charge is between the minimum and maximum discharge levels
		return ev.minimum_discharge_level <= ev.state_of_charge <= ev.maximum_discharge_level
	end
end
