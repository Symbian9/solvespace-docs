Symmetric
##########

This constraint forces two points to be symmetric about some plane.
Conceptually, this means that if we placed a mirror at the symmetry
plane, and looked at the reflection of point A, then it would appear to
lie on top of point B.

The symmetry plane may be specified explicitly, by selecting a
workplane.  Or, the symmetry plane may be specified as a line in a
workplane; the symmetry plane is then through that line, and normal to
the workplane.  Or, the symmetry plane may be omitted; in that case, it
is inferred to be parallel to either the active workplane's vertical
axis or its horizontal axis.  The horizontal or vertical axis is
chosen, depending which is closer to the configuration in which the
points were initially drawn.
