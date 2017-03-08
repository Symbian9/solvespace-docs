Horizontal/Vertical
####################

This constraint forces a line segment to be horizontal or vertical.  It
may also be applied to two points, in which case it applies to the line
segment connecting those points.

A workplane must be active, because the meaning of *horizontal* or
*vertical* is defined by the workplane.

It's good to use horizontal and vertical constraints whenever possible.
These constraints are very simple to solve, and will not lead to
convergence problems.  Whenever possible, define the workplanes so that
lines are horizontal and vertical within those workplanes.
