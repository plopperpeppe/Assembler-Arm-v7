# Assembler-Arm-v7: Practice exercises 
A personal collection of Assembly exercises focused on the **ARMv7** architecture. 
Every exercise is implemented as a standalone function, optimizing code isolation and simplifying the testing process.


## ⚙️ Toolchain and Architecture

* **Target Architecture:** **ARMv7** (32-bit).
* **Recommended Toolchain:** **GNU ARM Embedded Toolchain** (e.g., `arm-none-eabi-gcc`, `arm-none-eabi-as`, `arm-none-eabi-ld`).
* **Testing Environment:** These exercises must be compiled and executed in a simulated environment (e.g., **QEMU**) or on a real embedded system (e.g., Raspberry Pi Zero, Cortex-M).

---

## 🚀 Compile and Execute Instructions

An ARM toolchain is required to build these exercises.

### Prerequisites Installation

The installation command may vary depending on your Operating System.

```bash
# Example for installation on a Linux/WSL environment (Debian/Ubuntu)
sudo apt install gcc-arm-none-eabi qemu-system-arm
