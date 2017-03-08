Point/Curve/Plane
##################

This constraint forces two points to be coincident, or a point to lie
on a curve, or a point to lie on a plane.

The point-coincident constraint is available in both 3d and projected
versions.  The 3d point-coincident constraint restricts three degrees
of freedom; the projected version restricts only two.  If two points
are drawn in a workplane, and then constrained coincident in 3d, then
an error will result--they are already coincident in one dimension (the
dimension normal to the plane), so the third constraint equation is
redundant.

When a point is constrained to lie on a circle (or an arc of a circle),
the actual constraint forces the point to lie on the cylindrical
surface through that circle.  If the point and the circle are already
coplanar (e.g., if they are both drawn in the same workplane), then the
point will lie on the curve, but otherwise it will not.
