
Advection
---------
Motivation: we want to examine the characteristics of the advection scheme we use in the gravity waves test and demonstrate that it is a "good" scheme
- show that advection around cut cells is "good"
- we want to determine whether the primary source of error is due to non-orthogonality of the grid, or misalignment of the flow with the grid
Method: new test of a tracer at the ground.  this may help with explaining errors in gravity waves test case, too.

I don't think it is valuable to compare with centred differencing/4th order schemes from Schaer 2002 and we could then safely omit the discussion of sensitivity to domain width.


Gravity waves
-------------
Motivation: cut cell grids can change quite a lot in terms of cell sizes and shapes.  we want to find out how sensitive the results are to such changes.
Method: we will do this by varying dz, using 200m, 250m and 300m with a mountain height, h_0=250m.  we can use checkMesh to find out the ratio between largest and smallest cell size.  we will also plot and examine the meshes qualitatively.  we might also reexamine divergence to see if it explains why theta changes too much/too little over the mountains.

Conclusions
-----------
There is a trade-off between the accuracy of advection and horizontal pressure gradient: ...
