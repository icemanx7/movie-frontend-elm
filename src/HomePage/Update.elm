module HomePage.Update exposing (..)

import HomePage.Model exposing (..)
import Http


type Msg
    = GotMovieList (Result Http.Error String)
    | PasswordInput String
