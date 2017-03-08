Parallel/Tangent
#################

This constraint forces two vectors to be parallel.

In 2D (i.e., when a workplane is active), a zero-degree angle
constraint is equivalent to a parallel constraint.  In 3D, it is not.

Given a unit vector A, and some angle theta, there are in general
infinitely many unit vectors that make an angle theta with A.  (For
example, if we are given the vector (1, 0, 0), then (0, 1, 0), (0, 0,
1), and many other unit vectors all make a ninety-degree angle with A.)
But this is not true for theta = 0; in that case, there are only two, A
and -A.

This means that while a normal 3d angle constraint will restrict only
one degree of freedom, a 3d parallel constraint restricts two degrees
of freedom.

This constraint can also force a line to be tangent to a curve, or
force two curves (for example, a circle and a cubic) to be tangent to
each other.  In order to do this, the two curves must already share an
endpoint; this would usually be achieved with a point-coincident
constraint.  The constraint will force them to also be tangent at that
point.
