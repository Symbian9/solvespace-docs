Sketch in New Workplane
########################

This creates a new empty group, similar to a new :doc:`sketch`.  The
difference is that a :guilabel:`Sketch in New Workplane` also creates a
workplane.  The workplane is created based on the entities that are
selected when the sketch is created.

These may entities may be:

**a point and two line segments**
  The new workplane has its origin at the specified point.  The
  workplane is parallel to the two lines.  If the point is a vertex on
  a face of the part, and the two lines are two edges of that face,
  then the resulting workplane will be coincident with that face (i.e.,
  the user will be drawing on that face).

**a point**
  The new workplane has its origin at the specified point.  The
  workplane is orthogonal to the base coordinate system; for example,
  its horizontal and vertical axes might lie in the +y and -z
  directions, or +x and +z, or any other combination.

The orientation of the workplane is inferred from the position of the
view when the workplane is created; the view is snapped to the nearest
orthographic view, and the workplane is aligned to that.

If a part consists mostly of ninety degree angles, then this is a quick
way to create workplanes.

The new group's associated workplane is automatically set to be the
active workplane.

If the entities in this group do not form closed curves, then an error
message is displayed on the screen, and a red line is drawn across the
gap.  An error is also displayed if the curves are not all coplanar.
