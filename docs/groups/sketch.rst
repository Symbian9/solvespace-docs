Sketch
#######

This creates a new empty group, in which the user may draw lines,
circles, arcs, and other curves.

The ultimate goal is usually to draw closed sections (like a triangle,
or a square with a circular cutout, or some more complicated shape).
These sections are the input for later groups.  For example, an extrude
group takes a flat section, and uses it to form a solid.

If all of the entities in the group can be assembled into closed loops,
then the area that the loops enclose is shaded in very dark blue.  This
is the area that would be swept or extruded or lathed by a subsequent
group.
