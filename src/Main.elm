module Main exposing (..)

import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick)
import Html exposing (..)
import Html.Attributes exposing (..)
import Login.View exposing (..)
import Login.Model exposing (..)
import Login.Update exposing (..)



main : Program Never Model Msg
main =
    Html.beginnerProgram
        { model = initModel
        , view = view
        , update = update
        }
