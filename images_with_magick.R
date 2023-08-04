
# Criando imagens com magick ---------------------------------------------------------------------------------------------------------------

## Baixar pacote

library(magick)

## Visualizando a imagem selecionada

ave <- image_read("https://s3.amazonaws.com/media.wikiaves.com.br/images/511/115749r_bd57b1f4129a186b1f092598155ff0d6.jpg")

print(ave)

## Aumentando o tamanho

image_scale(ave, "400")

## Adicionando filtros e efeitos

image_blur(ave, 10, 5)

image_charcoal(ave)

image_oilpaint(ave)

image_negate(ave)

image_flatten(ave, 'Add')

image_flatten(ave, 'Modulate')

## Adicionando texto

image_annotate(ave, "Augastes lumachella \n Beija-flor-de-gravata-vermelha",
               size = 20,
               gravity = "southwest",
               color = "black")

## Adicionando camadas

ave1 <- image_read('https://img.quizur.com/f/img60ef43d755c403.83486189.jpg?lastEdited=1626293220')
ave2 <- image_read('https://s3.amazonaws.com/media.wikiaves.com.br/images/7603/3067512_2fde4f403581aec9116a4149ac9a57be.jpg')

img <- c(ave1, ave2)
img <- image_scale(img, "200x200")

image_info(img)

image_mosaic(img)

image_flatten(img)

image_append(image_scale(img, "100"), stack = TRUE)

## Animation

img1 <- c(ave, ave1, ave2)

image_animate(image_scale(img1, "200x200"),
              fps = 1, dispose = "previous")

image_resize(c(ave, ave1, ave2), '200x150!') %>%
  image_background('white') %>%
  image_morph() %>%
  image_animate(optimize = TRUE)
