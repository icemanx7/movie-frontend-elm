module Login.View exposing (..)

import Html exposing (Html, div, label, text, input, h1, p, button)
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onInput, onClick)
import Login.Model exposing (..)
import Login.Update exposing (..)


view : Model -> Html.Html Msg
view model =
    div [ class "grid-container" ]
        [ viewHead
        , makeHtmlForm model
        ]


viewHead : Html.Html msg
viewHead =
    header []
        [ h1 [ id "login_label" ] [ text "Login" ] ]


makeHtmlForm : Model -> Html.Html Msg
makeHtmlForm model =
    div [ class "loginInput" ]
        [ Html.form []
            [ input
                [ id "username"
                , type_ "text"
                , onInput UsernameInput
                , placeholder "Username"
                ]
                []
            , input
                [ id "password"
                , type_ "password"
                , onInput PasswordInput
                , placeholder "Password"
                ]
                []
            , input [ type_ "submit" ]
                [ text "Login" ]
            ]
        ]
