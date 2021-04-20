# cycle-path

MATLAB functions to estimate increase in bicycle path length due to lateral bicycle sway

![MATLAB figure of travel path](./matlab_snapshot_travelPath.png)

| Author(s) | Brief Description | Intended Uses and Known Limitations | Included Material | Updated |
|-|-|-|-|-|
| Ross Wilkinson, Ph.D. | Uses numerical integration within MATLAB to calculate the increase in the path length travelled by a bicycle due to lean angle. | Investigate the effect of bicycle lean angle on the travel path of a bicycle at specific combinations of ground velocity and cadence. Assumes a sinusoidal travel path with an amplitude proportional to bicycle lean angle. |  MATLAB function | April 19, 2021 |

## Example

Simply run 'linearRegressionMulti.m' which calls a cost function and gradient descent algorithm to solve the parameters for drivetrain efficiency and power meter accuracy using the data table in 'data.m'.

The dataset compares two drive trains and two power meters tested at a measured power output of ~175 W and ~325 W. A rider completed two bouts of treadmill cycling for 30 sec at each power output.