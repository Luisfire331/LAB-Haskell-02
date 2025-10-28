{
 "cells": [
  {
   "cell_type": "code",
   "execution_count": 1,
   "id": "980ae7ca-503b-45d7-b02b-839f44ea760d",
   "metadata": {
    "tags": []
   },
   "outputs": [],
   "source": [
    "---Ejercicio 4 - Funciones que reciben y retornan funciones---"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 2,
   "id": "5ea7ca38-2199-4d84-9724-7b5d823a63b2",
   "metadata": {
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<style>/* Styles used for the Hoogle display in the pager */\n",
       ".hoogle-doc {\n",
       "display: block;\n",
       "padding-bottom: 1.3em;\n",
       "padding-left: 0.4em;\n",
       "}\n",
       ".hoogle-code {\n",
       "display: block;\n",
       "font-family: monospace;\n",
       "white-space: pre;\n",
       "}\n",
       ".hoogle-text {\n",
       "display: block;\n",
       "}\n",
       ".hoogle-name {\n",
       "color: green;\n",
       "font-weight: bold;\n",
       "}\n",
       ".hoogle-head {\n",
       "font-weight: bold;\n",
       "}\n",
       ".hoogle-sub {\n",
       "display: block;\n",
       "margin-left: 0.4em;\n",
       "}\n",
       ".hoogle-package {\n",
       "font-weight: bold;\n",
       "font-style: italic;\n",
       "}\n",
       ".hoogle-module {\n",
       "font-weight: bold;\n",
       "}\n",
       ".hoogle-class {\n",
       "font-weight: bold;\n",
       "}\n",
       "\n",
       ".get-type {\n",
       "color: green;\n",
       "font-weight: bold;\n",
       "font-family: monospace;\n",
       "display: block;\n",
       "white-space: pre-wrap;\n",
       "}\n",
       ".show-type {\n",
       "color: green;\n",
       "font-weight: bold;\n",
       "font-family: monospace;\n",
       "margin-left: 1em;\n",
       "}\n",
       ".mono {\n",
       "font-family: monospace;\n",
       "display: block;\n",
       "}\n",
       ".err-msg {\n",
       "color: red;\n",
       "font-style: italic;\n",
       "font-family: monospace;\n",
       "white-space: pre;\n",
       "display: block;\n",
       "}\n",
       "#unshowable {\n",
       "color: red;\n",
       "font-weight: bold;\n",
       "}\n",
       ".err-msg.in.collapse {\n",
       "padding-top: 0.7em;\n",
       "}\n",
       "\n",
       ".highlight-code {\n",
       "white-space: pre;\n",
       "font-family: monospace;\n",
       "}\n",
       "\n",
       ".suggestion-warning { \n",
       "font-weight: bold;\n",
       "color: rgb(200, 130, 0);\n",
       "}\n",
       ".suggestion-error { \n",
       "font-weight: bold;\n",
       "color: red;\n",
       "}\n",
       ".suggestion-name {\n",
       "font-weight: bold;\n",
       "}\n",
       "\n",
       "</style><div class=\"suggestion-name\" style=\"clear:both;\">Eta reduce</div><div class=\"suggestion-row\" style=\"float: left;\"><div class=\"suggestion-warning\">Found:</div><div class=\"highlight-code\" id=\"haskell\">procesarLecturas f lecturas = map f lecturas</div></div><div class=\"suggestion-row\" style=\"float: left;\"><div class=\"suggestion-warning\">Why Not:</div><div class=\"highlight-code\" id=\"haskell\">procesarLecturas = map</div></div>"
      ],
      "text/plain": [
       "Line 2: Eta reduce\n",
       "Found:\n",
       "procesarLecturas f lecturas = map f lecturas\n",
       "Why not:\n",
       "procesarLecturas = map"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "procesarLecturas :: (Double -> Double) -> [Double] -> [Double]\n",
    "procesarLecturas f lecturas = map f lecturas"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 11,
   "id": "3f380972-5f80-4c0a-af89-41b1d0cbd7a7",
   "metadata": {
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<style>/* Styles used for the Hoogle display in the pager */\n",
       ".hoogle-doc {\n",
       "display: block;\n",
       "padding-bottom: 1.3em;\n",
       "padding-left: 0.4em;\n",
       "}\n",
       ".hoogle-code {\n",
       "display: block;\n",
       "font-family: monospace;\n",
       "white-space: pre;\n",
       "}\n",
       ".hoogle-text {\n",
       "display: block;\n",
       "}\n",
       ".hoogle-name {\n",
       "color: green;\n",
       "font-weight: bold;\n",
       "}\n",
       ".hoogle-head {\n",
       "font-weight: bold;\n",
       "}\n",
       ".hoogle-sub {\n",
       "display: block;\n",
       "margin-left: 0.4em;\n",
       "}\n",
       ".hoogle-package {\n",
       "font-weight: bold;\n",
       "font-style: italic;\n",
       "}\n",
       ".hoogle-module {\n",
       "font-weight: bold;\n",
       "}\n",
       ".hoogle-class {\n",
       "font-weight: bold;\n",
       "}\n",
       "\n",
       ".get-type {\n",
       "color: green;\n",
       "font-weight: bold;\n",
       "font-family: monospace;\n",
       "display: block;\n",
       "white-space: pre-wrap;\n",
       "}\n",
       ".show-type {\n",
       "color: green;\n",
       "font-weight: bold;\n",
       "font-family: monospace;\n",
       "margin-left: 1em;\n",
       "}\n",
       ".mono {\n",
       "font-family: monospace;\n",
       "display: block;\n",
       "}\n",
       ".err-msg {\n",
       "color: red;\n",
       "font-style: italic;\n",
       "font-family: monospace;\n",
       "white-space: pre;\n",
       "display: block;\n",
       "}\n",
       "#unshowable {\n",
       "color: red;\n",
       "font-weight: bold;\n",
       "}\n",
       ".err-msg.in.collapse {\n",
       "padding-top: 0.7em;\n",
       "}\n",
       "\n",
       ".highlight-code {\n",
       "white-space: pre;\n",
       "font-family: monospace;\n",
       "}\n",
       "\n",
       ".suggestion-warning { \n",
       "font-weight: bold;\n",
       "color: rgb(200, 130, 0);\n",
       "}\n",
       ".suggestion-error { \n",
       "font-weight: bold;\n",
       "color: red;\n",
       "}\n",
       ".suggestion-name {\n",
       "font-weight: bold;\n",
       "}\n",
       "\n",
       "</style><div class=\"suggestion-name\" style=\"clear:both;\">Use camelCase</div><div class=\"suggestion-row\" style=\"float: left;\"><div class=\"suggestion-warning\">Found:</div><div class=\"highlight-code\" id=\"haskell\">celsius_Fahr :: Double -> Double</div></div><div class=\"suggestion-row\" style=\"float: left;\"><div class=\"suggestion-warning\">Why Not:</div><div class=\"highlight-code\" id=\"haskell\">celsiusFahr :: Double -> Double</div></div><div class=\"suggestion-name\" style=\"clear:both;\">Use camelCase</div><div class=\"suggestion-row\" style=\"float: left;\"><div class=\"suggestion-warning\">Found:</div><div class=\"highlight-code\" id=\"haskell\">celsius_Fahr c = ...</div></div><div class=\"suggestion-row\" style=\"float: left;\"><div class=\"suggestion-warning\">Why Not:</div><div class=\"highlight-code\" id=\"haskell\">celsiusFahr c = ...</div></div>"
      ],
      "text/plain": [
       "Line 1: Use camelCase\n",
       "Found:\n",
       "celsius_Fahr :: Double -> Double\n",
       "Why not:\n",
       "celsiusFahr :: Double -> DoubleLine 2: Use camelCase\n",
       "Found:\n",
       "celsius_Fahr c = ...\n",
       "Why not:\n",
       "celsiusFahr c = ..."
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/plain": [
       "[32.0,50.0,68.0]"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "celsius_Fahr :: Double -> Double\n",
    "celsius_Fahr c = c * 1.8 + 32\n",
    "\n",
    "procesarLecturas celsius_Fahr [0,10,20]"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 18,
   "id": "e12d4d70-a661-48c4-99b6-7f1d46ecf982",
   "metadata": {
    "tags": []
   },
   "outputs": [],
   "source": [
    "crearFiltro :: (a -> Bool) -> ([a] -> [a])\n",
    "crearFiltro = filter\n",
    "\n",
    "soloImpares :: [Int] -> [Int]\n",
    "soloImpares = crearFiltro odd\n",
    "\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 16,
   "id": "68d5e237-b29d-4da4-ae02-b4629285b8f6",
   "metadata": {
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "[1,3,5,7,9]"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "soloImpares [1..10]"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 23,
   "id": "e63c3f67-e67c-4b13-95c3-c08a0535a6d9",
   "metadata": {
    "tags": []
   },
   "outputs": [],
   "source": [
    "enRango :: Int -> Int -> (Int -> Bool)\n",
    "enRango min max x = x >= min && x <= max"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 35,
   "id": "fbd543fe-4894-4514-8506-8340f1cd4d73",
   "metadata": {
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "True"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/plain": [
       "False"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "entre5y10 = enRango 5 10 7\n",
    "entre8y16 = enRango 8 16 1\n",
    "\n",
    "print entre5y10\n",
    "print entre8y16"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 41,
   "id": "56d6c685-cfff-4b9d-b1ce-3f35ab8872db",
   "metadata": {
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<style>/* Styles used for the Hoogle display in the pager */\n",
       ".hoogle-doc {\n",
       "display: block;\n",
       "padding-bottom: 1.3em;\n",
       "padding-left: 0.4em;\n",
       "}\n",
       ".hoogle-code {\n",
       "display: block;\n",
       "font-family: monospace;\n",
       "white-space: pre;\n",
       "}\n",
       ".hoogle-text {\n",
       "display: block;\n",
       "}\n",
       ".hoogle-name {\n",
       "color: green;\n",
       "font-weight: bold;\n",
       "}\n",
       ".hoogle-head {\n",
       "font-weight: bold;\n",
       "}\n",
       ".hoogle-sub {\n",
       "display: block;\n",
       "margin-left: 0.4em;\n",
       "}\n",
       ".hoogle-package {\n",
       "font-weight: bold;\n",
       "font-style: italic;\n",
       "}\n",
       ".hoogle-module {\n",
       "font-weight: bold;\n",
       "}\n",
       ".hoogle-class {\n",
       "font-weight: bold;\n",
       "}\n",
       "\n",
       ".get-type {\n",
       "color: green;\n",
       "font-weight: bold;\n",
       "font-family: monospace;\n",
       "display: block;\n",
       "white-space: pre-wrap;\n",
       "}\n",
       ".show-type {\n",
       "color: green;\n",
       "font-weight: bold;\n",
       "font-family: monospace;\n",
       "margin-left: 1em;\n",
       "}\n",
       ".mono {\n",
       "font-family: monospace;\n",
       "display: block;\n",
       "}\n",
       ".err-msg {\n",
       "color: red;\n",
       "font-style: italic;\n",
       "font-family: monospace;\n",
       "white-space: pre;\n",
       "display: block;\n",
       "}\n",
       "#unshowable {\n",
       "color: red;\n",
       "font-weight: bold;\n",
       "}\n",
       ".err-msg.in.collapse {\n",
       "padding-top: 0.7em;\n",
       "}\n",
       "\n",
       ".highlight-code {\n",
       "white-space: pre;\n",
       "font-family: monospace;\n",
       "}\n",
       "\n",
       ".suggestion-warning { \n",
       "font-weight: bold;\n",
       "color: rgb(200, 130, 0);\n",
       "}\n",
       ".suggestion-error { \n",
       "font-weight: bold;\n",
       "color: red;\n",
       "}\n",
       ".suggestion-name {\n",
       "font-weight: bold;\n",
       "}\n",
       "\n",
       "</style><div class=\"suggestion-name\" style=\"clear:both;\">Redundant lambda</div><div class=\"suggestion-row\" style=\"float: left;\"><div class=\"suggestion-warning\">Found:</div><div class=\"highlight-code\" id=\"haskell\">potenciador n = (\\ x -> x ^ n)</div></div><div class=\"suggestion-row\" style=\"float: left;\"><div class=\"suggestion-warning\">Why Not:</div><div class=\"highlight-code\" id=\"haskell\">potenciador n x = x ^ n</div></div><div class=\"suggestion-name\" style=\"clear:both;\">Avoid lambda using `infix`</div><div class=\"suggestion-row\" style=\"float: left;\"><div class=\"suggestion-warning\">Found:</div><div class=\"highlight-code\" id=\"haskell\">(\\ x -> x ^ n)</div></div><div class=\"suggestion-row\" style=\"float: left;\"><div class=\"suggestion-warning\">Why Not:</div><div class=\"highlight-code\" id=\"haskell\">(^ n)</div></div><div class=\"suggestion-name\" style=\"clear:both;\">Redundant bracket</div><div class=\"suggestion-row\" style=\"float: left;\"><div class=\"suggestion-warning\">Found:</div><div class=\"highlight-code\" id=\"haskell\">(\\ x -> x ^ n)</div></div><div class=\"suggestion-row\" style=\"float: left;\"><div class=\"suggestion-warning\">Why Not:</div><div class=\"highlight-code\" id=\"haskell\">\\ x -> x ^ n</div></div>"
      ],
      "text/plain": [
       "Line 2: Redundant lambda\n",
       "Found:\n",
       "potenciador n = (\\ x -> x ^ n)\n",
       "Why not:\n",
       "potenciador n x = x ^ nLine 2: Avoid lambda using `infix`\n",
       "Found:\n",
       "(\\ x -> x ^ n)\n",
       "Why not:\n",
       "(^ n)Line 2: Redundant bracket\n",
       "Found:\n",
       "(\\ x -> x ^ n)\n",
       "Why not:\n",
       "\\ x -> x ^ n"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "potenciador :: Int -> (Int -> Int)\n",
    "potenciador n x = x ^ n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 43,
   "id": "822f55d1-73c9-4e4b-924b-0e5bbcc47e2f",
   "metadata": {
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "8"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "cubico = potenciador 3 2\n",
    "print cubico"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "id": "5f36d7f8-335a-49e2-82a6-989173b76eb5",
   "metadata": {},
   "outputs": [],
   "source": []
  }
 ],
 "metadata": {
  "kernelspec": {
   "display_name": "Haskell",
   "language": "haskell",
   "name": "haskell"
  },
  "language_info": {
   "codemirror_mode": "ihaskell",
   "file_extension": ".hs",
   "mimetype": "text/x-haskell",
   "name": "haskell",
   "pygments_lexer": "Haskell",
   "version": "9.6.4"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}
