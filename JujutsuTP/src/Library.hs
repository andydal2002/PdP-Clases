module Library where
import PdePreludat

doble :: Number -> Number
doble numero = numero + numero

data Hechicero = Hechicero {
    grado::Number,
    antiguedad::Number,
    clan::String} deriving (Show, Eq)

nobara = Hechicero 3 1 "Kugisaki"
satoru = Hechicero 0 15 "Gojo"
maki = Hechicero 4 3 "Zenin"
yuji = Hechicero 1 0 "Itadori"

tieneExperiencia :: Hechicero -> Bool
tieneExperiencia hechicero = antiguedad hechicero > 1

estaPreparado :: [Hechicero] -> Bool
estaPreparado equipo = length equipo > 


subirGrado hechicero 
    |grado hechicero == 0 = 
