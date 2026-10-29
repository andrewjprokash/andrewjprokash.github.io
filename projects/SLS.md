## NASA Space Launch System (SLS) Functional Desktop Model

# Project Overview

As the culminating individual design project for ME 1670, I developed a functional desktop model inspired by NASA's Space Launch System (SLS). The project challenged students to design a mechanically functional product within strict geometric and manufacturing constraints while demonstrating proficiency in SolidWorks CAD modeling, assembly design, and additive manufacturing principles.

Drawing on my interest in aerospace engineering, I designed a detailed scale representation of the SLS launch vehicle that combines engineering functionality with aerospace-inspired design. Rather than creating a static display model, I integrated a hidden desktop organizer feature through a rotating Orion crew capsule that opens to reveal an internal pencil holder.

The project serves as an exploration of mechanical design, design-for-additive-manufacturing (DfAM), assembly engineering, and emerging AI-assisted CAD workflows.

# Design Requirements

The project required the development of a manufacturable design that satisfied several engineering constraints:

- Capture the major geometric features of the selected product
- Utilize between two and five connectors
- Remain within a total volume limit of 4 in³
- Ensure every individual component fits inside a 3" × 3" × 3" build envelope
- Allow assembly without adhesives
- Incorporate functional mechanical features

These requirements demanded a balance between geometric fidelity, manufacturability, and mechanical functionality.

# Design Solution

The final assembly consists of 5 major subsystems:

- SLS Core Stage
- Twin Solid Rocket Boosters (SRBs)
- Orion Crew Capsule
- Launch Platform
- Launch Tower

The centerpiece of the design is a rotating Orion capsule mechanism that transforms the rocket into a functional desktop organizer. A revolute connection allows the capsule to rotate open and reveal an integrated pencil holder while preserving the external appearance of the launch vehicle when closed. To facilitate reliable assembly and manufacturing, the design incorporates:

- Snap-Fit Interfaces: Snap-fit connections provide tool-free assembly while eliminating the need for adhesives. These features were designed to balance ease of assembly with sufficient retention strength for repeated use.
- Dovetail Connections: Dovetail joints were incorporated to improve alignment between major structural components while distributing load and minimizing assembly error.


**Modular Design Strategy**

The overall system was segmented into multiple components to satisfy manufacturing constraints while enabling efficient design iteration and assembly.

- Revolute Opening Mechanism: a rotational joint integrated into the Orion capsule/Main Fuselage that allows the nose section to open smoothly, transforming the aerospace-themed model into a functional desktop storage solution.

**Design Evolution and Engineering Lessons**

One of the most valuable aspects of this project has been the iterative design process. Comparing the initial concept model to the current version reveals significant improvements in CAD workflow, assembly architecture, and manufacturability.


**Parametric Modeling Improvements**

Early iterations relied heavily on manually created sketches and feature-by-feature construction. As the project progressed, I leveraged more advanced SolidWorks tools and parametric modeling techniques to simplify geometry creation and improve model robustness. This improved:

- Design efficiency
- Model maintainability
- Feature organization
- Future design flexibility
- Assembly Architecture Refinement

Initial versions treated the system as a collection of individual components. Through redesign, the model evolved into a more structured assembly with clearly defined interfaces and mating relationships. This reorganization streamlined design modifications and reduced the complexity of future revisions.


**Tolerance Development**

Multiple adjustments to clearance dimensions were improved over the course of the design process, which included:

- Component fit
- Assembly reliability
- Motion smoothness
- Manufacturing robustness
- Design for Additive Manufacturing

The model was designed for fabrication on an EOS Formiga selective laser sintering (SLS) system. Unlike traditional FDM processes, selective laser sintering enables the production of complex geometries without dedicated support structures because surrounding powder naturally supports the part during fabrication. As a result, design decisions focused on:

- Part segmentation strategy
- Powder removal access
- Functional clearances for moving assemblies
- Minimum feature sizing
- Joint tolerances
- Print efficiency

These considerations allowed for greater geometric freedom while maintaining manufacturability.

# AI-Assisted Engineering Workflow Evaluation
An exciting aspect of this project is the opportunity to evaluate emerging AI-assisted engineering workflows through collaboration with Vector, an AI copilot designed for SolidWorks. Rather than treating AI as a standalone design tool, it was incorporated into the engineering workflow to accelerate routine CAD tasks while maintaining engineering oversight and design decision-making.

After development of the assembly and parts, Vector was experimented with to create and modify assembly relationships, resolve mating and interference issues, generate engineering drawings, review manufacturability concerns, and provide design optimization recommendations. Natural-language commands were used to perform assembly operations and iterative design modifications, allowing rapid exploration of alternative design solutions while reducing repetitive CAD interactions.

This project provides an opportunity to compare traditional CAD workflows with AI-assisted methodologies by evaluating Vector's effectiveness in:

- Assembly creation and mate definition through natural-language commands
- Identification and resolution of geometric interferences and assembly conflicts
- AI-assisted design reviews for manufacturability, printability, and assembly considerations
- Generation of engineering documentation, including part drawings and assembly drawings
- Design optimization recommendations related to material usage, geometry refinement, and manufacturability

The project demonstrated that AI tools can significantly accelerate routine CAD operations and support early-stage design reviews while still requiring engineering validation, analytical reasoning, and final approval by the engineer. Results indicate that AI-assisted workflows are most effective when used as a collaborative design aid that augments engineering productivity rather than replacing engineering decision-making.

# Technical Skills Demonstrated

CAD & Design
- SolidWorks Part Modeling
- Parametric Design
- Assembly Modeling
- Engineering Drawings
- Design Iteration

Engineering
- Mechanism Design
- Snap-Fit Design
- Dovetail Joint Design
- Tolerance Analysis
- Design for Assembly (DFA)

Manufacturing
- Design for Additive Manufacturing (DfAM)
- Selective Laser Sintering (SLS)
- Rapid Prototyping
- Manufacturing-Constrained Design

Emerging Engineering Tools
- AI-Assisted CAD Development
- Human-AI Design Collaboration
- Engineering Workflow Optimization

# Visuals
Original Assembly (Dimensions not right, Assembly not defined, connectors not working):

[Original Rocket Assembly](Original_Rocket_Assembly.pdf)

Final Assembly (Dimensions right, Assembly Fully Defined, Connectors Working):

[Final Rocket Assembly](Final_Rocket_Assembly.pdf)


[← Back to Home](/)
