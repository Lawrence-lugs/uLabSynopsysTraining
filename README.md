# Microlab/Synopsys Training

![alt text](image.png)

This repository contains the lab materials for Microlab/Synopsys training aimed to develop digital design skills with open-source tools for application-specific integrated circuit (ASIC) design.

Inside the lab folders are more README files discussing the instructions for each lab.

# Lesson Structure

|  | Lecture | Lab | Lab Goals |
| --- | --- | --- | --- |
| Module 1 | Combinational Logic Design | RTL Simulation <br> Running OpenLane |\> Openlane Installation<br>\> Calling Verilator<br>\> Calling OpenLane flow<br>\> Writing OpenLane config files<br>\> Writing OpenLane pin config files<br>\> Viewing the output chip with Klayout |
| Module 2 | Sequential RTL & ASM | Sequence detector |\> Clocked Always Blocks<br>\> FSM translation into Verilog |
| Module 3 | Timing (Synopsys guest) | Timing and Constraints |\> Gate-level Simulations & SDF Annotation<br>\> STA Reports<br>\> SDC Files |
| Module 4 | Design Testing | MP Sequential Divider |\> ASMs<br>\> RTL Design |
| Module 5 | Design for Testability | MP Sequential Divider |\> Running OpenLane on your design |

# Tools Installation

>!! Skip this part if you are using the Microlab setup for the labs.

If you are not using the Microlab virtual machines for this, please install https://github.com/iic-jku/IIC-OSIC-TOOLS:

1. Download [Docker Desktop](https://www.docker.com/products/docker-desktop/) for your OS 
2. `git clone --depth=1 https://github.com/iic-jku/iic-osic-tools.git`
3. Start Docker Desktop
4. Then, use `./start_vnc.sh`  (or `./start_vnc.bat`, if you’re on Windows)
    1. This part will take a while, as the PDKs and tools are downloaded.
5. Access [localhost](http://localhost) in your browser.
6. Input `abc123` (the default password)

This should show you a desktop environment with all of the requirements already installed.

If you are planning to edit files *outside* of this VNC environment (i.e. your host computer) for reasons like using your own text editor, make sure to perform all the projects in the directory `~/eda/designs` or `<HOME>/eda/designs`. This is the directory that is visible to the VNC.

For example, for me, I would clone all the repositories and make designs in `lquizon/eda/designs`. 

# Setup

1. Preliminary
   1. For people using the Microlab VMs: In a terminal, ssh into your given Microlab VM: e.g. `ssh lquizon@xx.xxx.xx.xxx` 
      1. Go into the openlane2 folder: `cd openlane2`
      2. Start the nix-shell: `nix-shell`
      3. Go back to the home directory: `cd ~`
   2. For people running the **iic-osic-tools** VNC, just make sure to be using the VNC in your browser and then open the terminal.
2. Clone the lab files from the git
    1. `git clone https://github.com/Lawrence-lugs/uLabSynopsysTraining`
3. Enter the cloned directory, and enter the repo folder
    1. `cd uLabSynopsysTraining`
 4. You are now ready to follow the labs
