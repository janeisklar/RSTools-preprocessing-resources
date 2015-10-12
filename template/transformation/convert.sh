#!/bin/bash

# asym MNI 2 sym MNI
/usr/local/ants/bin/WarpImageMultiTransform 3 asym.nii sym.nii -R reference_image.nii tplWarp.nii.gz tplAffine.txt

# sym MNI 2 asmy MNI
/usr/local/ants/bin/WarpImageMultiTransform 3 sym.nii asym.nii -R reference_image.nii -i tplAffine.txt tplInverseWarp.nii.gz 
