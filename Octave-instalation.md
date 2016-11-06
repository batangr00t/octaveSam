# Ocatve installation in Ubuntu 16.04
```bash
$ sudo apt install octave
```

# Ocatave package installation
## get list of octave packages
```bash
$ apt search octave-
liboctave-dev/xenial 4.0.2-1ubuntu5~octave~xenial1 amd64
  Development files for the GNU Octave language

libplplot-dev/xenial 5.10.0+dfsg2-0.1ubuntu2 amd64
  Scientific plotting library (development files)

octave-bim/xenial,xenial 1.1.5-2 all
  PDE solver using a finite element/volume approach in Octave

octave-biosig/xenial 1.3.0-2.1build1 amd64
  Octave bindings for BioSig library

octave-common/xenial,xenial,now 4.0.2-1ubuntu5~octave~xenial1 all [installed,automatic]
  architecture-independent files for octave

octave-communications/xenial 1.2.1-1build1 amd64
  communications package for Octave

octave-communications-common/xenial,xenial 1.2.1-1build1 all
  communications package for Octave (arch-indep files)

octave-control/xenial 3.0.0-1 amd64
  computer-aided control system design (CACSD) for Octave

octave-data-smoothing/xenial,xenial 1.3.0-4 all
  functions to do data smoothing on noisy data

octave-dataframe/xenial,xenial 1.1.0-1 all
  manipulate data in Octave similar to R data.frame

octave-dbg/xenial-updates 4.0.0-3ubuntu9.1 amd64
  Debug symbols for octave

octave-doc/xenial,xenial 4.0.2-1ubuntu5~octave~xenial1 all
  PDF documentation on the GNU Octave language

octave-econometrics/xenial 1:1.1.1-2build2 amd64
  econometrics functions for Octave

octave-epstk/xenial,xenial 2.4-3 all
  GNU Octave encapsulated postscript toolkit

octave-financial/xenial,xenial 0.5.0-1 all
  financial package for Octave

octave-fpl/xenial,xenial 1.3.5-1 all
  plot data on unstructured triangular and tetrahedral meshes in Octave

octave-ga/xenial,xenial 0.10.0-2 all
  genetic optimization code for Octave

octave-gdf/xenial 0.1.2-2.0build2 amd64
  IO library for the GDF -- Octave interface

octave-general/xenial 2.0.0-1 amd64
  provide extra general functions for Octave

octave-geometry/xenial,xenial 2.1.0-1 all
  geometric computing functions for Octave

octave-gsl/xenial 1.0.8-7build1 amd64
  GSL binding for Octave

octave-htmldoc/xenial,xenial 4.0.2-1ubuntu5~octave~xenial1 all
  HTML documentation on the GNU Octave language

octave-image/xenial 2.4.1-1 amd64
  image manipulation for Octave

octave-info/xenial,xenial,now 4.0.2-1ubuntu5~octave~xenial1 all [installed,automatic]
  GNU Info documentation on the GNU Octave language

octave-interval/xenial 1.4.1-1 amd64
  real-valued interval arithmetic for Octave

octave-io/xenial 2.4.0-1 amd64
  input/output data functions for Octave

octave-lhapdf/xenial 5.9.1-4 amd64
  Octave Bindings for LHAPDF

octave-linear-algebra/xenial 2.2.2-1 amd64
  additional linear-algebra functions for Octave

octave-ltfat/xenial 2.1.1+dfsg-2 amd64
  Large Time/Frequency Analysis Toolbox

octave-ltfat-common/xenial,xenial 2.1.1+dfsg-2 all
  Large Time/Frequency Analysis Toolbox (arch-indep files)

octave-miscellaneous/xenial 1.2.1-2build2 amd64
  miscellaneous tools for Octave

octave-missing-functions/xenial,xenial 1.0.2-5 all
  finds functions that are in Matlab but not in Octave

octave-mpi/xenial 1.2.0-2build1 amd64
  Octave toolbox for parallel computing using MPI

octave-msh/xenial 1.0.10-1build1 amd64
  create and manage meshes for FE or FV solvers in Octave

octave-nan/xenial,now 2.8.1-1ubuntu2 amd64 [installed]
  handles data with and without missing values in Octave

octave-nlopt/xenial 2.4.2+dfsg-2 amd64
  nonlinear optimization library -- GNU Octave package

octave-nurbs/xenial 1.3.10-1 amd64
  non-uniform rational B-splines for Octave

octave-ocs/xenial 0.1.5-1 amd64
  circuit simulator for Octave

octave-octcdf/xenial 1.1.8-1build2 amd64
  NetCDF data files interface for Octave

octave-odepkg/xenial 0.8.5-1 amd64
  solve differential equations and initial value problems in Octave

octave-optim/xenial 1.4.1-2 amd64
  unconstrained non-linear optimization toolkit for Octave

octave-optiminterp/xenial 0.3.4-2 amd64
  optimal interpolation package for Octave

octave-parallel/xenial 3.0.3-1 amd64
  parallel execution of Octave in clusters of computers

octave-pfstools/xenial 2.0.4-5build1 amd64
  octave bindings for pfstools

octave-pkg-dev/xenial,xenial 1.3.3 all
  infrastructure to build Octave packages

octave-psychtoolbox-3/xenial 3.0.12.20160126.dfsg1-1ubuntu1 amd64
  toolbox for vision research -- Octave bindings

octave-quaternion/xenial 2.4.0-1 amd64
  quaternion package for Octave

octave-secs1d/xenial,xenial 0.0.9-3 all
  semi conductor simulator in 1D for Octave

octave-secs2d/xenial 0.0.8-6 amd64
  semi conductor simulator in 2D for Octave

octave-signal/xenial 1.3.2-1 amd64
  signal processing functions for Octave

octave-sockets/xenial 1.2.0-1 amd64
  communication through Internet sockets in Octave

octave-specfun/xenial,xenial 1.1.0-2 all
  special mathematical functions for Octave

octave-splines/xenial,xenial 1.2.9-1 all
  cubic spline functions for Octave

octave-statistics/xenial,xenial 1.2.4-1 all
  additional statistical functions for Octave

octave-stk/xenial 2.3.3-1 amd64
  (not so) Small Toolbox for Kriging

octave-strings/xenial 1.2.0-1 amd64
  additional string manipulation functions for Octave

octave-struct/xenial 1.0.11-1 amd64
  additional structure manipulation functions for Octave

octave-sundials/xenial 2.5.0-3ubuntu3 amd64
  SUNDIALS  for octave

octave-symbolic/xenial 2.2.4-1 amd64
  symbolic package for Octave

octave-tsa/xenial 4.3.3-1 amd64
  time series analysis in Octave

octave-vlfeat/xenial 0.9.20+dfsg0-1 amd64
  Computer vision library focussing on visual features and clustering

octave-vrml/xenial,xenial 1.0.13-2 all
  VRML functions for Octave

octave-zenity/xenial,xenial 0.5.7-6 all
  simple graphical user interfaces using zenity in Octave

```
## install a octave package
```bash
$ sudo apt install octave-nan
```
