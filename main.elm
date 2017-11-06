module Main exposing (..)

import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick)
import Html exposing (..)
import Html.Attributes exposing (..)


main =
    view



-- main =
--     Html.beginnerProgram { view = view }
-- -- MODEL
-- type alias Model =
--     Int
-- model : Model
-- model =
--     0
-- -- UPDATE
-- type Msg
--     = Increment
--     | Decrement
-- update : Msg -> Model -> Model
-- update msg model =
--     case msg of
--         Increment ->
--             model + 1
--         Decrement ->
--             model - 1
-- VIEW
-- view model =
--     div [ class "jumbotron" ]
--         [ h1 [] [ text "Welcome to Dunder Mifflin!" ]
--         , p []
--             [ text "Dunder Mifflin Inc. (stock symbol "
--             , strong [] [ text "DMI" ]
--             , text ") is a micro-cap regional paper and office supply distributor with an emphasis on servicing small-business clients."
--             ]
--         ]


view : Html.Html msg
view =
    div [ class "" ]
        [ viewHead
        , sections
        ]


viewHead : Html.Html msg
viewHead =
    header []
        [ h1 [ id "greeting" ] [ text "Hello, Richard" ] ]


sections : Html.Html msg
sections =
    div [ class "wrapper" ]
        [ section [ class "main" ] [ section [ class "reddit" ] [ h3 [] [ text "reddit" ] ] ] ]



-- div [ class "wrapper" ]
--    [ section [ class "main" ] [] ]
