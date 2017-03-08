Groups
#######

To view a list of groups, go to the home page of the text window.  This
is accessible from the link at the top left of the text window, or by
pressing :kbd:`Esc`.  To view a group's page, click its name in the
list.

All groups have a name.  When the group is created, a default name
(e.g., 'g008-extrude') is assigned.  The user may change this name; to
do so, go to the group's page in the text window, and choose
:guilabel:`[rename]`.

Groups that create a solid (e.g. extrudes or lathes) have a
:guilabel:`solid model as` option, which is displayed in the page in
the text window. The group can be merged as union, which adds material
to the model, or as difference, which cuts material away.

The union and difference operations may be performed either as triangle
meshes, or as exact NURBS surfaces.  Triangle meshes are fast to
compute and robust, but they require any smooth curves to be
approximated as piecewise linear segments.  The NURBS surface
operations are not as robust, and will fail for some types of geometry;
but they represent smooth curves exactly, which makes it possible for
example to export a DXF in which a circular arc appears as an exact
circle, instead of many piecewise linear edges.

These groups also have a color, which determines the color of the
surfaces they produce.  To change the color, click one of the swatches
in the group's page in the text window.

The group's page in the text window also includes a list of all
requests, and of all constraints.  To identify a constraint or a
request, hover the mouse over its name; it will appear highlighted in
the graphics window.  To select it, click the link in the text window.
This is equivalent to hovering over and clicking the actual object in
the graphics window.


.. toctree::
   :maxdepth: 2
   
   sketch
   sketch_in_new_workplane
   linear_array
   polar_array
   extrude
   lathe
   link_assemble
   link_recent
   
