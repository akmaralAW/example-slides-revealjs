---
title: Kinodynamic Motion Planning for Heterogeneous Multi-Robot Systems
subtitle: Akmaral Moldagalieva
date: 25.08.2026

theme: white
title-slide-attributes:
    data-background-size: contain

minScale: 0.2
maxScale: 10.0
slideNumber: true
navigationMode: 'linear'
controls: false
---

# Dissertation Contributions {#preview}

<div class="three-columns">

<div>
Time-Optimal Motion Planning
<img src="media/image/phd-defense/partI.png" width="50%">

</div>

<div>
Interaction Awareness for Motion Planning
<img src="media/image/phd-defense/partII.png" width="50%">

</div>

<div>
Fast, Scalable Motion Planning
<img src="media/image/phd-defense/partIII.png" width="50%">

</div>

</div>

. . . 

<div class="three-columns">

<div>
Diffusion Model-based Motions
<img src="media/image/phd-defense/partV.png" width="70%">

</div>

<div>
Virtual Omnidirectional Perception
<img src="media/image/phd-defense/partIV.png" width="70%">

</div>

</div>


# db-CBS: discontinuity-bounded Conflict-based Search for Multi-Robot Kinodynamic Motion Planning {#preview}

. . . 

::: {.box-green}
- Probabilistically complete and asymptotically optimal
- Finds near-optimal solutions quickly
- Supports arbitrary robot dynamics
:::


```{=html}
<video data-autoplay loop muted playsinline src="media/video/phd-defense/dbcbs-intro.mp4" width="90%"></video>
```

<div style="position:absolute; bottom:20px; left:40px; right:40px; font-size:0.75em; color:gray;">
Moldagalieva, A., Ortiz-Haro, J., Toussaint, M., Hönig, W. (2024) <i>db-CBS: discontinuity-bounded Conflict-Based Search for Multi-Robot Kinodynamic Motion Planning</i>, IEEE  International Conference on Robotics and Automation (ICRA).
</div>

# db-CBS: Results {#preview}

- Example: Random (heterogeneous)
- Dynamics: unicycle ($1^{(st)}$ order), car-with-trailer, double integrator

```{=html}
<video data-autoplay loop muted playsinline src="media/video/nu/dbcbs-scalability.mp4" width="100%"></video>
```

. . . 


*Take away*: db-CBS achieves $50\text{-}65\%$ lower cost than the second-best planner (K-CBS).

# db-ECBS: Interaction-Aware Multi-Robot Kinodynamic Motion Planning {#preview}

. . . 

::: {.box-green}
- Probabilistically complete and asymptotically bounded suboptimal
- Reasons about interaction force between robots
- Scales up to 16 robots
:::


```{=html}
<video data-autoplay loop muted playsinline src="media/video/phd-defense/dbecbs-intro.mp4" width="80%"></video>
```

<div style="position:absolute; bottom:-60px; left:40px; right:40px; font-size:0.75em; color:gray;">
Moldagalieva, A., Ortiz-Haro, J., Hönig, W. (2025) <i>db-ECBS: Interaction-Aware Multirobot Kinodynamic Motion Planning</i>, IEEE Transactions on Robotics (T-RO).
</div>

# db-ECBS: Results {#preview}

- Example: Window (w/ aerodynamic interaction)
- Platform: Crazyflie 2.1 robots

```{=html}
<video data-autoplay src="media/video/nu/dbecbs-uav.mp4" width="90%"></video>
```
. . . 

*Take away*:  Ellipsoidal robot shapes cause more frequent collisions in this small environment, increasing conflict-resolution time.

# db-LaCAM: Fast and scalable multi-robot kinodynamic motion planning with discontinuity-bounded search and lightweight MAPF {#preview}

. . . 

::: {.box-green}
- Scalability up to 50 robots
- Computational runtime up to 10x faster
:::


```{=html}
<video data-autoplay loop muted playsinline src="media/video/icaps/icaps-gif.mp4" width="70%"></video>
```

<div style="position:absolute; bottom:-100px; left:-20px; right:40px; font-size:0.75em; color:gray;">
Moldagalieva, A., Okumura, K., Prorok, A., Hönig, W. (2026) <i> db-LaCAM: Fast and scalable multi-robot kinodynamic motion planning with discontinuity-bounded search and lightweight MAPF</i>, International Conference on Automated Planning and Scheduling (ICAPS).
</div>

# db-LaCAM: Results {#preview}

- Example: Random with 50 robots
- Dynamics: unicycle ($1^{(st)}$ order)

```{=html}
<video data-autoplay loop muted playsinline src="media/video/phd-defense/n50_faster.mp4" width="60%"></video>
```
. . . 

*Take away*: db-LaCAM is up to $10\times$ faster than db-CBS and db-ECBS and scales better with team size. 

# Future Work 

. . . 

- Task and Motion Planning/System-level Intelligence

. . . 

- Kinodynamic Motion Planning for Unmodeled Dynamics

. . . 

- Real-time Performance and Guarantees
