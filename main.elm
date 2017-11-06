module Main exposing (..)

import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick)
import Html exposing (..)
import Html.Attributes exposing (..)


main =
    view


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
        [ section [ class "main" ] [ reddits, school ] ]


reddits : Html.Html msg
reddits =
    section [ class "reddit" ] [ h3 [] [ text "reddit" ], redditItems ]


school : Html.Html msg
school =
    section [ class "school" ] [ h3 [] [ text "school" ], schoolItems ]


redditItems : Html.Html msg
redditItems =
    ul []
        [ li
            []
            [ a [ href "http://www.reddit.com/" ]
                [ text "front" ]
            ]
        , li
            []
            [ a [ href "http://www.reddit.com/r/linux_gaming" ]
                [ text "Linux Gaming" ]
            ]
        , li
            []
            [ a [ href "http://www.reddit.com/r/fitness" ]
                [ text "Fitness" ]
            ]
        , li
            []
            [ a [ href "http://www.reddit.com/r/haskell" ]
                [ text "Haskell" ]
            ]
        , li
            []
            [ a [ href "http://www.reddit.com/r/programming" ]
                [ text "Programming" ]
            ]
        ]


schoolItems : Html.Html msg
schoolItems =
    ul []
        [ li
            []
            [ a [ href "http://www.reddit.com/" ]
                [ text "front" ]
            ]
        , li
            []
            [ a [ href "http://www.reddit.com/r/linux_gaming" ]
                [ text "Linux Gaming" ]
            ]
        , li
            []
            [ a [ href "http://www.reddit.com/r/fitness" ]
                [ text "Fitness" ]
            ]
        , li
            []
            [ a [ href "http://www.reddit.com/r/haskell" ]
                [ text "Haskell" ]
            ]
        , li
            []
            [ a [ href "http://www.reddit.com/r/programming" ]
                [ text "Programming" ]
            ]
        ]
