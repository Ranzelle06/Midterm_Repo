library (argparse)
library(imager)
library (stringr)


parser <- ArgumentParser()
parser$add_argument("-directory",required="TRUE" ,help = "Local File Directory of images to augment")
parser$add_argument("-resize",dest="HxW",help = "To resize an image :Default = 0")
parser$add_argument("-gray" ,default=FALSE,help = "To grayscale an image")
parser$add_argument("-angle",default=0,type="integer", help = "To change the angle of the image")


cat(parser$print_help(), "\n")

args <- parser$parse_args()


num <- args$HxW
HxW <- str_split(num, "x", simplify = TRUE)
Hght <- as.numeric(HxW[1])
Wdth <- as.numeric(HxW[2])
Hght[is.na(Hght)] <- 0
Wdth[is.na(Wdth)] <- 0

getimage<- function(z){
  y <- list.files(path=z,pattern = "\\.jpg$", ignore.case=TRUE, recursive = TRUE,full.names = TRUE) 
  lapply(y, load.image)
} 

cat("Working dir/images: ", args$directory, "\n")
cat("Height: ", Hght, "\n")
cat("Width: ", Wdth, "\n")
cat("Grayscale: ", args$gray, "\n")
cat("Angle: ", args$angle, "\n")


dir.create(file.path("AugmentedImages"), showWarnings = FALSE)


augmented <- function(Image,H,W,Gray,angle){
  if(Gray==TRUE){
    img <- getimage(Image)
    num <- 1:length(img)
    gray <- lapply(img,grayscale)
    for (i in num){
      save.image(im = gray[[i]],file=paste0("AugmentedImages/GrayscaledImage_",i,".jpg"))
    }
  }
  if(H&&W > 1){
    img <- getimage(Image)
    num <- 1:length(img)
    imgresze <- lapply(img,resize,size_x = H, size_y = W)
    for (i in num){
      save.image(im = imgresze[[i]],file=paste0("AugmentedImages/ResizedImage_",i,".jpg"))
    }
  }
  if(angle>1){
    img <- getimage(Image)
    num <- 1:length(img)
    invimg <- lapply(img,imrotate,angle = angle)
    for (i in num){
      save.image(im = invimg[[i]],file=paste0("AugmentedImages/InvertedImage_",i,".jpg"))
    }
  }
}
print(augmented(args$directory,Hght,Wdth,args$gray,args$angle))



