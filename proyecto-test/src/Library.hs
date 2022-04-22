module Library where
import PdePreludat

doble :: Number -> Number
doble x = x*2

--TP 1
{-
data GrupoAsado = GrupoAsado {
    nombreEncargado::String,
    edadEncargado::Number,
    edadesAcompaniantes::[Number]
} deriving (Show, Eq)

cantidadIntegrantes :: GrupoAsado -> Number
cantidadIntegrantes parrilla = (length (edadesAcompaniantes parrilla)) + 1

edadPromedio::GrupoAsado -> Number
edadPromedio parrilla = ((sum (edadesAcompaniantes parrilla)) + (edadEncargado parrilla))/cantidadIntegrantes parrilla
{-
edadPromedioMayor::GrupoAsado -> GrupoAsado -> Number
edadPromedioMayor parrilla1 parrilla2 = max (edadPromedio parrilla1) (edadPromedio parrilla2)

encargadoDelGrupoMasViejo:: GrupoAsado -> GrupoAsado -> String
encargadoDelGrupoMasViejo parrilla1 parrilla2 
    | edadPromedioMayor parrilla1 parrilla2 == edadPromedio parrilla1 = nombreEncargado parrilla1
    | otherwise = nombreEncargado parrilla2
-}

encargadoDelGrupoMasViejo:: GrupoAsado -> GrupoAsado -> String
encargadoDelGrupoMasViejo parrilla1 parrilla2 
    | edadPromedio parrilla1 > edadPromedio parrilla2 = nombreEncargado parrilla1
    | otherwise = nombreEncargado parrilla2

parrilla1 = GrupoAsado {
    nombreEncargado = "Juan",
    edadEncargado = 29,
    edadesAcompaniantes = [19,24,45]
}
parrilla2 = GrupoAsado {
    nombreEncargado = "Jorge",
    edadEncargado = 32,
    edadesAcompaniantes = [60, 80, 76]
}
-}

-- MAP
{-
data Persona = Persona {
    nombre::String,
    edad::Number} deriving Show

listaPersonas = [pedro, carlos, juan]
pedro = Persona "pedro" 30
carlos = Persona "charly" 20
juan = Persona "john" 40

promedioEdades :: [Persona] -> Number
promedioEdades personas = promedio (map edad personas)
promedio lista = sum lista / length lista

--map :: (a -> b) -> [a] -> [b]

-- Filter: dada una lista, devuelve otra lista solamente con los elementos que aprueban una condicion.
--filter :: (a -> Bool) -> [a] -> [b]

esMayor :: Persona -> Bool
esMayor persona =  (edad persona) > 18
personasMayores :: [Persona] -> [String]
personasMayores personas = map nombre (filter esMayor personas)
-}

