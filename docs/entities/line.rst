Polyline
#########

This entity is specified by its two or more connected points. If a
workplane is active, then the two endpoints will always lie in that
workplane.

To create the a polyline:

#. Choose :menuselection:`Sketch --> Polyline`
#. Left-click to mark the starting point of the polyline.
#. Release the mouse button. The endpoint is now being dragged.
#. To create another line segment, that shares an endpoint with the
   line segment that was just created, left-click again.
#. To stop drawing line segments, press :kbd:`Esc` or right- or
   middle-click with the mouse.
   
SolveSpace will also stop drawing new line segments if an automatic
constraint is inserted.

To close a polyline into a polygon:

- Hovering over the starting point before left-clicking the last time.
  The endpoint of the polyline will be constrained to lie on the
  starting point, and since a constraint was inserted, SolveSpace
  will stop drawing.
