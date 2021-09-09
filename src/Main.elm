module Main exposing (..)

import Browser
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events


main =
    Browser.sandbox
        { init = 32
        , view = view
        , update = update
        }


update msg model =
    let
        a =
            Debug.log "msg" ( msg, model )
    in
    if msg == "increment" then
        model + 1

    else
        model - 1


view model =
    div
        [ id "main"
        ]
        [ node "style" [] [ text "body {margin: 20px}" ]
        , button [ Html.Events.onClick "increment" ] [ text "+1" ]
        , p [] [ text (String.fromInt model) ]
        , button [ Html.Events.onClick "decrement" ] [ text "-1" ]
        ]
