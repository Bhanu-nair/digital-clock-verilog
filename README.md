# 🕒 Digital Clock using Verilog

Hey there! I'm Bhanu A. Nair, and this is one of my personal digital design projects created during my B.Tech journey in Electronics and Communication Engineering. 

This project is a 24-hour digital clock built using **Verilog HDL** and fully simulated in **ModelSim**. I took up this project independently to strengthen my understanding of real-time digital systems, like clock division, counters, and modular Verilog coding. 

It’s part of my growing portfolio of core ECE and embedded system projects.


---

## 🔧 Tools & Technologies Used

- **Verilog HDL** – Hardware Description Language used to write the modules.
- **ModelSim** – Used for simulating and verifying the clock behavior.
- **Clock Divider & Counters** – Core logic built using basic digital concepts.

---

## 🧠 Project Overview

Here’s what the clock does:

- It receives a high-speed clock signal (like 50 MHz).
- A **clock divider** reduces this to 1 Hz — one pulse per second.
- This 1 Hz pulse is used to count:
  - **Seconds** (0 to 59)
  - **Minutes** (0 to 59)
  - **Hours** (0 to 23)

All these counters are connected logically, so when seconds reach 60, the minutes increase, and when minutes hit 60, the hours increment. It's a basic but working digital clock!

---

## 📁 Files in This Repository

- `clk_divider.v` → Divides the input clock frequency
- `sec_counter.v` → Second counter logic
- `min_counter.v` → Minute counter logic
- `hr_counter.v` → Hour counter logic
- `top_clock.v` → Integrates all components into a complete clock
- `tb_top_clock.v` → Testbench for simulating the clock

---

## 🖼️ Simulation Output

After compiling and running the simulation in ModelSim, I got the waveform showing the second, minute, and hour counting. I’ll upload the screenshot soon here.

---

## ✅ What I Gained From This

This was more than just a Verilog assignment. It helped me understand:

- How modular design works in hardware systems
- How to use testbenches to verify logic
- How to debug signal transitions using simulation waveforms
- And overall, how a simple project can teach core ECE concepts practically

---

## 🌐 Portfolio Integration

I’ve also featured this project on my portfolio website along with diagrams and simulation results. You can check it out here:  
👉 [Visit My Portfolio](#)

---

Thanks a lot for going through this project!  

— Bhanu A. Nair
