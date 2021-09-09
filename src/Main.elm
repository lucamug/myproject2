module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)



-- elm reactor


main =
    div [ id "main" ]
        [ button [] [ text "+1" ]
        , p [] [ text "32" ]
        , button [] [ text "-1" ]
        ]



-- <div id="main">
--  <button>+1</button>
--  <p>34</p>
--  <button>-1</button>
-- </div>
