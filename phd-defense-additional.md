---
title: Kinodynamic Motion Planning for Heterogeneous Multi-Robot Systems
subtitle: Additional Material
theme: white
# title-slide-attributes:
#     data-background-image: media/phd-defense.svg
#     data-background-size: contain

minScale: 0.2
maxScale: 10.0
slideNumber: true
navigationMode: 'linear'
controls: false
---

# Hyperparameters for db-CBS motion planner {#preview}

<img src="media/image/phd-defense/additional-material/varying-delta-analysis.png" width="60%">


Large $\delta$ - more motion primitives for the search, higher computation time <br>

Smaller $\delta$ - less applicable motion primitives, lower computation time.

<!-- . . . 

Complex dynamics - larger $\delta$, and more motion primitives is fast. If $\delta$ is small, then even more motion primitives don't help.

Simpler dynamics - larger $\delta$ is better than smaller, and works better with less motion primitives than more motions. -->

# Trajectory Optimization {#preview}

<img src="media/image/phd-defense/additional-material/optimization-analysis.png" width="75%">

# Trajectory Optimization Complexity {#preview}

\begin{equation}
    \mathcal{O}\left(K\left(\sum_{i=1}^{N} \max\left(d_x^{(i)},d_u^{(i)}\right)\right)^3\right),
    \end{equation}

$d^{(i)}_x, d^{(i)}_u$ - state and action dimensions of robot $i$, 
$N$ - number of robots, 
$K = \max_{i \in N} K^{(i)}$, $K^{(i)}$ - number of time steps in the discrete search solution of the $i^{\text{th}}$ robot.

# Trajectory Optimization Failure {#preview}

. . . 

- Slow convergence due to the high number of decision variables &rarr; exceeds the time limit. <br>
<span style="color: green;">Solution: meta-optimization</span>

. . . 

- Poor discrete solution &rarr; collision violations. <br>
<span style="color: green;">Solution: provide *better* set of motion primitives</span>

<!-- With large $\delta$, discrete search might have some undetected collisions, and the optimization can fail to fix it. <br> -->

# db-LaCAM and Livelock Instances {#preview}

Before and After the Livelock Resolution Technique


# db-LaCAM and Livelock Instances {#preview}

Tight environments can cause livelocks

```{=html}
<video data-autoplay loop muted playsinline src="media/video/phd-defense/livelock-dblacam.mp4" width="100%"></video>
```
. . . 

<span style="color: green;">Solution: better heuristics, that could predict livelong settings and avoid it (GNN-based, f.e)</span>

# db-ECBS Node Expansion {#preview}

<img src="media/image/phd-defense/additional-material/db-expansion.png" width="100%">

# db-ECBS with Omnidirectional Vision {#preview}

- Outdoor deployment
- No localization (except for starting state)
- Offline motion planning &rarr; Execution stage

. . . 

![](media/image/phd-defense/additional-material/dbecbs-with-vision1.png)


# db-ECBS with Omnidirectional Vision {#preview}


::: {.r-stack}

:::{.element: class="fragment current-visible"}
![](media/image/phd-defense/additional-material/dbecbs-with-vision1.png)

::::
:::{.element: class="fragment current-visible"}
![](media/image/phd-defense/additional-material/dbecbs-with-vision2.png)

:::: 
:::{.element: class="fragment"}
![](media/image/phd-defense/additional-material/dbecbs-with-vision3.png)
::::
:::

# db-(PIBT/LaCAM) with Omnidirectional Vision {#preview}


# Rollout vs. Trajectory Optimization {#preview}