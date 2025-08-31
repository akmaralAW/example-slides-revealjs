---
title: Sync-up meeting with Amanda
subtitle: 
author: Akmaral, Keisuke
date: 2.09.2025

theme: white
# title-slide-attributes:
#     data-background-image: media/title_white.svg
#     data-background-size: contain

minScale: 0.2
maxScale: 10.0
slideNumber: true
navigationMode: 'linear'
controls: false
---

## Overview

- 3D dynamics with db-lacam
- Benchmarking setup
- Profiling - time statistics 
- Improve the computation time of db-lacam
- Comparison with baselines (2D, 3D)
- Next milestones.

## 3D dynamics with db-lacam

- double integrator 3D
$$
\begin{align}
(x, y, z,v_x, v_y, v_z)
\end{align}
$$

Add wall4, forest4 examples.

## Benchmarking setup

We can run the benchmarking pipeline with github actions on our workstation at TU Berlin. 

![](media/image/db-lacam/benchmarking_result.png)

## Profiling statistics (computation time)

- Circle example with 2 unicycles
\
Total time: 1825.003 ms - reverse_search: 1807.451 ms, db-lacam: 10ms.

![](media/image/db-lacam/profile.png)

## Improving db-lacam efficiency

- Use Expansive Spaces Trees (EST) for heuristic estimation

::: {.container}
:::: {.col}
before 
![](media/image/db-lacam/db_expansion.png)
::::
:::: {.col}
now
![](media/image/db-lacam/est_cost.png)
::::
:::

## Improving db-lacam efficiency

how much time improved

## Comparison with baselines

add the plot (time vs. robot number)

## Next milestones

::: fragment
- Improve the solution quality - Large Neighborhood Search (LNS)
:::
::: fragment
- Demo (12 quadrotors in Cambridge, ground robot with trailer in Berlin)
:::
::: fragment
- Add new dynamics: quadrotor with 13 dimensions
:::
::: fragment
- Paper writing.
:::
