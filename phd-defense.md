---
title: Kinodynamic Motion Planning for Heterogeneous Multi-Robot Systems

theme: white
title-slide-attributes:
    data-background-image: media/phd-defense.svg
    data-background-size: contain

minScale: 0.2
maxScale: 10.0
slideNumber: true
navigationMode: 'linear'
controls: false
---

# Presentation Overview

<ul class="overview">
  <li>Introduction: Multi-Robot Coordination</li>
  <li>Kinodynamic Motion Planning for Multi-Robot Systems</li>
</ul>

<div class="three-columns">

<div>
<b>Part I</b><br>
Time-Optimal Motion Planning
<img src="media/image/phd-defense/partI.png" width="50%">
</div>

<div>
<b>Part II</b><br>
Interaction Awareness for Motion Planning
<img src="media/image/phd-defense/partII.png" width="50%">
</div>

<div>
<b>Part III</b><br>
Safe, Fast Motion Planning
<img src="media/image/phd-defense/partIII.png" width="50%">
</div>

</div>

- Conclusion and Future Work

# Presentation Overview

<ul class="overview">
  <li class="active">Introduction: Multi-Robot Coordination</li>
  <li>Kinodynamic Motion Planning for Multi-Robot Systems</li>
</ul>

<div class="three-columns">

<div>
<b>Part I</b><br>
Time-Optimal Motion Planning
<img src="media/image/phd-defense/partI.png" width="50%">
</div>

<div>
<b>Part II</b><br>
Interaction Awareness for Motion Planning
<img src="media/image/phd-defense/partII.png" width="50%">
</div>

<div>
<b>Part III</b><br>
Safe, Fast Motion Planning
<img src="media/image/phd-defense/partIII.png" width="50%">
</div>

</div>

- Conclusion and Future Work


# Autonomous Multi-Robot Systems

Multiple robots can accomplish tasks that are impossible, inefficient, or unsafe for a single robot, enabling *scalable*, *robust*, and *efficient* operation in complex environments.

<img src="media/image/phd-defense/applications.png" width="100%">

. . . 

Autonomy of a team of robots requires being able to reach the goal quickly while avoiding collisions with obstacles and other robots.


# Multi-Robot Motion Planning {#intro}


<video width="70%" autoplay muted loop playsinline>
  <source src="media/video/phd-defense/mrmp-problem.mp4" type="video/mp4">
</video>

**Goal**: Move each robot from its start state ($\mathbf{s}_1$, $\mathbf{s}_2$) to its goal state ($\mathbf{g}_1$, $\mathbf{g}_2$) while avoiding obstacles and collisions with other robots.


# Multi-Robot Coordination: Related Work {#intro}

::: {.container}

:::: {.col}
::: {.box-def}
:::: {.box-blue-title}
MAPF
::::
- Optimal graph planning
- Scales to > 1000 agents
- <span style="color:red">Ignores robot dynamics</span>
<img src="media/image/phd-defense/mapf.png" width="100%">

<div style="font-size:0.45em; color:gray; margin-top:0.1em;">
Sharon et al., 2015; Sharon et al., 2015; Sharon et al., 2015; 
</div>

:::
::::

:::: {.col}
::: {.box-def}
:::: {.box-blue-title}
MAPF + Post-processing
::::
- Dynamically feasible
- Smooth trajectories
- <span style="color:red">Suboptimal trajectories</span>
<img src="media/image/phd-defense/mapf-post.png" width="100%">

<div style="font-size:0.45em; color:gray; margin-top:0.1em;">
Sharon et al., 2015; Sharon et al., 2015; Sharon et al., 2015; 
</div>
:::
::::

:::: {.col}
::: {.box-def}
:::: {.box-blue-title}
Differential Flatness 
::::
- Scale well
- <span style="color:red">Actuation limits ignored</span>
- <span style="color:red">Limited dynamics</span> 
<img src="media/image/phd-defense/diff-flatness.png" width="100%">

<div style="font-size:0.45em; color:gray; margin-top:0.1em;">
Sharon et al., 2015; Sharon et al., 2015; Sharon et al., 2015; 
</div>
:::
::::

:::


# Research Statement

::: {.box-green}
:::: {.box-green-title}

::::
Design a unified, *theoretically grounded* motion planning framework for *heterogeneous* robots that respects each robot’s *kinodynamic* constraints.
:::

# Background

- Robot Dynamics

- Motion Primitives

- Discontinuity-bounded Search

# Presentation Overview {#preview}

<ul class="overview">
  <li>Introduction: Multi-Robot Coordination</li>
  <li>Kinodynamic Motion Planning for Multi-Robot Systems </li>
</ul>

<div class="three-columns">

<div>
<b><span style="color:#0072B2;">Part I</span></b><br>
<span style="color:#0072B2;">Time-Optimal Motion Planning</span>
<img src="media/image/phd-defense/partI.png" width="50%">

<div style="font-size:0.75em;">
  <strong>(Ch. 4 – ICRA 2024)</strong><br>
  (Ch. 5 – Preprint)
</div>
</div>

<div>
<b>Part II</b><br>
Interaction Awareness for Motion Planning
<img src="media/image/phd-defense/partII.png" width="50%">
</div>

<div>
<b>Part III</b><br>
Safe, Fast Motion Planning
<img src="media/image/phd-defense/partIII.png" width="50%">
</div>

</div>

- Conclusion and Future Work


# Part I. Time-Optimal Kinodynamic Motion Planning for Multi-Robot Systems {#preview}


# Part I. Time-Optimal Kinodynamic Motion Planning for Multi-Robot Systems {#preview}

![](media/image/phd-defense/flowchart-dbcbs-1.png)
<div style="position:absolute; bottom:20px; left:40px; right:40px; font-size:0.75em; color:gray;">
Moldagalieva, A., Ortiz-Haro, J., Toussaint, M., Hönig, W. (2024)<i>db-CBS: Discontinuity-Bounded Conflict-Based Search for Multi-Robot Kinodynamic Motion Planning</i>, IEEE  International Conference on Robotics and Automation (ICRA).
</div>

# db-CBS: Time-Optimal Kinodynamic Motion Planning for Multi-Robot Systems {#preview}

::: {.r-stack}

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

# db-CBS: Results {#preview}


# Presentation Overview {#preview}

<ul class="overview">
  <li>Introduction: Multi-Robot Coordination</li>
  <li>Kinodynamic Motion Planning for Multi-Robot Systems </li>
</ul>

<div class="three-columns">

<div>
<b>Part I</b><br>
Time-Optimal Motion Planning
<img src="media/image/phd-defense/partI.png" width="50%">

</div>

<div>
<b><span style="color:#0072B2;">Part II</span></b><br>
<span style="color:#0072B2;">Interaction Awareness for Motion Planning</span>
<img src="media/image/phd-defense/partII.png" width="50%">

<div style="font-size:0.75em;">
  <strong>(Ch. 6 – T-RO 2025)</strong><br>
  <!-- <strong>(Ch. 7 – MRS 2023)</strong><br> -->
  (Ch. 7 – MRS 2023)

</div>

</div>

<div>
<b>Part III</b><br>
Safe, Fast Motion Planning
<img src="media/image/phd-defense/partIII.png" width="50%">

</div>

</div>

- Conclusion and Future Work

# Part II. Interaction Awareness for Motion Planning {#preview}

# Part II. Interaction Awareness for Motion Planning {#preview}

```{=html}
<video data-autoplay loop muted playsinline src="media/video/phd-defense/downwash.mp4" width="100%"></video>
```

. . . 

::::: {.box-red}
Robots can deviate from planned trajectories, leading to crash.
:::::

# Part II. Interaction Awareness for Motion Planning {#preview}

![](media/image/phd-defense/flowchart-dbecbs-1.png)
<div style="position:absolute; bottom:20px; left:40px; right:40px; font-size:0.75em; color:gray;">
Moldagalieva, A., Ortiz-Haro, J., Hönig, W. (2025) <i>db-ECBS: Interaction-Aware Multirobot Kinodynamic Motion Planning</i>, IEEE Transactions on Robotics (T-RO).
</div>