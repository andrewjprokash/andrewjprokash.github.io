# Projects

## AE 1601 Apogee Rocket
**Context:** As part of a four-person team project in Georgia Tech's AE 1601 Engineering Graphics and Design course, we were tasked with modifying an Estes Wizard model rocket to carry a Pnut altimeter and achieve a target apogee of 125 ft. The project combined aerospace design, CAD modeling, flight simulation, manufacturing, assembly, and experimental testing to develop and validate a custom flight vehicle.

**Problem:** The stock Estes Wizard lacked sufficient internal volume to accommodate the altimeter payload and was not optimized for the project's mission requirements. Our team needed to redesign the rocket to integrate the payload while maintaining stable flight, minimizing mass growth, and meeting the altitude target. The vehicle also had to be manufacturable, structurally sound, and capable of safe recovery after flight.

**Approach:**
Within the team, I was responsible for the complete rocket design and hardware integration. I redesigned the vehicle configuration by shortening the original body tube and designing the custom nose cone, payload bay, fin set, and static canards. Using OpenRocket, I iterated on the design to balance stability, payload capacity, and predicted flight performance. Another member of the team created the CAD models to be 3D-printed, which had three iterations to nail down the final design.

After fabrication, I assembled the entire rocket and integrated the recovery system to produce a flight-ready vehicle. Following launch testing, our team compared measured flight data to OpenRocket predictions and investigated discrepancies between simulated and actual performance.

**Visuals:**

<img width="828" height="496" alt="image" src="https://github.com/user-attachments/assets/88382b3f-260f-4ed7-8258-bad1a9dca128" />

**Results:**
The rocket successfully carried the onboard altimeter and achieved a measured apogee of approximately 160 ft, exceeding the original target altitude of 125 ft. While the vehicle flew successfully and demonstrated stable flight characteristics, post-flight analysis revealed that the simulation did not accurately represent the final flight configuration, resulting in significant differences between predicted and measured performance.

As part of the project's final analysis, I developed recommendations to improve simulation fidelity, including better mass distribution, more accurate drag modeling, and improved representation of custom components. These findings highlighted the importance of validating engineering models against experimental data and provided a framework for improving future flight predictions.

**Technical Skills Demonstrated**
- Aerospace vehicle design
- OpenRocket flight simulation and validation
- Stability and aerodynamic analysis
- Design iteration and optimization
- Hardware assembly and integration
- Recovery system design and implementation
- Flight testing and data analysis
- Simulation validation and model improvement


[Read More](projects/rocket.md)

---

## Recovery System Line Cutter Redesign (Yellow Jacket Space Program)
**Context:** Reliable recovery system deployment is critical to mission success in high-power rocketry. Following the successful flight of a previous YJSP vehicle, Vespula, that achieved a world-record altitude, the recovery system team sought to improve the performance and maintainability of the line cutter subsystem responsible for releasing parachute retention lines during descent. The redesign effort focused on increasing reliability while reducing the need for replacement hardware between flights. 

**Problem:** The existing line cutter design functioned but was primarily intended for single-use operation. Future missions required a more robust solution capable of maintaining consistent cutting performance while improving reusability, manufacturability, and ease of integration into the recovery system. The redesigned device needed to minimize failure risk while operating under flight environments involving vibration, acceleration, and deployment loads. 

**Approach:**  
- Evaluated the performance and limitations of the previous line cutter design.
- Generated and assessed multiple design concepts to improve reliability and reusability.
- Developed CAD models and engineering drawings for new line cutter architectures.
- Performed design trade studies considering manufacturability, assembly complexity, and operational robustness.
- Iteratively refined component geometry and retention features to improve repeatability and durability.
- Collaborated with recovery subsystem teammates to ensure compatibility with existing deployment hardware and mission requirements.
- Supported prototype development, testing, and design validation activities.

**Results:**  
- Developed an improved line cutter design focused on reusable operation and increased reliability.
- Reduced dependence on disposable hardware between launches.
- Enhanced the maintainability and serviceability of the recovery subsystem.
- Generated CAD models and engineering documentation to support fabrication and testing.
- Contributed to the continued development of recovery system hardware for future YJSP flight vehicles.

**Technical Skills Demonstrated**Mechanical Design
- CAD Modeling (SolidWorks)
- Design Iteration
- Engineering Trade Studies
- Design for Manufacturing (DfM)
- Reliability Engineering
- Recovery Systems Design
- Aerospace Systems Integration
- Rapid Prototyping
- Technical Documentation
- Cross-Functional Team Collaboration
- Requirements-Driven Design


[Read More](projects/elytra.md)

---

## NASA Space Launch System (SLS) Functional Desktop Model
**Context:** As the culminating design project for ME 1670, I was tasked with creating a complex CAD assembly that demonstrated proficiency in SolidWorks modeling, assembly design, and manufacturing considerations. Drawing on my interest in aerospace engineering, I designed a detailed scale model of NASA's Space Launch System (SLS) that extended beyond a display model by incorporating functionality, modular assembly features, and additive manufacturing constraints. 

**Problem:** The project required the development of a mechanically functional product that could be accurately modeled in CAD and manufactured through 3D printing. The design needed to:
- Capture the major geometric features of the model.
- Have at least 2 connectors and a maximum of 5 parts
- Have a maximum volume constrain of 4 in^3 and each part must fit in a 3" by 3" by 3" cube
- Assemble reliably without adhesives.
- Incorporate functional features beyond a static display model.

**Approach:**  
The entire system was designed from scratch in SolidWorks, both as individual parts and as a multi-component assembly consisting of:
- SLS core stage
- Twin solid rocket boosters (SRBs)
- Orion crew capsule/nosecone
- Launch platform
- Launch tower

To increase functionality, I designed a rotating nose cone mechanism that opens to reveal an internal pencil holder, transforming the model into a practical desktop organizer.

The assembly was engineered using a combination of:
- Snap-fit connections for tool-free assembly
- Dovetail joints for precise alignment and load transfer between components
- Modular segmentation to accommodate printer volume constraints
- Revolute Joint for ease of opening the pencil holder

From the 1st version to the final version, as seen in the visuals below, I gained a deeper understanding of the aspects of CAD that make manufacturing, tolerances, and workflow easier to use. Some main changes in the versions is geometry simplification (using the tools of SolidWorks to model the features quicker by using advanced modeling techniques rather than sketching each part individually), assembly structure (separating the assembly into parts to make adjusting parts easier and quicker), and tolerances (adding tolerances to the parts to make them easier to 3d print and fit together).

**Technical Skills Demonstrated** 
- SolidWorks CAD Modeling
- Assembly Design
- Mechanical Design
- Tolerance Analysis
- Snap-Fit Design
- Dovetail Joint Design
- Rapid Prototyping
- 3D Printing
- Engineering Documentation

**Visuals:** 

Original Assembly (Dimensions not right, Assembly not defined, connectors not working):

[Original Rocket Assembly](Original_Rocket_Assembly.pdf)

Final Assembly (Dimensions right, Assembly Fully Defined, Connectors Working):

[Final Rocket Assembly](Final_Rocket_Assembly.pdf)


[Read More](projects/sls.md)

---

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

**Technical Skills Demonstrated**
- MATLAB Programming
- Numerical Methods and Computational Modeling
- Rocket Propulsion Analysis
- Tsiolkovsky Rocket Equation Application
- Multi-Stage Vehicle Performance Analysis
- Systems Engineering
- Mass Budget and Mass Fraction Analysis
- Delta-V Budget Development
- Mission Feasibility Assessment
- Data Visualization

**Visuals:**
<img width="1640" height="1750" alt="image" src="https://github.com/user-attachments/assets/58a8da0e-aff4-47db-87fe-a50da9851dad" />

[Read More](projects/deltav_rocket_planner.md)

[Back to Home](index.md)
