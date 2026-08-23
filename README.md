# aes-physical-design-asap7
RTL-to-Routing physical design implementation of an AES core using Cadence Innovus and ASAP7 technology.
# AES Physical Design — RTL to Routing with Post-Routing timing analysis.

Physical design implementation of an AES cryptographic design using Cadence Innovus and ASAP7 technology.

## Tools & Technology

- Verilog
- Cadence Innovus 20.11
- ASAP7 Technology
- Tcl
- Linux

## Physical Design Flow

RTL → Synthesis → Floorplan → Power Planning → Placement → CTS → Routing → Post-Route Timing analysis

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

## Clock Timing Summary

![Clock Timing Summary](screenshots/05_cts/clock_timing_summary.png)

## Clock Tree Summary

![Clock Tree Summary](screenshots/05_cts/clock_tree_summary.png)

---

## 7. Routing

Post-route physical implementation.

![Routing](screenshots/06_routing/routed_design.png)

---

## 7. Timing Analysis Reports

### Setup Timing
![Setup Timing](screenshots/07_timing_analysis/setup.png)

## Setup Timing

![Setup Timing](screenshots/06_routing/setup_timing_map.png)

### Hold Timing
![Hold Timing](screenshots/07_timing_analysis/hold.png)

## Hold Timing

![Hold Timing](screenshots/06_routing/hold_timing_map.png)


### Timing Summary
![Timing Summary](screenshots/07_timing_analysis/timing_summary.png)

---
## 8. Power Analysis

### Total Power
![Total Power](screenshots/08_power_analysis/total_power.png)

### Leakage Power
![Leakage Power](screenshots/08_power_analysis/leakage_power.png)

### Power Distribution
![Power Distribution](screenshots/08_power_analysis/power_distribution.png)

---

## ASAP7 Standard Cell Layout Views

Additional layout views of standard cells used in the ASAP7 library.

<table>
  <tr>
    <td align="center">
      <b>AND2X2</b><br>
      <img src="screenshots/asap7_cell_views/AND2X2_ASAP7.png" width="220">
    </td>
    <td align="center">
      <b>AND3X1</b><br>
      <img src="screenshots/asap7_cell_views/AND3X1_ASAP7.png" width="220">
    </td>
    <td align="center">
      <b>DFF</b><br>
      <img src="screenshots/asap7_cell_views/DFF_ASAP7.png" width="220">
    </td>
    <td align="center">
      <b>Full Adder</b><br>
      <img src="screenshots/asap7_cell_views/FULL_ADDER_ASAP7.png" width="220">
    </td>
  </tr>

  <tr>
    <td align="center">
      <b>Half Adder</b><br>
      <img src="screenshots/asap7_cell_views/HALF_ADDER_ASAP7.png" width="220">
    </td>
    <td align="center">
      <b>Integrated Clock Gating</b><br>
      <img src="screenshots/asap7_cell_views/ICG_ASAP7.png" width="220">
    </td>
    <td align="center">
      <b>NAND3X2</b><br>
      <img src="screenshots/asap7_cell_views/NAND3X2_ASAP7.png" width="220">
    </td>
    <td align="center">
      <b>NOR2X2</b><br>
      <img src="screenshots/asap7_cell_views/NOR_ASAP7.png" width="220">
    </td>
  </tr>

  <tr>
    <td align="center">
      <b>OAI321X</b><br>
      <img src="screenshots/asap7_cell_views/OAI_ASAP7.png" width="220">
    </td>
    <td align="center">
      <b>OR2X6</b><br>
      <img src="screenshots/asap7_cell_views/OR_ASAP7.png" width="220">
    </td>
    <td align="center">
      <b>NOR2X5</b><br>
      <img src="screenshots/asap7_cell_views/NOR_ASAP7.png" width="220">
    </td>
    <td align="center">
      <b>XNOR2X1</b><br>
      <img src="screenshots/asap7_cell_views/XNOR_ASAP7.png" width="220">
    </td>
  </tr>
</table>

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
