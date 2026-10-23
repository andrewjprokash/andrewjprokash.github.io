### Rocket Project - AE 1601

## Rocket Report

[Rocket Report](Group_13_Rocket_Project_Fall_2026.pdf)

## Flight Data

In our first flight, our rocket went around 120-140 ft, though we do not have any data because the Pnut altimeter we had was faulty and did not record any flight data. However, our rocket remained intact and undamaged, so we could do a second flight.

In the second flight, our rocket achieved an apogee of 160 ft, which is much higher than the target. The flight time was around 9 seconds, but when the ejection charge went off, the 3D-printed payload bay could not handle the stress, and it broke in half. Despite this, we successfully recovered every part of the rocket and the altimeter to get our data. The ejection charge also ripped off part of the streamer despite the recovery wadding, but the rest of the rocket remained intact. 

Flight Profile:

<img width="828" height="496" alt="image" src="https://github.com/user-attachments/assets/5d184275-12aa-41ab-9e8f-c2569a20e93b" />

## Open Rocket Simulation + Error Analysis

For our simulation, OpenRocket predicted an apogee of 122 ft, with a flight time of 5.84 s and a ground hit velocity of 18.4 m/s. The mass of our rocket was 52 grams and the predicted value from OpenRocket was 52.2 g, which means that the mass had nothing to do with the higher-than-expected apogee. However, after further review after the launch day, I realized that OpenRocket had the ejection charge going off immediately after the primary charge ended, causing the rocket to have a much smaller apogee than normal. Upon inputting the correct data into the simulation and adding 3 seconds to the time of ejection charge after primary charge runs out, I found that the simulation predicted a target apogee of 214 ft, with a flight time of 8.46 s and a ground hit velocity of 19.5 m/s. Therefore, the simulation was simulating the wrong ejection charge timing, causing the difference in apogee. However, the rocket went much lower than OpenRocket predicted due to many possible reasons, including: drag was higher than expected, motor performance differed from simulated thrust due to manufacturing tolerances, and due to weathercocking (rocket turns more horizontal due to wind).

## Future Improvements

To achieve an apogee of 125ft in the future, we should increase the fin size and canard size, thereby increasing the weight of the rocket and decreasing the stability. Due to the decrease in stability, we should also increase the wall thickness of the nosecone, increase the mass of the nosecone, which moves the center of gravity forward, greatly increasing stability, leading to a more stable flight profile. Also, we should add more recovery wadding between the motor and recovery system to prevent the streamer from getting ripped off and to protect the payload bay. To also protect the payload bay and altimeter, we should add more padding inside the payload bay and increase the wall thickness of the payload bay, further strengthening the structure and increase the overall static stability of the rocket.

[Back to Home](index.md)
