Reference Dimensions
#####################

By default, the dimension drives the geometry.  If a line segment is
constrained to have a length of 20.00 mm, then the line segment is
modified until that length is accurate.

A reference dimension is the reverse: the geometry drives the
dimension.  If a line segment has a reference dimension on its length,
then it's still possible to freely change that length, and the
dimension displays whatever that length happens to be.  A reference
dimension does not constrain the geometry.

To convert a dimension into a reference dimension:

- Choose :menuselection:`Constrain --> Toggle Reference Dimension`.

A reference dimension is drawn with 'REF' appended to the displayed
length or angle.  Double-clicking a reference dimension does nothing;
the dimension is specified by the geometry, not the user, so it is not
meaningful to type in a new value for the reference dimension.
