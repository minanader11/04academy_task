import 'package:madrasa_task/core/utilities/imageHelper.dart';

import 'package:flutter/material.dart';


Widget imageHelper(image,width,height,imageType,boxFit,{isColor=false,color}) {
  return ImageHelper(
    image: image,
     width: width,
    height: height,
    color: isColor?color:null,
    boxFit: boxFit,
    imageType: imageType,
  );
}
