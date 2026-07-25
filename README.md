Overview

This project implements a 2-Way Traffic Light Controller using Verilog HDL and a Finite State Machine (FSM). The controller manages traffic flow at a two-road intersection by switching traffic lights in a predefined sequence to ensure safe and efficient vehicle movement.

Features

Finite State Machine (FSM)-based design
Controls traffic lights for two intersecting roads
Automatic state transitions based on timer counts
Synchronous design using a clock signal
Active-high reset for initialization
Easy to simulate and synthesise on FPGA

State Sequence

The controller follows the sequence below:
Road A – Green | Road B – Red
Road A – Yellow | Road B – Red
Road A – Red | Road B – Green
Road A – Red | Road B – Yellow
Repeat the cycle continuously.

Inputs

clk – System clock
reset – Resets the controller to the initial state
Outputs

roadA – Traffic light status for Road A
roadB – Traffic light status for Road B

Technologies Used
Verilog HDL
Finite State Machine (FSM)
Digital Logic Design
ModelSim/Xilinx Vivado (Simulation)

Project Structure
traffic_light_controller.v – Verilog design module
traffic_light_controller_tb.v – Testbench for simulation

Simulation
The design was verified using a Verilog testbench. Simulation confirms the correct sequence of traffic light transitions and proper timing between states.

Applications
Road intersection traffic management
Smart transportation systems

Future Enhancements
Pedestrian crossing support
Emergency vehicle priority

