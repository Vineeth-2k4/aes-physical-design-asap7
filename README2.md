# AES Physical Design — RTL to Post-Route Timing Analysis

<p align="center">
  <img src="screenshots/06_routing/routed_design.png" width="900">
</p>

<h3 align="center">
  ASIC Physical Design Implementation of an AES Cryptographic Core
</h3>

<p align="center">
  RTL → Synthesis → Floorplan → Power Planning → Placement → CTS → Routing → Post-Route Analysis
</p>

---

## Table of Contents

- [Introduction](#introduction)
- [Project Objectives](#project-objectives)
- [Source RTL](#source-rtl)
- [Tools and Technology](#tools-and-technology)
- [Design Information](#design-information)
- [Physical Design Flow](#physical-design-flow)
- [1. Floorplanning](#1-floorplanning)
- [2. Power Planning](#2-power-planning)
- [3. Placement](#3-placement)
- [4. Pre-CTS Optimization](#4-pre-cts-optimization)
- [5. Clock Tree Synthesis](#5-clock-tree-synthesis)
- [6. Routing](#6-routing)
- [7. Post-Route Timing Analysis](#7-post-route-timing-analysis)
- [8. Power Analysis](#8-power-analysis)
- [9. Design Statistics](#9-design-statistics)
- [Physical Design Stage Summary](#physical-design-stage-summary)
- [Final Implementation Results](#final-implementation-results)
- [Challenges and Debugging](#challenges-and-debugging)
- [Tcl / Innovus Implementation](#tcl--innovus-implementation)
- [Project Structure](#project-structure)
- [Skills Demonstrated](#skills-demonstrated)
- [ASAP7 Standard Cell Views](#asap7-standard-cell-views)
- [Reproducibility](#reproducibility)
- [Reference](#reference)
- [Conclusion](#conclusion)

---

# Introduction

This project demonstrates the **ASIC physical design implementation of an AES cryptographic core**, starting from Verilog RTL and progressing through synthesis, floorplanning, power planning, placement, clock tree synthesis, routing, and post-route timing and power analysis.

The AES RTL used as the starting point for this project is based on the open-source **Secworks AES** implementation.

The primary focus of this project is **physical design implementation and analysis**, rather than development of the AES RTL itself.

The design was implemented using **Cadence Innovus** with the **ASAP7 technology library**.

The project covers the complete backend implementation flow from RTL through **post-route timing analysis**, with physical implementation results documented using screenshots, reports, and design statistics.

### Project Scope

```text
AES RTL
   │
   ▼
Synthesis
   │
   ▼
Floorplanning
   │
   ▼
Power Planning
   │
   ▼
Placement
   │
   ▼
Pre-CTS Optimization
   │
   ▼
Clock Tree Synthesis
   │
   ▼
Routing
   │
   ▼
Post-Route Timing Analysis
   │
   ├── Setup Analysis
   ├── Hold Analysis
   ├── Clock Analysis
   ├── Area Analysis
   └── Power Analysis
```
---

# Project Objectives

The main objectives of this project were:

Implement an existing AES RTL design through an ASIC physical design flow.
Perform synthesis and generate the gate-level implementation.
Create and verify the physical floorplan.
Implement the power distribution network.
Perform standard-cell placement and optimization.
Perform Clock Tree Synthesis (CTS).
Perform global and detailed routing.
Analyze post-route setup timing.
Analyze post-route hold timing.
Analyze clock skew and clock distribution.
Analyze area and placement density.
Analyze power consumption and leakage.
Generate physical design reports using Cadence Innovus.
Use Tcl scripting to automate the physical design flow.
Understand the effect of each physical design stage on timing, power, area, and congestion.
---

# Source RTL

The AES RTL used in this project is based on the open-source Secworks AES project.

Source Repository

https://github.com/secworks/aes/tree/master/src/rtl

The RTL source contains modules including:

aes.v
aes_core.v
aes_encipher_block.v
aes_decipher_block.v
aes_key_mem.v
aes_sbox.v
aes_inv_sbox.v

---

## Project Scope

The AES RTL architecture was not developed as part of this project.

The contribution of this project is the ASIC physical design implementation of the AES RTL, including:

```text
RTL
 ↓
Synthesis
 ↓
Floorplanning
 ↓
Power Planning
 ↓
Placement
 ↓
Pre-CTS Optimization
 ↓
Clock Tree Synthesis
 ↓
Routing
 ↓
Post-Route Timing Analysis
```
---
# Tools and Technology
| Category             | Tool / Technology     |
| -------------------- | --------------------- |
| HDL                  | Verilog               |
| Physical Design Tool | Cadence Innovus 20.11 |
| Technology           | ASAP7                 |
| Scripting            | Tcl                   |
| Timing Constraints   | SDC                   |
| Operating System     | Linux                 |
| Starting RTL         | Secworks AES          |

---
# Design Information
| Parameter            |                  Value |
| -------------------- | ---------------------: |
| Design               | AES Cryptographic Core |
| RTL Source           |           Secworks AES |
| Technology           |                  ASAP7 |
| Physical Design Tool |  Cadence Innovus 20.11 |
| Clock Period         |                 700 ps |
| Target Frequency     |              ~1.43 GHz |
| Standard Cells       |                  7,550 |
| Sequential Elements  |                  2,590 |
| Clock Gates          |                     31 |
| Clock Buffers        |                     52 |
| Nets                 |                  7,695 |

---
# Physical Design Flow

The design was taken through the following ASIC physical design stages:
```text
                    AES RTL
                       │
                       ▼
                  Synthesis
                       │
                       ▼
                 Floorplanning
                       │
                       ▼
                Power Planning
                       │
                       ▼
                   Placement
                       │
                       ▼
              Pre-CTS Optimization
                       │
                       ▼
             Clock Tree Synthesis
                       │
                       ▼
                    Routing
                       │
                       ▼
              Post-Route Analysis
                 ┌─────┼─────┐
                 ▼     ▼     ▼
              Timing  Power  Area
```
---
# 1. Floorplanning

Floorplanning establishes the physical boundaries of the design and defines the environment for placement and routing.

### Objectives
Define die and core boundaries.
Set the target core utilization.
Define the core aspect ratio.
Place input and output pins.
Provide sufficient routing resources.
Prepare the design for power planning and placement.
## Floorplan Parameters
| Parameter        |         Value |
| ---------------- | ------------: |
| Die Width        | `[ADD VALUE]` |
| Die Height       | `[ADD VALUE]` |
| Core Width       | `[ADD VALUE]` |
| Core Height      | `[ADD VALUE]` |
| Core Utilization | `[ADD VALUE]` |
| Aspect Ratio     | `[ADD VALUE]` |
## Floorplan with IO Placement
<p align="center"> <img src="screenshots/01_floorplan/floorplan_io.png" width="900"> </p>

















 ↓
Power Analysis
