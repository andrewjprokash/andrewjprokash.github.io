# Projects

## Delta-V Rocket Planener
**Context:** Early-stage rocket design requires engineers to determine whether a launch vehicle can achieve mission objectives before detailed design work begins. Mission success depends on the vehicle generating sufficient delta-v (velocity) while accounting for staging effects, payload mass, propulsion performance, and launch losses. Manually performing these calculations can be time-consuming when evaluating multiple vehicle configurations.

**Problem:** Develop a tool capable of analyzing multi-stage rocket performance and determining whether a vehicle can achieve common mission destinations such as Low Earth Orbit (LEO), Geostationary Transfer Orbit (GTO), Trans-Lunar Injection (TLI), and Trans-Mars Injection (TMI). The tool needed to account for stage-by-stage mass depletion and propulsion characteristics while providing an intuitive assessment of mission feasibility.

**Approach:** 
- Developed a MATLAB program to model a three-stage launch vehicle architecture.
- Implemented the Tsiolkovsky Rocket Equation to calculate delta-v contributions from each stage.
- Modeled changing vehicle mass throughout flight, including payload, dry mass, and propellant mass for each stage.
- Included propulsion performance inputs through specific impulse (Isp) values for each stage.
- Incorporated a launch loss budget to account for gravity and aerodynamic drag effects.
- Compared effective mission delta-v against predefined mission benchmarks for LEO, GTO, TLI, and TMI missions.
- Generated visualizations to show stage-by-stage delta-v contributions and overall vehicle capability.

**Results:**
The tool calculated stage-level and total vehicle performance for a representative launch vehicle configuration:
- Stage 1 Contribution: 1.74 km/s
- Stage 2 Contribution: 8.80 km/s
- Stage 3 Contribution: 3.01 km/s
- Total Vehicle Delta-V: 13.56 km/s
- Effective Delta-V after launch losses: 11.76 km/s

The resulting mission assessment showed that the vehicle could successfully reach Low Earth Orbit (LEO) but did not meet the predefined delta-v requirements for GTO, TLI, or TMI missions once launch losses were considered.

**Visuals:**
<img width="1640" height="1750" alt="image" src="https://github.com/user-attachments/assets/58a8da0e-aff4-47db-87fe-a50da9851dad" />

[Read More](projects/deltav_rocket_planner.md)


## AE1601 Raptor-Inspired Glider
**Context:** Course project for AE1601.  
**Problem:** Design a stable glider using raptor-inspired wing geometry.  
**Approach:**  
- Airfoil selection (NACA 4412)  
- SolidWorks modeling  
- MATLAB stability analysis (Cm vs AoA)  
- Flight testing  
**Results:**  
- Stable glide at 8–12 m/s  
- Predicted stability margin within 6% of measured values  
**Visuals:**  
![Glider CAD](assets/cad/glider.png)

[Read More](projects/glider.md)

---

## YJSP Elytra Flight Dynamics
**Context:** Student rocketry program at Georgia Tech.  
**Problem:** Develop trajectory models for a liquid-fueled rocket.  
**Approach:**  
- MATLAB/Python simulation tools  
- Propulsion modeling  
- Stability and control analysis  
**Results:**  
- Generated trajectory envelopes  
- Supported design reviews

[Read More](projects/elytra.md)

---

## AE 1601 Apogee Rocket
**Context:** Course Project for AE 1601
**Problem:** Design a rocket to reach an apogee of 125 ft without exceeding the limit, while creating a payload bay and modifying an Estes Wizard rocket kit
**Approach:**
- Research
- Design Optimization
- Manufacturing and 3d Printing
- Assembly
- Launch
**Visuals:**

![Rocket CAD](assets/cad/rocket.png)

**Results:**
- Placeholder

[Read More](projects/rocket.md)


[Back to Home](index.md)
