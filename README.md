# aes-physical-design-asap7
RTL-to-Routing physical design implementation of an AES core using Cadence Innovus and ASAP7 technology.
# AES Physical Design — RTL to Routing

Physical design implementation of an AES cryptographic design using Cadence Innovus and ASAP7 technology.

## Tools & Technology

- Verilog
- Cadence Innovus 20.11
- ASAP7 Technology
- Tcl
- Linux

## Physical Design Flow

RTL → Synthesis → Floorplan → Power Planning → Placement → CTS → Routing → Signoff

---

## 1. Floorplan

Initial floorplan with IO placement.

![Floorplan](screenshots/01_floorplan/floorplan_io.png)

---

## 2. Power Planning

Power distribution network with power rings and stripes.

![Power Planning](screenshots/02_powerplanning/power_grid.png)

---
## 3. Placement

Standard-cell placement.

![Placement](screenshots/03_placement/placement1.png)

### Placement with Virtual Routing

Standard-cell placement with virtual routing.

![Placement](screenshots/03_placement/placement.png)

---

## 4. Pre-CTS 

Standard-cell placement after placement optimization.
![Pre-CTS](screenshots/04_prects/prects.png)


## 5. Clock Tree Synthesis

Clock tree implementation and clock distribution.

![CTS](screenshots/05_cts/cts.png)

### 6. Clock Tree Debugger

![Clock Tree Debugger](screenshots/05_cts/clock_tree_debugger.png)

---

## 7. Routing

Post-route physical implementation.

![Routing](screenshots/06_routing/routed_design.png)

---

# Timing Analysis

## Setup Timing

![Setup Timing](screenshots/06_routing/setup_timing_map.png)

## Hold Timing

![Hold Timing](screenshots/06_routing/hold_timing_map.png)

## Clock Timing Summary

![Clock Timing Summary](screenshots/05_cts/clock_timing_summary.png)

## Clock Tree Summary

![Clock Tree Summary](screenshots/05_cts/clock_tree_summary.png)

---

## Key Results

| Metric | Result |
|---|---:|
| Technology | ASAP7 |
| Tool | Cadence Innovus 20.11 |
| Standard Cells | 7,550 |
| Nets | 7,695 |
| Sequential Elements | 2,590 |
| Clock Gates | 31 |
| Clock Buffers | 52 |
| Clock Period | 700 ps |
| Target Frequency | ~1.43 GHz |
| Setup WNS | +1.836 ps |
| Setup TNS | 0 ps |
| Setup Violations | 0 |
| Hold Slack | +0.165 ps |
| Max Clock Skew | 20.700 ps |
| Total Power | 4.083 mW |
| Leakage Power | 0.114 mW |

---

## Project Structure

```text
rtl/          → AES RTL
constraints/  → SDC timing constraints
scripts/      → Innovus Tcl scripts
reports/      → Timing, power and physical reports
screenshots/  → Physical design screenshots
