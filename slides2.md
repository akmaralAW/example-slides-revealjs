---
title: Online talk with Keisuke Okumura
subtitle: 
author:
date: 02.04.2025

theme: white
title-slide-attributes:
    data-background-image: media/title_white.svg
    data-background-size: contain

minScale: 0.2
maxScale: 10.0
slideNumber: true
navigationMode: 'linear'
controls: false
---

# db-CBS

## db-CBS: Approach

- Step 1: All single robot trajectories are generated with db-A*
- Step 2: Inter-robot collisions are detected and resolved 
- Step 3: Discontinuities in robot trajectories are fixed with non-linear optimization


# Interaction-aware db-CBS (db-ECBS)


## db-ECBS: Extensions

::: fragment
- Reasons about *aerodynamic interaction force* between flying robots
:::
::: fragment
- Scales better with increasing number of robots (N=16)
:::
::: fragment
- Analysis on heuristics, computation time, and discrete search
:::
::: fragment
- Better/faster implementation of the algorithm
:::


## db-ECBS: Close-proximity flight scene

blue - small robots, orange - large robot

```{=html}
<video data-autoplay src="media/video/NeuralSwarm2-example.mp4"></video>
```

## db-ECBS: Close-proximity flight scene

```{=html}
<video data-autoplay src="media/video/demo-uav.mp4"></video>
```




