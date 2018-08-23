install.packages("imager")

library(imager)
image <-system.file('extdata/parrots.png', package='imager')
im <- load.image(image)
#im <- resize(im,100,40)
plot(im)

#plot(im,main="RESIZE")

install.packages("magick")
library(magick)
allan <-image_read('http://www.redotriandalucia.es/static/upload/10-escher.jpg')
print(allan)