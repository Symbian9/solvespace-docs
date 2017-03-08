Tangent Arc
############

To round off a sharp corner (for example, between two lines), we often wish to create an arc at the corner, that is tangent to both of the lines.  This will create a smooth appearance where the line and arc join.  It would be possible to draw these arcs by hand, using :menuselection:`Sketch --> Arc of a Circle` and :menuselection:`Constrain --> Tangent`, but it's easier to create them automatically.

To do so:

#. Select a point where two line segments or circles join.  
#. Choose :menuselection:`Sketch --> Tangent Arc at Point`.
   The arc will be created, and automatically constrained tangent to the two adjoining curves.

The initial line segments will become construction lines, and two new lines will be created, that join up to the arc.  The arc's diameter may then be constrained in the usual way, with :menuselection:`Distance/Diameter` or  :menuselection:`Equal Length/Radius` constraints.

By default, the radius of the tangent arc is chosen automatically.

To change that:

#. Choose :menuselection:`Sketch --> Tangent Arc at Point` with nothing selected.
#. A screen will appear in the text window, where the radius may be specified.
   
It is also possible to specify whether the original lines and curves should be kept, but changed to construction lines (which may be useful if you want to place constraints on them), or whether they should be deleted.
