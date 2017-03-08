Known Bugs and Issues
#####################


Boolean Operations on Triangle Meshes
=====================================

When Boolean operations are performed on triangle meshes (instead of
exact NURBS surfaces), the resulting mesh quality will often be poor.
An equally good mesh might have been achieved with fewer triangles, if
the curves were piecewise-linear approximated differently.  Or the mesh
may contain long skinny triangles.

This means that the exported STL files will not contain a high quality
mesh.  This is generally not a problem, but could be in some
applications.  In particular, the exported mesh may no longer be
exactly 2-manifold (i.e., watertight).  Check for this problem with
Analyze→Show Naked Edges.

Another consequence is that the program runs slower as the number of
triangles increases.  It's a good idea to draw with a fairly coarse
mesh.  Before exporting, reduce the chord tolerance; the part will be
regenerated with a finer mesh.


Boolean Operations on NURBS Surfaces
====================================

When Boolean operations are performed on NURBS surfaces, the mesh
quality will in general be much better.  But some types of surface
intersection are not handled by the current NURBS Booleans, so it may
in some cases be impossible to perform the desired operation as a NURBS
Boolean.

The NURBS Booleans are also affected by the chord tolerance.
Operations may fail if that tolerance is too coarse, but the routines
become slower as the tolerance gets finer.  If problems occur, then it
is often useful to change that tolerance.

To improve speed and mesh quality, draw the part using fewer Boolean
operations.  For example, a plate with a hole might be modeled in two
different ways.  The user might extrude the plate, and then cut a hole
by extruding a circle as difference.  Or the user might draw a single
sketch with both the outline of the plate and the hole, and extrude
only once.  The latter option is preferable.  The trim command
(Sketch→Split Curves at Intersection) may be useful while drawing
complicated sections.
