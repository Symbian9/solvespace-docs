Orientation
############

This constraint forces two normals to have the same orientation.

A normal has a direction; it is drawn as an arrow in that direction.
The direction of that arrow could be specified by two angles.  The
normal specifies those two angles, plus one additional angle that
corresponds to the twist about that arrow.

.. note:: Technically, a normal represents a rotation matrix from one
    coordinate system to another.  It is represented internally as a
    unit quaternion.

For example, the picture below shows two workplanes, whose normals are
constrained to be parallel:

..image:: images/ref-parallel-normals.png

Because the normals are parallel, the planes are parallel.  But one
plane is twisted with respect to the other, so the planes are not
identical.  The line on the left is constrained to be horizontal in the
leftmost plane, and the line on the right is constrained to be
horizontal in the rightmost.  These lines are not parallel, even though
the normals of the workplanes are parallel.

If we replace the *parallel* constraint with a *same orientation*
constraint, then the two workplanes become identical, and the two
horizontal lines become parallel.

This is a useful constraint when building an assemblies; a single "same
orientation" constraint will fix all three of the imported part's
rotational degrees of freedom.
