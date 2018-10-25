# TollRoadProject
**toby_wise-essay.md**  
**B9lab Final Exam**  
**Uploaded 25.Oct.18**  

The project represents a regulated system of toll roads. Vehicles pay to drive on them. It is regulated in the sense that there is an entity whose role it is to ensure some rules for participants.

## Solution Outline
1.	The Driver specifies his/ her requirements for a Journey
*	Vehicle Type (Autonomous? Luxury?)
*	Number of Passengers
*	Start Point; End Point
*	Express Lane?
2.	The Driver proves his/ her credentials (some assumptions made about how this would work in practice)
*	Valid Driving Licence
*	Makes payment for journey which forms contract with Vehicle
3.	Journeys will be pre-booked with the Road Operator(s) by Vehicles
*	Pricing (and payment to the vehicle if autonomous) happens at inception
*	Incomplete journeys do not attract a refund (an advanced version would handle refunds due to confirmed road-closures or breakdown)
4.	Vehicles are of different types and prices vary accordingly
*	Autonomous vs. Human-driven
*	Number of passengers
*	Luxury vs. Standard
5.	Vehicles communicate with Road Operators to confirm the total price for each Journey
* Payment is then collected and held in the Journey contract
*	The Vehicle calls this contract to distribute payments to Toll Booths as required
6.	Autonomous Vehicles have additional functions including
*	Publishing availability status and specification
*	Distributing operating profits to Vehicle Owners
7.	Tolls are set by the Regulator and vary from time to time
*	No dynamic pricing (in terms of peak-periods)
*	Differing prices for luxury vehicles and use of express (multi-occupancy) lanes
8.	Toll-booths receive payments from Vehicles and distribute them to the Regulator and Owners  
9.	Road Operators maintain roads and publish details of their status in terms of road/ lane closures and speed restrictions 
*	In an advanced version they could also include requirements relating to local conditions e.g. winter tyres required
10.	The Regulator sets Tolls and Road Taxes, updating these on a periodic basis  
## Key Issues/ Assumptions
*	The toll-road network runs on the Ethereum maninnet and the currency used throughout is Ether
*	Oracles are used to obtain information external to the Ethereum network
*	No dynamic pricing 
*	Roads and toll-booths operate 24/7/365
	
## Advanced Approach
* For a more future-proof solution (particularly in relation to the fast-developing area of autonomous vehicles) I would add features to help manage contract upgrades based on something like the approach detailed [here](https://hackernoon.com/upgradeable-smart-contracts-a7e9aef76fdd)
* Pricing would need to be more flexible, catering for example to journeys cancelled or destinations changed mid-way
* Autonomous vehicles could have AI-based approaches to pricing and job acceptance and be created as ‘Decentralised Autonomous Agents’

## Contract Interfaces
A set of Interfaces has been uploaded in the separate file TollRoadProject.sol
