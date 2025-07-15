# UART IP verification by using UVM
## Introduce
My name is Vo Quang Huy, and I am a course participant at ICTC (IC Training Center). This project was developed as part of the final assignment in the DV Advanced course, focusing on building a UART VIP from scratch and validating its functionality through a UVM-based testbench.

The goal of this project is to develop a reusable UART Verification IP (VIP) capable of interacting with a DUT (UART IP) via UART protocol, and to demonstrate my understanding of verification methodology, VIP structure, and UVM principles.

## Input Documents
For further details, please refer to the full documents linked below:
- [UART Protocol Summary](https://github.com/Venus-Lv5/UART_VIP_Validate/blob/372f5fbeb83a2151b59c753e65a284eaef8d1fcb/docs/UART%20Protocol%20summary.pdf)
- [Develop and Validate UART VIP Slide](https://github.com/Venus-Lv5/UART_VIP_Validate/blob/372f5fbeb83a2151b59c753e65a284eaef8d1fcb/docs/14.-Project-2.-Develop-and-validate-UART-VIP.pdf)

## Tools and Methodology Used
- Languages: SystemVerilog for build environment and create testbenches and verification components.
- Methodology: UVM
- EDA Tool: QuestaSim for simulation and debugging.

  ## Project Structure
The repository is organized into the following directories:

- `rtl/` - UART IP RTL source code. (provided by ICTC)
- `uart_vip/` - UART VIP simulating UART transaction.
- `tb/` - UVM testbench components including environment, scoreboard, testbench.
- `sequences/` - Sequences to generate UART transactions.
- `testcases/` - Testcases to verify various functionalities.
- `sim/` - Simulation scripts and Makefile
- `docs/` - VPlan and input documents

## Testbench Structure
Below is my Testbench structure to validate the UART VIP.
![Testbench structure to validate UART VIP](https://github.com/Venus-Lv5/UART_VIP_Validate/blob/372f5fbeb83a2151b59c753e65a284eaef8d1fcb/docs/tb_structure.png)

**Key Components:**
- **uart_rhs_config**: Contains configuration information for rhs_uart_agent such as baud rate, data width, parity type, stop bits.
- **uart_lhs_config**: Contains configuration information for lhs_uart_agent such as baud rate, data width, parity type, stop bits.
- **uart_scoreboard**: Compares transmitted and received data to ensure correctness.
- **uart_lhs_agent / uart_rhs_agen**t: Simulate two UART endpoints (transmitter/receiver).

## Verification Plan
You can find the full verification strategy and test details and testbench structure in the VPlan:  
- [Verification Plan](https://github.com/Venus-Lv5/UART_VIP_Validate/blob/4398e86d2c8f8f1fe9acf05113535013ab56a0fa/docs/VplanPrj2.csv).

## How to use
- Go to `sim\`
- Run source `project_env.bash` to set up the environment.
- Use `make build` to compile the design.
- Use `make help` to see available commands and usage instructions.

## Result
- Open `sim/regress.rpt` to check the results of the testcases.
- Open `sim/log/` to check the individual logs for each testcase.

## Conclusion
This project was a preparation step for the final verification project at ICTC. It helped me practice building a simple UART VIP and understand the fundamental structure of a UVM-based verification environment. 

Any feedback or suggestions for improvement are warmly welcome! Thank you very muchmuch
