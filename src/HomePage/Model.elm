module HomePage.Model exposing (..)


type alias Model =
    { id_movie : String
    , name : String
    , year : String
    }


initMovie : Model
initMovie =
    { id_movie = ""
    , name = ""
    , year = ""
    }
