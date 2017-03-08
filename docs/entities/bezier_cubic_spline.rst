Bezier Spline
##############

This entity is specified by at least two on-curve points, and an
off-curve control point at each end (so two off-curve points total).
If only two on-curve points are present, then this is a Bezier cubic
section, and the four points are exactly the Bezier control points.

If more on-curve points are present, then it is a second derivative
continuous (C2) interpolating spline, composed of multiple Bezier cubic
segments.  This is a useful type of curve, because it has a smooth
appearance everywhere, even where the sections join.

To create the Bezier cubic spline:

#. Choose :menuselection:`Sketch --> Bezier Cubic Spline`. 
#. Left-click one endpoint of the cubic segment.
#. Release the mouse button.
   The other endpoint of the cubic segment is now being dragged.
#. To add more on-curve points, left click with the mouse.
#. To finish the curve, right-click, or press :kbd:`Esc`.

The two control points are intially placed on the straight line between
the endpoints; this means that the cubic originally appears as a
straight line.  Drag the control points to produce the desired curve.

To create a closed curve (technically, a 'periodic spline'):

#. Start by creating the curve as usual, left-clicking to create
   additional on-curve points (see above).
#. Hover the mouse over the first point in the curve, and left-click.
   The curve will be converted to a periodic spline, which will be C2
   continuous everywhere, including at that first point.
