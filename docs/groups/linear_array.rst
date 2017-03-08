Linear Array
#############

This group takes geometry in the active group, and copies it multiple
times along a straight line.

If a workplane is active when the step translating group is created,
then the translation vector must lie parallel to that workplane.
Otherwise, the translation vector may go anywhere in free space.

The number of copies to create is specified by the user.  To change
this value, click the :guilabel:`[change]` link in the group's page in
the text window.

The copies may be translated on one side, or on two sides.  If the
copies are translated on one side, then the original will appear to the
left of (or above, below, etc.) all the copies.  If the copies are
translated on two sides, then the original will appear in the center of
the copies.

The copies may be translated starting from the original, or starting
from copy #1.  If the translation starts from the original, then the
translation will contain the original. So a 1-element step will
always produce the input geometry in its original location.

If the translation starts from copy #1, then the original is not
included in the output. So a 1-element step makes a single copy of
the input geometry, and allows the user to translate it anywhere in
space.

If the active group is a sketch (sketch in 3D, sketch in new
workplane), the the sketch is stepped and repeated.  In that case the
user would typically draw a section, step and repeat that section, and
then extrude the step and repeat.

If the active group is a solid (extrude, lathe), then the solid is
stepped and repeated.  In this case, the user would draw a section,
extrude the section, and then step and repeat the extrusion.

In some cases, these two possibilities (extrude the step, vs. step the
extrusion) are equivalent.  If the translation vector isn't parallel to
the section plane, then only the second option will work.

