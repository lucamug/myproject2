module Main exposing (..)

import Browser
import Html exposing (..)
import Html.Attributes exposing (..)



-- elm reactor


counter =
    32 + 4


main =
    -- { init : Int
    -- , view : Int -> Html String
    -- , update : String -> Int -> Int
    -- }
    Browser.sandbox
        { init = 32
        , view = view
        , update = update
        }


update msg model =
    model


view model =
    div
        [ id "main"
        ]
        [ node "style" [] [ text "body {margin: 20px}" ]
        , button [] [ text "+1" ]
        , p [] [ text (String.fromInt counter) ]
        , button [] [ text "-1" ]
        ]



-- <div id="main">
--  <button>+1</button>
--  <p>34</p>
--  <button>-1</button>
-- </div>
