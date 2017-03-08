Extrude
########

This group takes a flat section, and extrudes it to form a solid.  The
flat section is taken from the section of the group that is active when
the extrude group is created.
This is usually a sketch in workplane, or a sketch in 3D, but could
also be a an Array.

The sketch may be extruded on one side, or on two sides.  If the sketch
is extruded on one side, then the new solid is either entirely above or
entirely below the original sketch.  Drag a point on the new surface to
determine the extrude direction, and also to determine the extrude
depth.  Once the extrusion depth looks approximately correct, it may be
specified exactly by using constraints.  For example, the user might
constrain the length of one of the newly extruded edges.

If the sketch is extruded on two sides, then the original sketch lies
at the exact midpoint of the new solid.  This means that the solid is
symmetric about the original sketch plane.  Later dimensioning often
becomes simpler when the part has symmetry, so it's useful to extrude
on two sides whenever possible.

A workplane must be active when the group is created, and the extrude
path is automatically constrained to be normal to that workplane.  This
means, for example, that a rectangle is extruded to form a rectangular
prism.  The extrusion has one degree of freedom, so a single distance
constraint will fully constrain it.

By default, no workplane is active in a new extrude group.  This means
that constraints will apply in 3D; for example, a length constraint is
a constraint on the actual length, and not on the length projected into
some plane.  This is typically the desired behaviour, but it's possible
to activate a workplane in the usual way (by selecting it, then
choosing :menuselection:`Sketch --> In Workplane`).
