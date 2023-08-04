
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
