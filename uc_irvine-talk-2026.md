---
title: Kinodynamic Motion Planning
subtitle: Akmaral Moldagalieva
date: 13.11.2026
theme: white
title-slide-attributes:
    data-background-size: contain

minScale: 0.2
maxScale: 10.0
slideNumber: true
navigationMode: 'linear'
controls: false
---

## Overview

- Introduction

- Kinodynamic Motion Planning Methods

- db-Search for Single and Multi-Robot Kinodynamic Motion Planning

- Heuristic Estimation Methods

- Summary

# Introduction 

## Background

The term *kinodynamic planing* was introduced to refer to motion planning problems for which velocity and acceleration bounds must be satisfied (<span style="font-size:0.6em; color:gray;">B. R. Donald, 1993</span>).

. . . 

Kinodynamic Motion Planning = Motion Planning $+$ Robot Dynamics


## Robot Dynamics


::: {.box-green}
:::: {.box-green-title}
Car-with-trailer Dynamics
::::
- States: $\mathbf{x} = (x, y, \theta_1, \theta_2)$
- Actions: $\mathbf{u} = (v, \phi)$
- Dynamics: $\mathbf{\dot{x} = \mathbf{f}(\mathbf{x}, \mathbf{u})}$, more precisely:

$\dot{x} = v \cos \theta_1, \quad \dot{y} = v \sin \theta_1, \quad \dot{\theta_1} = \frac{v}{L}\tan \phi$,  $\quad \dot{\theta_2} = \frac{v}{L_h} \sin (\theta_1 - \theta_2)$

:::

![](media/image/icaps/car_with_trailer.png){width=400}

## Motion Planning with Robot Dynamics

![](media/image/talks/kinodynamic-planning.png){width=700}

. . .

Motion planning now considers *how* to move, not just where.


## Motion Planning with Robot Dynamics

<video 
  data-autoplay 
  src="media/video/icaps/mrmp-example.mp4"
  style="width: 70%; margin: 30px auto; display: block;">
</video>



# Kinodynamic Motion Planning Methods


## Kinodynamic Motion Plannin: MAPF + POST


![](media/image/talks/mapfpost.png){width=400}

<div style="font-size:0.6em; color:gray; margin-top:-1.1em;">
Hönig et al., 2018; Luis et al., 2020;
</div>

- Discrete motion planning
- Post-process with optimization
- <span style="color:red">Suboptimal trajectories</span>


## Kinodynamic Motion Planning: Bezier/Spline-based

![](media/image/talks/bezier-based-method.png){width=400}
<div style="font-size:0.6em; color:gray; margin-top:-1.1em;">
Senbaslar et al., 2023; Yan & Li, 2024;
</div>

- Discrete motion planning
- Post-process with optimization
- <span style="color:red">Limited dynamics</span>


## Kinodynamic Motion Planning: Motion Primitives

::: {.container}
:::: {.col .element: class="fragment" data-fragment-index="1"}
::: {.box-white}
<img src="media/image/talks/discrete-motions.png" width="70%">
<div style="font-size:0.6em; color:gray; margin-top:-1.1em;">
Shankar et al., 2025, Hou et al.,2025;
</div>
:::
- Discretized actions
- <span style="color:red">Expensive to hand craft</span>
::::

:::: {.col .element: class="fragment" data-fragment-index="2"}
::: {.box-white}
<img src="media/image/talks/cont-motions.png" width="70%">
<div style="font-size:0.6em; color:gray; margin-top:-1.1em;">
Hönig et al., 2023; Moldagalieva et al., 2024, Moldagalieva et al., 2025;
</div>
:::
- Diverse maneuvers
- <span style="color:red">Stitching is non-trivial</span>
::::

:::


# discontinuity-bounded Search for Kinodynamic Motion Planning



## discontinuity-bounded/db-Search

Allows for an user-defined discontinuity ($\delta$) between states (<span style="font-size:0.6em; color:gray;">Hönig et al., 2023 Ortiz-Haro et al., 2025</span>)

![](media/image/phd-defense/db-search.png){width=600}



## db-Search: Discrete Search

::: {.r-stack}

:::{.element: class="fragment current-visible"}
![](media/image/talks/db-search1.png)

::::
:::{.element: class="fragment current-visible"}
![](media/image/talks/db-search2.png)

::::
:::{.element: class="fragment current-visible"}
![](media/image/talks/db-search3.png)
::::

:::

Motion is applicable iff $d(\mathbf{x}_k, \mathbf{x}_m) \leq \delta$, 

$d : \mathcal{X} \times \mathcal{X} \rightarrow \mathbb{R}^{+}$ - function that measures the distance between two states

$\mathbf{x}_k$, $\mathbf{x}_m$ - robot state, motions first state.


## db-Search: Discrete Search Output 

![](media/image/talks/db-search4.png)


## db-Search: Discrete Search Output


```{=html}
<video data-autoplay loop muted playsinline src="media/video/talks/jumpy-solution-dbcbs.mp4" width="60%"></video>
```

. . . 

Output is jumpy - infeasible for real robot platforms. How to Fix It?


## db-Search: Fix discontinuous Jumps

With trajectory optimization (<span style="font-size:0.6em; color:gray;">Hönig et al., 2023 Ortiz-Haro et al., 2025</span>)

```{=html}
<video data-autoplay loop muted playsinline src="media/video/talks/db-search.mp4" width="100%"></video>
```

## db-Search: multi-robot motion planning

CBS/ECBS + db-Search = db-CBS (<span style="font-size:0.6em; color:gray;">Sharon et al., 2015, Moldagalieva et al., 2024, Moldagalieva et al., 2025</span>)

::: {.r-stack}

:::{.element: class="fragment current-visible"}
![](media/image/phd-defense/flowchart-dbcbs-1.png)

::::
:::{.element: class="fragment current-visible"}
![](media/image/phd-defense/flowchart-dbcbs-2.png)

::::
:::{.element: class="fragment current-visible"}
![](media/image/phd-defense/flowchart-dbcbs-3.png)
::::
:::{.element: class="fragment current-visible"}
![](media/image/phd-defense/flowchart-dbcbs-4.png)
:::: 
:::{.element: class="fragment"}
![](media/image/phd-defense/flowchart-dbcbs-5.png)
::::
:::


## db-Search: multi-robot motion planning

CBS/ECBS + db-Search (<span style="font-size:0.6em; color:gray;">Moldagalieva et al., 2024, Moldagalieva et al., 2025</span>)

```{=html}
<video data-autoplay loop muted playsinline src="media/video/talks/dbecbs-intro.mp4" width="100%"></video>
```


## db-Search with Optimization

<img src="media/image/phd-defense/complexity-scalability.png"
     style="width: 60%; height: auto;">

\begin{equation}
  \mathcal{O}\left(K\left(\sum_{i=1}^{N} \max\left(d_x^{(i)},d_u^{(i)}\right)\right)^3\right)
\end{equation}

$d^{(i)}_x, d^{(i)}_u$ - state and action dimensions of robot $i$, 
$N$ - number of robots, 
$K = \max_{i \in N} K^{(i)}$, $K^{(i)}$ - number of time steps in the discrete search solution of the $i^{\text{th}}$ robot.

## Kinodynamic Motion Planning: Motion Primitives 

![](media/image/talks/db-search4.png)

. . . 

No discontinuity *$\rightarrow$* No optimization


## db-Search with Rollout

::: {.r-stack}

:::{.element: class="fragment current-visible"}
![](media/image/talks/db-search-rollout-1.png)

::::
:::{.element: class="fragment current-visible"}
![](media/image/talks/db-search-rollout-2.png)

::::
:::{.element: class="fragment current-visible"}
![](media/image/talks/db-search-rollout-3.png)


::::
:::{.element: class="fragment current-visible"}
![](media/image/talks/db-search-rollout-4.png)


::::
:::{.element: class="fragment current-visible"}
![](media/image/talks/db-search-rollout-5.png)

::::
:::{.element: class="fragment current-visible"}
![](media/image/talks/db-search-rollout-6.png)


::::
:::{.element: class="fragment current-visible"}
![](media/image/talks/db-search-rollout-7.png)

::::

:::



## db-Search: multi-robot motion planning

LaCAM + db-Search = db-LaCAM (<span style="font-size:0.6em; color:gray;">Okumura et al., 2023, Moldagalieva et al., 2026</span>)

::: {.r-stack}

:::{.element: class="fragment current-visible"}
![](media/image/phd-defense/flowchart-dblacam-1.png)
::::
:::{.element: class="fragment current-visible"}
![](media/image/phd-defense/flowchart-dblacam-2.png)
::::
:::{.element: class="fragment current-visible"}
![](media/image/phd-defense/flowchart-dblacam-3.png)
::::
:::{.element: class="fragment current-visible"}
![](media/image/phd-defense/flowchart-dblacam-4.png)
:::: 
:::{.element: class="fragment current-visible"}
![](media/image/phd-defense/flowchart-dblacam-5.png)
::::
:::{.element: class="fragment current-visible"}
![](media/image/phd-defense/flowchart-dblacam-6.png)
::::
:::{.element: class="fragment current-visible"}
![](media/image/phd-defense/flowchart-dblacam-6.5.png)
::::
:::{.element: class="fragment"}
![](media/image/phd-defense/flowchart-dblacam-7.png)
::::
:::


## db-Search: multi-robot motion planning

LaCAM + db-Search = db-LaCAM (<span style="font-size:0.6em; color:gray;">Okumura et al., 2023, Moldagalieva et al., 2026</span>)

```{=html}
<video data-autoplay loop muted playsinline src="media/video/icaps/icaps-gif.mp4" width="70%"></video>
```

## db-Search: Rollout

. . . 

![](media/image/phd-defense/additional-material/rollout-struggle-1.png)

3D environment + <span style="color: red">narrow pass</span>


## db-Search: Rollout

![](media/image/phd-defense/additional-material/rollout-struggle-2.png)

High-dimensional dynamics - <span style="color: red">Lipschitz continuity</span> breaks


## db-Search: Heuristic Estimation

. . . 

- Search efficiency

. . . 

- Euclidean distance might be not sufficient


## db-Search: Heuristic Estimation - Classic

::: {.r-stack}
:::{.element: class="fragment current-visible" data-fragment-index="1"}
![](media/image/talks/reverse-search-1.png)
::::
:::{.element: class="fragment current-visible" data-fragment-index="2"}
![](media/image/talks/reverse-search-2.png)
::::

:::

## db-Search: Heuristic Estimation - Hierarchical EST

Guided Expansive Spaces Trees: a search strategy for motion- and cost-constrained state spaces (EST) (<span style="font-size:0.6em; color:gray;">J. Phillips et al., 2004</span>)

::: {.r-stack}
:::{.element: class="fragment current-visible" data-fragment-index="1"}
![](media/image/icaps/hest1-arrow.png)
::::
:::{.element: class="fragment current-visible" data-fragment-index="2"}
![](media/image/icaps/hest2.png)
::::
:::{.element: class="fragment current-visible" data-fragment-index="3"}
![](media/image/icaps/hest3.png)
::::
:::{.element: class="fragment current-visible" data-fragment-index="4"}
![](media/image/icaps/hest4.png)
::::
:::

## db-Search: Classic vs. Hierarchical EST heuristic estimation

![](media/image/talks/motion_preparation.png)


# Summary 




