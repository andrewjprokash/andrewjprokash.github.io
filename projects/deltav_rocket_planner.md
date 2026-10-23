## Rocket Delta-V Planner
# Multi-Stage Rocket Delta-V Budget Planner
# Project Overview
The Multi-Stage Rocket Delta-V Budget Planner is a MATLAB-based analysis tool developed to evaluate the performance capability of multi-stage launch vehicles using first-principles rocket propulsion equations. The program calculates stage-by-stage delta-v contributions, estimates real-world mission performance after accounting for launch losses, and compares the resulting capability against common mission requirements such as Low Earth Orbit (LEO), Geostationary Transfer Orbit (GTO), Trans-Lunar Injection (TLI), and Trans-Mars Injection (TMI).

This project was created to bridge the gap between theoretical rocket performance calculations and practical mission design. Although launch vehicles are often characterized by thrust and payload capacity, the most fundamental metric determining whether a mission is achievable is total available delta-v.

The planner allows rapid assessment of how changes in vehicle mass distribution, propellant allocation, payload mass, or propulsion efficiency affect overall mission feasibility.

# Engineering Motivation

Rocket design is fundamentally a mass optimization problem. Every kilogram added to a vehicle reduces the amount of acceleration that can be achieved, while every kilogram removed increases performance.

Because rockets must carry the fuel required for future acceleration, launch systems experience an exponential relationship between mass and velocity capability. Small improvements in structural mass fraction or specific impulse can significantly impact mission performance.

- During conceptual vehicle design, engineers frequently ask questions such as:

- Can this vehicle reach orbit?

- How much payload can be delivered?

- Is an additional stage worthwhile?

- Which stage contributes the most useful delta-v?

- How much performance is lost to gravity and drag?

This MATLAB tool was designed to answer these questions using classical rocket performance analysis.

## Fundamental Theory
# Delta-V

Delta-v (Δv) represents the total change in velocity a vehicle can produce.

It is often referred to as the "currency" of spaceflight because every mission requirement can ultimately be expressed in terms of required velocity change.

Examples include:

Mission	Typical Requirement

- LEO	= ~9.4 km/s

- GTO	= ~11.8 km/s

- TLI	= ~12.0 km/s

- TMI	= ~13.0 km/s

These benchmark values are incorporated directly into the program for automatic mission evaluation.

# The Tsiolkovsky Rocket Equation

The core of the program is the Tsiolkovsky Rocket Equation:

Δv=Isp * g0 * ln⁡(m0/mf)

where

- Δv =	Velocity change produced

- Isp	= Specific impulse (s)

- g₀ = Standard gravity (9.80665 m/s²)

- m₀	= Initial mass

- mf	= Final mass

This equation was derived by Konstantin Tsiolkovsky in 1903 and remains one of the most important equations in astronautics. The equation demonstrates two critical design principles:

- Higher specific impulse increases performance.

- Lower structural mass fractions increase performance.

The logarithmic relationship also reveals diminishing returns, meaning continuously adding propellant eventually becomes inefficient.

# Why Staging Matters

Single-stage rockets are inherently limited because they must accelerate empty fuel tanks and engines after propellant is exhausted. Therefore, multi-stage rockets improve efficiency by discarding dead mass. After a stage burns all of its fuel:

The stage separates.

Its structure is discarded.

Remaining stages continue accelerating a lighter vehicle.

This significantly improves the mass ratio appearing in the rocket equation. The program models this process explicitly by calculating each stage sequentially while including all remaining upper stages and payload mass. The ignition mass for any stage is:

minitial​=mpayload​+∑mdry​+∑mfuel​

while the burnout mass becomes:

mfinal​=minitial​−mfuel​

These values are used directly within the Tsiolkovsky equation for each stage.

# MATLAB Implementation

I started by defining four key vehicle properties: payload mass, structural mass of each stage, propellant mass of each stage, and specific impulse of each stage. For the example, I am using values from NASA's Space Launch System for my numerical values.

Then, for the actual stage-by-stage delta-V calculation, I had a loop that determined the ignition mass, fuel consumption throughout the stage, delta-V calculations, and stored the results for later analysis. This methodology accurately captures how upper-stage mass affects lower-stage performance.

Then, I did the performance summation, which takes the individual delta-Vs for each stage and then adds them up to get the cumulative delta-V for the rocket. The example result for the cumulative delta-V was 13.56 km/s. However, a common mistake in preliminary rocket calculations is assuming all theoretical delta-v can be converted into useful mission velocity. In reality, launch vehicles lose performance due to gravity losses while climbing, aerodynamic drag, and steering losses. To account for these effects, the program introduces a loss budget that corresponds to approximately 1.8 km/s of expected gravity and drag losses. The effective mission delta-v becomes 11.76 km/s for the SLS example. 

Finally, to determine the mission benchmark evaluation, I compared the effective delta-V to the known mission requirements. For the sample analysis, 

- LEO → GO

- GTO → NO-GO

- TLI → NO-GO

- TMI → NO-GO

# Future Improvements

- Payload optimization analysis
- Variable mission profiles
- Sensitivity studies for mass fraction and Isp
- Graphical user interface (GUI)
- Multi-objective design optimization
- Trajectory-dependent loss estimation
- Cost-to-orbit calculations
- Integration with OpenRocket or higher-fidelity simulations

# Example Output
<img width="1640" height="1750" alt="image" src="https://github.com/user-attachments/assets/1162ab6d-02f9-413c-bb35-3f29d2cc6bba" />

# Files

[rocket_deltav_planner.pdf](rocket_deltav_planner.pdf)

# Engineering Skills Demonstrated
- MATLAB Programming
- Aerospace Vehicle Performance Analysis
- Rocket Propulsion Fundamentals
- Systems Engineering
- Data Visualization
- Mission Feasibility Assessment
- Engineering Trade Studies
- Numerical Modeling
- Application of the Tsiolkovsky Rocket Equation

[Back to Home](https://andrewjprokash.github.io/)
