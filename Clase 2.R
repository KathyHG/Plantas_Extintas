library(tidyverse)
library(knitr)
library(kableExtra)

plants <- readr::read_csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-08-18/plants.csv")
actions <- readr::read_csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-08-18/actions.csv")
threats <- readr::read_csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-08-18/threats.csv")



Crear un nuevo Rmarkdown


Partes de un Rmd
Texto
Cunks
Inline code
Cheat sheet Rmd
El botón mágico Knit


Texto
link

# Titulo

## subtitulo

*cursiva*
  
  **negrita**
  
  [link](https://stackoverflow.com/users/3808018/derek-corcoran)
Chunks
knitr::include_graphics("Chunk.png")


echo = T o F muestro o no codigo
message = T o F muestra mensajes de paquetes
warning = T o F muestra advertencias
eval = T o F evaluar o no el código
cache = T o F guarda o no el resultado
Para más opciones ver este link
Inline code
fig:
  Inline

Código entrelazado en el texto
Para actualizar medias, máximos, mínimos
Valores de p, diferencias estadísticas
Pueden ser vectores, no tablas.
Ejemplo
Pueden copiar el codigo de el siguiente link, copiarlo en un archivo rmd, apretar knit y debieran ver algo como esto:
  
  fig:
  Terremotos

Tablas
Tablas: Kable
kable parte de knitr, tabla igual a lo ingresado
KableExtra lo mejora
Ejemplo
data("msleep")
Tabla <- msleep %>% group_by(vore) %>% summarise_at("sleep_total", 
                                                    .funs = list(Mean = mean, SD = sd)) %>% arrange(desc(Mean))

kable(Tabla)
vore	Mean	SD
insecti	14.940000	5.920557
omni	10.925000	2.949019
carni	10.378947	4.669116
NA	10.185714	3.004124
herbi	9.509375	4.878747
Mejoremos un poco
kable(Tabla, digits = 2)
vore	Mean	SD
insecti	14.94	5.92
omni	10.93	2.95
carni	10.38	4.67
NA	10.19	3.00
herbi	9.51	4.88
KableExtra
kable(Tabla, digits = 2) %>% kable_styling(bootstrap_options = c("striped", 
                                                                 "hover", "condensed"))
vore	Mean	SD
insecti	14.94	5.92
omni	10.93	2.95
carni	10.38	4.67
NA	10.19	3.00
herbi	9.51	4.88
KableExtra (cont.)
kable(Tabla, digits = 2) %>% kable_styling(bootstrap_options = c("striped", 
                                                                 "hover", "condensed"), full_width = F)
vore	Mean	SD
insecti	14.94	5.92
omni	10.93	2.95
carni	10.38	4.67
NA	10.19	3.00
herbi	9.51	4.88
Tablas largas
msleep_long <- msleep %>% dplyr::select(name, vore, 
                                        sleep_total, brainwt)

kable(msleep_long, digits = 2, caption = "La base de datos entera") %>% 
  kable_styling(bootstrap_options = c("striped", 
                                      "hover", "condensed"), full_width = F) %>% 
  scroll_box(width = "800px", height = "200px")
La base de datos entera
name	vore	sleep_total	brainwt
Cheetah	carni	12.1	NA
Owl monkey	omni	17.0	0.02
Mountain beaver	herbi	14.4	NA
Greater short-tailed shrew	omni	14.9	0.00
Cow	herbi	4.0	0.42
Three-toed sloth	herbi	14.4	NA
Northern fur seal	carni	8.7	NA
Vesper mouse	NA	7.0	NA
Dog	carni	10.1	0.07
Roe deer	herbi	3.0	0.10
Goat	herbi	5.3	0.12
Guinea pig	herbi	9.4	0.01
Grivet	omni	10.0	NA
Chinchilla	herbi	12.5	0.01
Star-nosed mole	omni	10.3	0.00
African giant pouched rat	omni	8.3	0.01
Lesser short-tailed shrew	omni	9.1	0.00
Long-nosed armadillo	carni	17.4	0.01
Tree hyrax	herbi	5.3	0.01
North American Opossum	omni	18.0	0.01
Asian elephant	herbi	3.9	4.60
Big brown bat	insecti	19.7	0.00
Horse	herbi	2.9	0.66
Donkey	herbi	3.1	0.42
European hedgehog	omni	10.1	0.00
Patas monkey	omni	10.9	0.12
Western american chipmunk	herbi	14.9	NA
Domestic cat	carni	12.5	0.03
Galago	omni	9.8	0.00
Giraffe	herbi	1.9	NA
Pilot whale	carni	2.7	NA
Gray seal	carni	6.2	0.32
Gray hyrax	herbi	6.3	0.01
Human	omni	8.0	1.32
Mongoose lemur	herbi	9.5	NA
African elephant	herbi	3.3	5.71
Thick-tailed opposum	carni	19.4	NA
Macaque	omni	10.1	0.18
Mongolian gerbil	herbi	14.2	NA
Golden hamster	herbi	14.3	0.00
Vole	herbi	12.8	NA
House mouse	herbi	12.5	0.00
Little brown bat	insecti	19.9	0.00
Round-tailed muskrat	herbi	14.6	NA
Slow loris	carni	11.0	0.01
Degu	herbi	7.7	NA
Northern grasshopper mouse	carni	14.5	NA
Rabbit	herbi	8.4	0.01
Sheep	herbi	3.8	0.18
Chimpanzee	omni	9.7	0.44
Tiger	carni	15.8	NA
Jaguar	carni	10.4	0.16
Lion	carni	13.5	NA
Baboon	omni	9.4	0.18
Desert hedgehog	NA	10.3	0.00
Potto	omni	11.0	NA
Deer mouse	NA	11.5	NA
Phalanger	NA	13.7	0.01
Caspian seal	carni	3.5	NA
Common porpoise	carni	5.6	NA
Potoroo	herbi	11.1	NA
Giant armadillo	insecti	18.1	0.08
Rock hyrax	NA	5.4	0.02
Laboratory rat	herbi	13.0	0.00
African striped mouse	omni	8.7	NA
Squirrel monkey	omni	9.6	0.02
Eastern american mole	insecti	8.4	0.00
Cotton rat	herbi	11.3	0.00
Mole rat	NA	10.6	0.00
Arctic ground squirrel	herbi	16.6	0.01
Thirteen-lined ground squirrel	herbi	13.8	0.00
Golden-mantled ground squirrel	herbi	15.9	NA
Musk shrew	NA	12.8	0.00
Pig	omni	9.1	0.18
Short-nosed echidna	insecti	8.6	0.02
Eastern american chipmunk	herbi	15.8	NA
Brazilian tapir	herbi	4.4	0.17
Tenrec	omni	15.6	0.00
Tree shrew	omni	8.9	0.00
Bottle-nosed dolphin	carni	5.2	NA
Genet	carni	6.3	0.02
Arctic fox	carni	12.5	0.04
Red fox	carni	9.8	0.05
Armemos nuestras propias tablas!!!
  fig:
  Tabla

Estamos por hoy
Tarea
Hagan un Rmd con datos para el reporte de felicidad
Traten de aplicar todo lo que aprendimos hoy
Crear un github
generar un Rmd
Usar chunks e inline code
Hacer tablas resumen
World_20Happiness_20Report <- read_csv("https://raw.githubusercontent.com/PhilippeCodes/World-Happiness-Report-Data-Analysis/master/World%20Happiness%20Report.csv")
