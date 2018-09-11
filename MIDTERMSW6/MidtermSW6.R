library (argparse)
library (imager)
library(reticulate)



parser <- ArgumentParser()
parser$add_argument("-Image", help = "Local File Directory of image to augment")
parser$add_argument("-H",type="integer", help = "Height")
parser$add_argument("-W",type="integer", help = "Width")
parser$add_argument("-Gray" ,type="logical",help = "To grayscale an image")
parser$add_argument("-angle",type="integer", help = "To change the angle of the image")

parser$print_help()    
args <- parser$parse_args()  


print (args$Image)
print (args$H)
print (args$W)
print (args$Gray)
print (args$angle)

augmented <- function(Image,H,W,Gray,angle){
  if(Gray==TRUE){
    img <- load.image(Image)
    gray <- grayscale(img)
    gray1 <- save.image(im=gray,file=paste0("image.R/GRAY_IMAGE.jpg"))
  } 
  if(H&&W > 1){
    img <- load.image(Image)
    imgrsze <- resize(img, size_x = H, size_y = W)
    save.image(im = imgrsze,file=paste0("image.R/RESIZED_IMAGE.jpg"))
  }
  if(angle>1){
    img <- load.image(Image)
    invimg <- imrotate(im=img,angle)
    invimg1 <- save.image(im=invimg,file=paste0("image.R/INVERTED_IMAGE.jpg"))
  }
}
#output 
print(augmented(args$Image,args$H,args$W,args$Gray,args$angle))
