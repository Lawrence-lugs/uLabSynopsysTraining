# Microlab/Synopsys Training

![alt text](image.png)

This repository contains the lab materials for Microlab/Synopsys training aimed to develop digital design skills with open-source tools for application-specific integrated circuit (ASIC) design.

Inside the lab folders are more README files discussing the instructions for each lab.

# Lesson Structure

|  | Lecture | Lab | Lab Goals |
| --- | --- | --- | --- |
| Module 1 | Combinational Logic Design | RTL Simulation <br> Running OpenLane |\> Openlane Installation<br>\> Calling IVerilog<br>\> Calling OpenLane flow<br>\> Writing OpenLane config files<br>\> Writing OpenLane pin config files<br>\> Viewing the output chip with Klayout |
| Module 2 | Sequential RTL & ASM | Sequence detector |\> Clocked Always Blocks<br>\> FSM translation into Verilog |
| Module 3 | Timing | Timing and Constraints |\> Gate-level Simulations & SDF Annotation<br>\> STA Reports<br>\> SDC Files |
| Module 4 | Design Testing | MP Sequential Divider |\> ASMs<br>\> RTL Design |
| Module 5 | Design for Testability | MP Sequential Divider |\> Running OpenLane on your design |

# Tools Installation

>!! Skip this part if you are using the Microlab setup for the labs.

If you are not using the Microlab virtual machines for this, please install https://github.com/iic-jku/IIC-OSIC-TOOLS:

1. Download [Docker Desktop](https://www.docker.com/products/docker-desktop/) for your OS
    1. A requirement for Docker is WSL2 on windows. Follow the instructions [here](https://learn.microsoft.com/en-us/windows/wsl/install) to setup WSL2.
2. Start Docker Desktop
1. Open the terminal inside docker
3. In that `git clone --depth=1 https://github.com/iic-jku/iic-osic-tools.git`
    1. For windows users, if git is not found, run the following in the command prompt: `winget install --id Git.Git -e --source winget`
4. Change directory into the cloned directory: `cd iic-osic-tools`
5. Then, use `./start_vnc.sh`  (or `./start_vnc.bat`, if you’re on Windows)
    1. This part will take a while, as the PDKs and tools are downloaded.
6. Access [localhost](http://localhost) in your browser.
7. Input `abc123` (the default password)

This should show you a desktop environment with all of the requirements already installed.

If you are planning to edit files *outside* of this VNC environment (i.e. your host computer) for reasons like using your own text editor, make sure to perform all the projects in the directory `~/eda/designs` or `<HOME>/eda/designs`. This is the directory that is visible to the VNC.

For example, for me, I would clone all the repositories and make designs in `lquizon/eda/designs`. 

> !! This repo deals with the digital flow. For the analog flow, see [JKU's Analog IC Design Course](https://iic-jku.github.io/analog-circuit-design/#sec-mosfet).

# Setup

1. Before starting any lab, do these:
   1. For people using the Microlab PCs, login to the synTrain user account (credentials should be on the whiteboard)
      1. In a terminal, ssh into your given Microlab VM: e.g. `ssh lquizon@xx.xxx.xx.xxx -XY` 
      2. Go into the openlane2 folder: `cd openlane2`
      3. Start the nix-shell: `nix-shell`
      4. Go back to the home directory: `cd ~`
   3. For people running the **iic-osic-tools** VNC, just make sure to be using the VNC in your browser and then open the terminal.
2. Clone the lab files from the git
    1. `git clone https://github.com/Lawrence-lugs/uLabSynopsysTraining`
3. Enter the cloned directory, and enter the repo folder
    1. `cd uLabSynopsysTraining`
 4. You are now ready to follow the labs
