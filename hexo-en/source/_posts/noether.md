---
title: Comments on Noether current
date: 2020-01-06 18:54:36
categories: 
    - [Physics]
---

### Abstract
This article concludes the knowledge point "Noether Theorem" collected during revision for the exam "Quantum Field Theory". It includes four parts: general form of the Noether current, Noether current under three types of coordinate transformations, and Noether current under specific Lagrangian. 

### General Form of Noether Current
Generally, we consider two types of transformation:\\
(i) the more fundamental one: coordinate transformation;\\
(ii) the other one: field transformation. It's obvious that: for every transformation on the coordinate, we can derive a corresponding transformation on the field. Thus, the level of field transformation is higher. We begin with this.\\
Consider a general transformation of the field $\phi(x)$:
$$ \phi(x) \rightarrow \phi(x)' = \phi(x)+\alpha \Delta \phi(x) \qquad \text{(1)} $$
where $\alpha$ is a constant, $\alpha \Delta \phi(x)$ is the deformation of the field. \\
Then consider the transformation of the Lagrangian. On one hand, the deformation of the Lagrangian must be a 4-derivative boundary term:
$$\Delta \mathcal{L} = \partial_\mu \mathcal{J}^\mu \qquad \text{(2)}$$
On the other hand, the deformation of the Lagrangian can be derived according to field transformation:\\
$$\Delta \mathcal{L} = \frac{\partial \mathcal{L}}{\partial \phi} \cdot \Delta \phi + \frac{\partial \mathcal{L}}{\partial (\partial_\mu \phi)} \cdot \Delta (\partial_\mu \phi)
= \partial_\mu(\frac{\partial \mathcal{L}}{\partial (\partial_\mu \phi)} \cdot \Delta \phi) + \Delta \phi \cdot [\frac{\partial \mathcal{L}}{\partial \phi} - \partial_\mu (\frac{\partial \mathcal{L}}{\partial (\partial_\mu \phi)})]$$
$$= \partial_\mu(\frac{\partial \mathcal{L}}{\partial (\partial_\mu \phi)} \cdot \Delta \phi) \qquad \text{(3)}$$
Compare equation (2) and (3), we obtain:
$$ j^\mu = \frac{\partial \mathcal{L}}{\partial (\partial_\mu \phi)} \cdot \Delta \phi - \mathcal{J}^\mu \qquad \text{(4)} $$
where $\partial_\mu j^\mu = 0$. $j^\mu$ is the general form of Noether current.\\
Three things to note:\\
1. Noether theorem: For every \textbf{continuous} symmetry of $\mathcal{L}$ (which means $\alpha$ is infinitesimal and the action $S' = \int d^4 x \mathcal{L'} = S$ under this transformation), there is always a conserved Noether current $j^\mu$. \textbf{Note that the integrated coordinate will not change with coordinate transformation.} This is because ...\\
2. Where the notation $\mu$ appear is important. They must appear in pair, and should not be mixed with other pairs.\\
3. The conserved Noether current leads to the conserved charge: $Q = \int d^3 \vec{x} j^0$.
