Sketch Entities
################

.. toctree::
   :maxdepth: 2
   
   point
   workplane
   line
   rectangle
   circle
   arc
   tangent_arc
   bezier_cubic_spline
   text
   splitting_trimming


Construction Geometry
=====================

In normal operation, the user draws lines and curves in a sketch.
Those curves describe the geometry to be manufactured; ultimately, the
endmill or the laser or some other tool will cut along those curves.

In some cases, it is useful to draw a line that should not appear on
the final part.  For example, the user may wish to draw a center line
for a symmetric part; but that center line is only a guide, and should
not actually get exported with the CAM data.  These lines are called
construction lines.

To mark an entity as construction-only:

- Choose :menuselection:`Sketch --> Toggle Construction`.

A construction entity will behave just like any other entity, except
that it is drawn in green, and does not contribute to the geometry for
export (or to the section that will be extruded or lathed or swept).


