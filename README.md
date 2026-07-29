

MATLAB code for computing Lyapunov exponents, the standard quantitative measure of how fast nearby trajectories separate, and the sharpest test of whether a system is chaotic. Final-year project at The University of Reading. Results and analysis given in [Report2.pdf](Report2.psf)

**Logistic map** `x_{i+1} = r·x_i(1 - x_i)`

- Largest Lyapunov exponent at a fixed `r` (λ ≈ −0.8725 at r = 3.5)
- λ swept across `r ∈ (0, 4]`, recovering the period-doubling structure
- Time series and perturbed time series (δ = 0.01) at r = 2 vs r = 3.8, showing convergence against sensitive dependence on initial conditions

**Lorenz system** `σ = 10, ρ = 28, β = 8/3`

- Solved with a hand-rolled 4th-order Runge–Kutta integrator, h = 0.01, t ∈ [0, 100]
- Largest Lyapunov exponent via the renormalised-perturbation method (Sprott, 2015): λ<sub>max</sub> ≈ 0.90–0.91

The report also derives the tent-map exponent analytically (λ = ln 2) and sets out the Benettin/Gram–Schmidt algorithm for the full Lyapunov spectrum, via Oseledec's multiplicative ergodic theorem.

## Files

| File | Purpose |
|---|---|
| `PPRCHAOS.m` | λ for the logistic map, r = 3.5 |
| `PPRCHAOS2.m` | λ against r |
| `PPRCHAOS3.m` | Time series, r = 2 vs r = 3.8 |
| `PPRCHAOS4.m` | Perturbed time series |
| `PPRCHAOS5.m` | Lorenz attractor, RK4 |
| `PPRCHAOS6.m` | λ<sub>max</sub> for Lorenz |
| `iteration.m` | RK4 stepper used by `PPRCHAOS6.m` |
| `Report.pdf` | Full write-up |

Run scripts directly in MATLAB — no toolboxes required.
