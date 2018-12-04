(in-package #:rib-examples)

(defun sphere (rib-file-name tif-file-name)
  (rib:begin rib-file-name)
  (rib:format 1200 1200 1.0)
  (rib:frame-begin 0)
  (rib:world-begin )
  (rib:display  tif-file-name "file" "rgba")
  (rib:sphere 1.0 -1.0 1.0 360.0)
  (rib:world-end)
  (rib:frame-end)
  (rib:end))