;;;; rib.lisp 
;;
;; Copyright (c) 2018 Jeremiah LaRocco <jeremiah_larocco@fastmail.com>


;; Permission to use, copy, modify, and/or distribute this software for any
;; purpose with or without fee is hereby granted, provided that the above
;; copyright notice and this permission notice appear in all copies.

;; THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
;; WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
;; MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
;; ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
;; WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
;; ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
;; OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.

(in-package :rib)


(cffi:defcfun ("RiBegin" begin) :void
  (name :string))

(cffi:defcfun ("RiEnd" end) :void)

(cffi:defcfun ("RiGetContext" get-context) :pointer)

(cffi:defcfun ("RiContext" context) :void
  (handle :pointer))

(cffi:defcfun ("RiFrameBegin" frame-begin) :void
  (frame :int))

(cffi:defcfun ("RiFrameEnd" frame-end) :void)


(cffi:defcfun "RiMotionEnd" :void)

(cffi:defcfun "RiSolidBegin" :void
  (operation :string))

(cffi:defcfun "RiSolidEnd" :void)

(cffi:defcfun "RiWorldBegin" :void)

(cffi:defcfun "RiWorldEnd" :void)

(cffi:defcfun "RiObjectBegin" :pointer
  (object :int))
(cffi:defcfun "RiObjectEnd" :void)

(cffi:defcfun "RiObjectInstance" :void
  (handle :int))



(cffi:defcfun "RiResourceBegin" :void)

(cffi:defcfun "RiResourceEnd" :void)

(cffi:defcfun "RiFormat" :void
  (xres :int)
  (yres :int)
  (aspect :float))

(cffi:defcfun "RiFrameAspectRatio" :void
  (aspect :float))

(cffi:defcfun "RiScreenWindow" :void
  (left :float)
  (right :float)
  (bottom :float)
  (top :float))

(cffi:defcfun "RiClipping" :void
  (hither :float)
  (yon :float))

(cffi:defcfun "RiClippingPlane" :void
  (x :float)
  (y :float)
  (z :float)
  (nx :float)
  (ny :float)
  (nz :float))

(cffi:defcfun "RiCropWindow" :void
  (xmin :float)
  (xmax :float)
  (ymin :float)
  (ymax :float))

(cffi:defcfun "RiDepthOfField" :void
  (fstop :float)
  (focallength :float)
  (focaldistance :float))




(cffi:defcfun "RiProjectionV" :void
  (name :string)
  (n :int)
  (tokens :pointer)
  (parms :pointer))

(cffi:defcfun "RiShutter" :void
  (min :float)
  (max :float))




(cffi:defcfun "RiCameraV" :void
  (camera :string)
  (n :int)
  (tokens :pointer)
  (parms :pointer))





(cffi:defcfun "RiDisplayV" :void
  (name :string)
  (type :string)
  (mode :string)
  (n :int)
  (tokens :pointer)
  (parms :pointer))





(cffi:defcfun "RiDisplayChannelV" :void
  (channel :string)
  (n :int)
  (tokens :pointer)
  (params :pointer))

(cffi:defcfun "RiExposure" :void
  (gain :float)
  (gamma :float))




(cffi:defcfun "RiImagerV" :void
  (name :string)
  (n :int)
  (tokens :pointer)
  (parms :pointer))

(cffi:defcfun "RiPixelFilter" :void
  (filterfunc :pointer)
  (xwidth :float)
  (ywidth :float))

(cffi:defcfun "RiPixelSamples" :void
  (xsamples :float)
  (ysamples :float))

(cffi:defcfun "RiPixelVariance" :void
  (variation :float))

(cffi:defcfun "RiQuantize" :void
  (type :string)
  (one :int)
  (min :int)
  (max :int)
  (ampl :float))

(cffi:defcfun "RiConcatTransform" :void
  (transform :pointer))

(cffi:defcfun "RiCoordinateSystem" :void
  (space :string))

(cffi:defcfun "RiScopedCoordinateSystem" :void
  (space :string))

(cffi:defcfun "RiCoordSysTransform" :void
  (space :string))

(cffi:defcfun "RiIdentity" :void)

(cffi:defcfun "RiPerspective" :void
  (fov :float))

(cffi:defcfun "RiRotate" :void
  (angle :float)
  (dx :float)
  (dy :float)
  (dz :float))

(cffi:defcfun "RiScale" :void
  (dx :float)
  (dy :float)
  (dz :float))

(cffi:defcfun "RiSkew" :void
  (angle :float)
  (dx1 :float)
  (dy1 :float)
  (dz1 :float)
  (dx2 :float)
  (dy2 :float)
  (dz2 :float))

(cffi:defcfun "RiTransform" :void
  (transform :pointer))

(cffi:defcfun "RiTransformBegin" :void)

(cffi:defcfun "RiTransformEnd" :void)

(cffi:defcfun "RiTranslate" :void
  (dx :float)
  (dy :float)
  (dz :float))

(cffi:defcfun "RiTransformPoints" :pointer
  (fromspace :string)
  (tospace :string)
  (n :int)
  (points :pointer))




(cffi:defcfun "RiAtmosphereV" :void
  (name :string)
  (n :int)
  (tokens :pointer)
  (parms :pointer))




(cffi:defcfun "RiDeformationV" :void
  (name :string)
  (n :int)
  (tokens :pointer)
  (parms :pointer))




(cffi:defcfun "RiDisplacementV" :void
  (name :string)
  (n :int)
  (tokens :pointer)
  (parms :pointer))

(null-wrapped "RiExterior" :void
  (name :string)
  &rest)


(cffi:defcfun "RiExteriorV" :void
  (name :string)
  (n :int)
  (tokens :pointer)
  (parms :pointer))

(cffi:defcfun "RiIlluminate" :void
  (light :pointer)
  (onoff :short))

(null-wrapped "RiInterior" :void
  (name :string)
  &rest)


(cffi:defcfun "RiInteriorV" :void
  (name :string)
  (n :int)
  (tokens :pointer)
  (parms :pointer))




(cffi:defcfun "RiShaderV" :void
  (name :string)
  (handle :string)
  (n :int)
  (tokens :pointer)
  (parms :pointer))

(cffi:defcfun "RiMatte" :void
  (onoff :short))

(cffi:defcfun "RiMultiplyShadingRate" :void
  (ratemultiplier :float))

(cffi:defcfun "RiShadingRate" :void
  (size :float))

(cffi:defcfun "RiShadingInterpolation" :void
  (type :string))




(cffi:defcfun "RiSurfaceV" :void
  (name :string)
  (n :int)
  (tokens :pointer)
  (parms :pointer))




(cffi:defcfun "RiReadArchiveV" :void
  (name :string)
  (callback :pointer)
  (n :int)
  (tokens :pointer)
  (parms :pointer))

(null-wrapped "RiArchiveBegin" :pointer
  (archivename :string)
  &rest)


(cffi:defcfun "RiArchiveBeginV" :pointer
  (archivename :string)
  (n :int)
  (tokens :pointer)
  (params :pointer))

(cffi:defcfun "RiArchiveEnd" :void)




(cffi:defcfun "RiIfBeginV" :void
  (expression :string)
  (n :int)
  (tokens :pointer)
  (params :pointer))




(cffi:defcfun "RiElseIfV" :void
  (expression :string)
  (n :int)
  (tokens :pointer)
  (params :pointer))

(cffi:defcfun "RiElse" :void)

(cffi:defcfun "RiIfEnd" :void)




(cffi:defcfun "RiAttributeV" :void
  (name :string)
  (n :int)
  (tokens :pointer)
  (parms :pointer))

(cffi:defcfun "RiAttributeBegin" :void)

(cffi:defcfun "RiAttributeEnd" :void)

(cffi:defcfun "RiBound" :void
  (bound :pointer))

(cffi:defcfun "RiColor" :void
  (color :pointer))

(cffi:defcfun "RiOpacity" :void
  (color :pointer))




(cffi:defcfun "RiOptionV" :void
  (name :string)
  (n :int)
  (tokens :pointer)
  (parms :pointer))

(cffi:defcfun "RiReverseOrientation" :void)

(cffi:defcfun "RiTextureCoordinates" :void
  (s1 :float)
  (t1 :float)
  (s2 :float)
  (t2 :float)
  (s3 :float)
  (t3 :float)
  (s4 :float)
  (t4 :float))

(cffi:defcfun "RiSides" :void
  (sides :int))

(cffi:defcfun "RiDeclare" :string
  (name :string)
  (declaration :string))




(cffi:defcfun "RiLightSourceV" :pointer
  (name :string)
  (n :int)
  (tokens :pointer)
  (parms :pointer))




(cffi:defcfun "RiAreaLightSourceV" :pointer
  (name :string)
  (n :int)
  (tokens :pointer)
  (parms :pointer))

(cffi:defcfun "RiBasis" :void
  (ubasis :pointer)
  (ustep :int)
  (vbasis :pointer)
  (vstep :int))




(cffi:defcfun "RiPatchV" :void
  (type :string)
  (n :int)
  (tokens :pointer)
  (parms :pointer))

(cffi:defcfun "RiPatchMeshV" :void
  (type :string)
  (nu :int)
  (uwrap :string)
  (nv :int)
  (vwrap :string)
  (n :int)
  (tokens :pointer)
  (parms :pointer))




(cffi:defcfun "RiPointsV" :void
  (npoints :int)
  (n :int)
  (tokens :pointer)
  (parms :pointer))




(cffi:defcfun "RiCurvesV" :void
  (type :string)
  (ncurves :int)
  (nvertices :pointer)
  (wrap :string)
  (n :int)
  (tokens :pointer)
  (parms :pointer))




(cffi:defcfun "RiNuCurvesV" :void
  (ncurves :int)
  (nvertices :pointer)
  (order :pointer)
  (knot :pointer)
  (min :pointer)
  (max :pointer)
  (n :int)
  (tokens :pointer)
  (params :pointer))




(cffi:defcfun "RiNuPatchV" :void
  (nu :int)
  (uorder :int)
  (uknot :pointer)
  (umin :float)
  (umax :float)
  (nv :int)
  (vorder :int)
  (vknot :pointer)
  (vmin :float)
  (vmax :float)
  (n :int)
  (tokens :pointer)
  (parms :pointer))

(cffi:defcfun "RiTrimCurve" :void
  (nloops :int)
  (ncurves :pointer)
  (order :pointer)
  (knot :pointer)
  (min :pointer)
  (max :pointer)
  (n :pointer)
  (u :pointer)
  (v :pointer)
  (w :pointer))




(cffi:defcfun "RiSubdivisionMeshV" :void
  (scheme :string)
  (nfaces :int)
  (nvertices :pointer)
  (vertices :pointer)
  (ntags :int)
  (tags :pointer)
  (nargs :pointer)
  (intargs :pointer)
  (floatargs :pointer)
  (n :int)
  (tokens :pointer)
  (parms :pointer))




(cffi:defcfun "RiHierarchicalSubdivisionMeshV" :void
  (scheme :string)
  (nfaces :int)
  (nvertices :pointer)
  (vertices :pointer)
  (ntags :int)
  (tags :pointer)
  (nargs :pointer)
  (intargs :pointer)
  (floatargs :pointer)
  (stringargs :pointer)
  (n :int)
  (tokens :pointer)
  (params :pointer))




(cffi:defcfun "RiConeV" :void
  (height :float)
  (radius :float)
  (thetamax :float)
  (n :int)
  (tokens :pointer)
  (parms :pointer))




(cffi:defcfun "RiCylinderV" :void
  (radius :float)
  (zmin :float)
  (zmax :float)
  (thetamax :float)
  (n :int)
  (tokens :pointer)
  (parms :pointer))




(cffi:defcfun "RiDiskV" :void
  (height :float)
  (radius :float)
  (thetamax :float)
  (n :int)
  (tokens :pointer)
  (parms :pointer))




(cffi:defcfun "RiHyperboloidV" :void
  (point1 :pointer)
  (point2 :pointer)
  (thetamax :float)
  (n :int)
  (tokens :pointer)
  (parms :pointer))






(cffi:defcfun "RiSphereV" :void
  (radius :float)
  (zmin :float)
  (zmax :float)
  (thetamax :float)
  (n :int)
  (tokens :pointer)
  (parms :pointer))




(cffi:defcfun "RiTorusV" :void
  (majorradius :float)
  (minorradius :float)
  (phimin :float)
  (phimax :float)
  (thetamax :float)
  (n :int)
  (tokens :pointer)
  (parms :pointer))




(cffi:defcfun "RiGeneralPolygonV" :void
  (nloops :int)
  (nvertices :pointer)
  (n :int)
  (tokens :pointer)
  (parms :pointer))




(cffi:defcfun "RiBlobbyV" :void
  (nleaf :int)
  (nentry :int)
  (entry :pointer)
  (nfloat :int)
  (floats :pointer)
  (nstring :int)
  (strings :pointer)
  (n :int)
  (tokens :pointer)
  (parms :pointer))




(cffi:defcfun "RiPointsGeneralPolygonsV" :void
  (npolys :int)
  (nloops :pointer)
  (nvertices :pointer)
  (vertices :pointer)
  (n :int)
  (tokens :pointer)
  (parms :pointer))




(cffi:defcfun "RiPointsPolygonsV" :void
  (npolys :int)
  (nvertices :pointer)
  (vertices :pointer)
  (n :int)
  (tokens :pointer)
  (parms :pointer))




(cffi:defcfun "RiPolygonV" :void
  (nvertices :int)
  (n :int)
  (tokens :pointer)
  (parms :pointer))

(cffi:defcfun "RiColorSamples" :void
  (n :int)
  (nRGB :pointer)
  (RGBn :pointer))




(cffi:defcfun "RiHiderV" :void
  (type :string)
  (n :int)
  (tokens :pointer)
  (parms :pointer))

(cffi:defcfun "RiDetail" :void
  (bound :pointer))

(cffi:defcfun "RiDetailRange" :void
  (minvisible :float)
  (lowertransition :float)
  (uppertransition :float)
  (maxvisible :float))

(cffi:defcfun "RiGeometricApproximation" :void
  (type :string)
  (value :float))




(cffi:defcfun "RiGeometryV" :void
  (type :string)
  (n :int)
  (tokens :pointer)
  (parms :pointer))

(cffi:defcfun "RiOrientation" :void
  (orientation :string))

(cffi:defcfun "RiProcedural" :void
  (i_data :pointer)
  (i_bound :pointer)
  (i_Subdivfunc :pointer)
  (i_Freefunc :pointer))

(cffi:defcfun "RiProceduralV" :void
  (i_data :pointer)
  (i_bound :pointer)
  (i_Subdivfunc :pointer)
  (i_Freefunc :pointer)
  (n :int)
  (tokens :pointer)
  (params :pointer))

(cffi:defcfun "RiRelativeDetail" :void
  (relativedetail :float))

(cffi:defcfun "RiProcDelayedReadArchive" :void
  (data :pointer)
  (detail :float))

(cffi:defcfun "RiProcDynamicLoad" :void
  (data :pointer)
  (detail :float))

(cffi:defcfun "RiProcRunProgram" :void
  (data :pointer)
  (detail :float))

(cffi:defcfun "RiProcFree" :void
  (data :pointer))




(cffi:defcfun "RiMakeBumpV" :void
  (picturename :string)
  (texturename :string)
  (swrap :string)
  (twrap :string)
  (filterfunc :pointer)
  (swidth :float)
  (twidth :float)
  (n :int)
  (tokens :pointer)
  (parms :pointer))




(cffi:defcfun "RiMakeCubeFaceEnvironmentV" :void
  (px :string)
  (nx :string)
  (py :string)
  (ny :string)
  (pz :string)
  (nz :string)
  (texturename :string)
  (fov :float)
  (filterfunc :pointer)
  (swidth :float)
  (twidth :float)
  (n :int)
  (tokens :pointer)
  (parms :pointer))




(cffi:defcfun "RiMakeLatLongEnvironmentV" :void
  (picturename :string)
  (texturename :string)
  (filterfunc :pointer)
  (swidth :float)
  (twidth :float)
  (n :int)
  (tokens :pointer)
  (parms :pointer))




(cffi:defcfun "RiMakeShadowV" :void
  (picturename :string)
  (texturename :string)
  (n :int)
  (tokens :pointer)
  (parms :pointer))




(cffi:defcfun "RiMakeTextureV" :void
  (picturename :string)
  (texturename :string)
  (swrap :string)
  (twrap :string)
  (filterfunc :pointer)
  (swidth :float)
  (twidth :float)
  (n :int)
  (tokens :pointer)
  (parms :pointer))




(cffi:defcfun "RiMakeBrickMapV" :void
  (nptc :int)
  (ptcnames :pointer)
  (bkmname :string)
  (n :int)
  (tokens :pointer)
  (params :pointer))

(cffi:defcfun "RiBoxFilter" :float
  (x :float)
  (y :float)
  (xwidth :float)
  (ywidth :float))

(cffi:defcfun "RiTriangleFilter" :float
  (x :float)
  (y :float)
  (xwidth :float)
  (ywidth :float))

(cffi:defcfun "RiCatmullRomFilter" :float
  (x :float)
  (y :float)
  (xwidth :float)
  (ywidth :float))

(cffi:defcfun "RiSeparableCatmullRomFilter" :float
  (x :float)
  (y :float)
  (xwidth :float)
  (ywidth :float))

(cffi:defcfun "RiBesselFilter" :float
  (x :float)
  (y :float)
  (xwidth :float)
  (ywidth :float))

(cffi:defcfun "RiGaussianFilter" :float
  (x :float)
  (y :float)
  (xwidth :float)
  (ywidth :float))

(cffi:defcfun "RiSincFilter" :float
  (x :float)
  (y :float)
  (xwidth :float)
  (ywidth :float))

(cffi:defcfun "RiBlackmanHarrisFilter" :float
  (i_x :float)
  (i_y :float)
  (i_filterXWidth :float)
  (i_filteryWidth :float))

(cffi:defcfun "RiMitchellFilter" :float
  (i_x :float)
  (i_y :float)
  (i_filterXWidth :float)
  (i_filteryWidth :float))

(cffi:defcfun "RiDiskFilter" :float
  (i_x :float)
  (i_y :float)
  (i_filterXWidth :float)
  (i_filteryWidth :float))

(cffi:defcfun "RiErrorHandler" :void
  (handler :pointer))

(cffi:defcfun "RiErrorIgnore" :void
  (code :int)
  (severity :int)
  (msg :string))

(cffi:defcfun "RiErrorPrint" :void
  (code :int)
  (severity :int)
  (msg :string))

(cffi:defcfun "RiErrorAbort" :void
  (code :int)
  (severity :int)
  (msg :string))

(cffi:defcfun "RiSynchronize" :void
  (arg0 :string))



(cffi:defcfun "RiEditBeginV" :void
  (name :string)
  (n :int)
  (tokens :pointer)
  (params :pointer))

(cffi:defcfun "RiEditEnd" :void)



(cffi:defcfun "RiEditWorldBeginV" :void
  (name :string)
  (n :int)
  (tokens :pointer)
  (params :pointer))

(cffi:defcfun "RiEditWorldEnd" :void)


(null-wrapped "RiProjection" :void
  (name :string)
  &rest)

(null-wrapped "RiResource" :void
  (handle :string)
  (type :string)
  &rest)

(null-wrapped "RiMotionBegin" :void
              (n :int)
              &rest)
(null-wrapped "RiCamera" :void
  (camera :string)
  &rest)
(null-wrapped "RiDisplay" :void
  (name :string)
  (type :string)
  (mode :string)
  &rest)(null-wrapped "RiDisplayChannel" :void
  (channel :string)
  &rest)
(null-wrapped "RiImager" :void
  (name :string)
  &rest)
(null-wrapped "RiAtmosphere" :void
  (name :string)
  &rest)
(null-wrapped "RiDeformation" :void
  (name :string)
  &rest)
(null-wrapped "RiDisplacement" :void
  (name :string)
  &rest)
(null-wrapped "RiShader" :void
  (name :string)
  (handle :string)
  &rest)
(null-wrapped "RiSurface" :void
  (name :string)
  &rest)
(null-wrapped "RiArchiveRecord" :void
  (type :string)
  (format :string)
  &rest)


(null-wrapped "RiReadArchive" :void
  (name :string)
  (callback :pointer)
  &rest)
(null-wrapped "RiIfBegin" :void
  (expression :string)
  &rest)
(null-wrapped "RiElseIf" :void
  (expression :string)
  &rest)
(null-wrapped "RiAttribute" :void
  (name :string)
  &rest)
(null-wrapped "RiOption" :void
  (name :string)
  &rest)
(null-wrapped "RiLightSource" :pointer
  (name :string)
  &rest)
(null-wrapped "RiAreaLightSource" :pointer
  (name :string)
  &rest)
(null-wrapped "RiPatch" :void
  (type :string)
  &rest)


(null-wrapped "RiPatchMesh" :void
  (type :string)
  (nu :int)
  (uwrap :string)
  (nv :int)
  (vwrap :string)
  &rest)
(null-wrapped "RiPoints" :void
  (npoints :int)
  &rest)
(null-wrapped "RiCurves" :void
  (type :string)
  (ncurves :int)
  (nvertices :pointer)
  (wrap :string)
  &rest)
(null-wrapped "RiNuCurves" :void
  (ncurves :int)
  (nvertices :pointer)
  (order :pointer)
  (knot :pointer)
  (min :pointer)
  (max :pointer)
  &rest)
(null-wrapped "RiNuPatch" :void
  (nu :int)
  (uorder :int)
  (uknot :pointer)
  (umin :float)
  (umax :float)
  (nv :int)
  (vorder :int)
  (vknot :pointer)
  (vmin :float)
  (vmax :float)
  &rest)
(null-wrapped "RiSubdivisionMesh" :void
  (scheme :string)
  (nfaces :int)
  (nvertices :pointer)
  (vertices :pointer)
  (ntags :int)
  (tags :pointer)
  (nargs :pointer)
  (intargs :pointer)
  (floatargs :pointer)
  &rest)
(null-wrapped "RiHierarchicalSubdivisionMesh" :void
  (scheme :string)
  (nfaces :int)
  (nvertices :pointer)
  (vertices :pointer)
  (ntags :int)
  (tags :pointer)
  (nargs :pointer)
  (intargs :pointer)
  (floatargs :pointer)
  (stringargs :pointer)
  &rest)
(null-wrapped "RiCone" :void
  (height :float)
  (radius :float)
  (thetamax :float)
  &rest)
(null-wrapped "RiCylinder" :void
  (radius :float)
  (zmin :float)
  (zmax :float)
  (thetamax :float)
  &rest)
(null-wrapped "RiDisk" :void
  (height :float)
  (radius :float)
  (thetamax :float)
  &rest)
(null-wrapped "RiHyperboloid" :void
  (point1 :pointer)
  (point2 :pointer)
  (thetamax :float)
  &rest)
(null-wrapped "RiParaboloid" :void
  (rmax :float)
  (zmin :float)
  (zmax :float)
  (thetamax :float)
  &rest)
(null-wrapped "RiParaboloidV" :void
  (rmax :float)
  (zmin :float)
  (zmax :float)
  (thetamax :float)
  (n :int)
  (tokens :pointer)
  (parms :pointer))

(null-wrapped "RiSphere" :void
  (radius :float)
  (zmin :float)
  (zmax :float)
  (thetamax :float))
(null-wrapped "RiTorus" :void
  (majorradius :float)
  (minorradius :float)
  (phimin :float)
  (phimax :float)
  (thetamax :float)
  &rest)
(null-wrapped "RiGeneralPolygon" :void
  (nloops :int)
  (nvertices :pointer)
  &rest)
(null-wrapped "RiBlobby" :void
  (nleaf :int)
  (nentry :int)
  (entry :pointer)
  (nfloat :int)
  (floats :pointer)
  (nstring :int)
  (strings :pointer)
  &rest)
(null-wrapped "RiPointsGeneralPolygons" :void
  (npolys :int)
  (nloops :pointer)
  (nvertices :pointer)
  (vertices :pointer)
  &rest)
(null-wrapped "RiPointsPolygons" :void
  (npolys :int)
  (nvertices :pointer)
  (vertices :pointer)
  &rest)
(null-wrapped "RiPolygon" :void
  (nvertices :int)
  &rest)
(null-wrapped "RiHider" :void
  (type :string)
  &rest)
(null-wrapped "RiGeometry" :void
  (type :string)
  &rest)
(null-wrapped "RiMakeBump" :void
  (picturename :string)
  (texturename :string)
  (swrap :string)
  (twrap :string)
  (filterfunc :pointer)
  (swidth :float)
  (twidth :float)
  &rest)
(null-wrapped "RiMakeCubeFaceEnvironment" :void
  (px :string)
  (nx :string)
  (py :string)
  (ny :string)
  (pz :string)
  (nz :string)
  (texturename :string)
  (fov :float)
  (filterfunc :pointer)
  (swidth :float)
  (twidth :float)
  &rest)
(null-wrapped "RiMakeLatLongEnvironment" :void
  (picturename :string)
  (texturename :string)
  (filterfunc :pointer)
  (swidth :float)
  (twidth :float)
  &rest)
(null-wrapped "RiMakeShadow" :void
  (picturename :string)
  (texturename :string)
  &rest)
(null-wrapped "RiMakeTexture" :void
  (picturename :string)
  (texturename :string)
  (swrap :string)
  (twrap :string)
  (filterfunc :pointer)
  (swidth :float)
  (twidth :float)
  &rest)
(null-wrapped "RiMakeBrickMap" :void
  (nptc :int)
  (ptcnames :pointer)
  (bkmname :string)
  &rest)
(null-wrapped "RiEditBegin" :void
  (name :string)
  &rest)
(null-wrapped "RiEditWorldBegin" :void
  (name :string)
  &rest)

(cffi:define-foreign-library lib3delight
    (t (:default "lib3delight"))) ;; note no .so suffix here
(cffi:use-foreign-library lib3delight)
