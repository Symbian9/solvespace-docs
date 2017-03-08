Polar Array
############

This group takes the geometry in the active group, and copies it
mutiple times along a circle.

Before creating the group, the user must select its axis of rotation.
One way to do this is to select a point, plus either a line segment or
a normal; the axis of rotation goes through the point, and is parallel
to the line segment or normal.

If a workplane is active, then it's also possible to select just a
point; in that case, the axis of rotation goes through that point, and
is normal to the workplane.  This means that the rotation remains
within the plane of the workplane.

The step and repeat options (:guilabel:`one side`/:guilabel:`two
sides`, :guilabel:`with original`/:guilabel:`with copy #1`) are the
same as for :doc:`linear_array` groups.

The numer of copies is specified in the same way as for step
translating.  If the rotated geometry has not yet been constrained,
then the copies will be spaced evenly around a circle; for example, if
5 copies are requested, then the spacing will be 360/5 = 72 degrees.

To place the copies along less than (or more than) a complete circle,
drag a point on one of the copies with the mouse; all of the rest will
follow, as the step rotation angle is modified.  Constraints (for
example an angle constraint, or a point-on-lie constraint) may be used
to specify the angle of rotation exactly.
