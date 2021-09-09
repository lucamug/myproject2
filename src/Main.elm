module Main exposing (..)

import Browser
import Element exposing (..)
import Element.Background as Background
import Element.Border as Border
import Element.Input as Input
import Html
import Html.Attributes
import Html.Events


main =
    Browser.sandbox
        { init = { counter = 32, counter2 = 0 }
        , view = view
        , update = update
        }


update : Msg -> Model -> Model
update msg model =
    let
        _ =
            Debug.log "msg" ( msg, model )
    in
    case msg of
        Increment int ->
            { model | counter = model.counter + 1 }

        Decrement ->
            { model | counter = model.counter + 1 }

        Reset ->
            { model | counter = 0 }


type alias Model =
    { counter : Int
    , counter2 : Int
    }


type Msg
    = Increment Int
    | Decrement
    | Reset


type Color
    = Yellow
    | Red
    | Blue


list : List Color
list =
    [ Yellow ]


maybeEmail : Maybe String
maybeEmail =
    Nothing


sendEmail : String -> String
sendEmail email2 =
    email2


f2 =
    case maybeEmail of
        Just email ->
            sendEmail email

        Nothing ->
            "Sorry, no email today"



-- type Maybe a = Just a | Nothing


buttonStyle =
    [ Border.width 1
    , padding 10
    , Border.rounded 10
    ]


view : Model -> Html.Html Msg
view model =
    layout [ padding 20 ] <|
        row
            [ centerX
            , centerY
            , spacing 20
            , explain Debug.todo
            ]
            [ Input.button
                buttonStyle
                { onPress = Just (Increment 10)
                , label = text "+1"
                }
            , text (String.fromInt model.counter)
            , Input.button buttonStyle
                { onPress = Just <| Increment 10
                , label = text "+1"
                }
            ]



-- div
--     [ id "main"
--     ]
--     [ node "style" [] [ text "body {margin: 20px}" ]
--     , button [ Html.Events.onClick (Increment 1) ] [ text "+1" ]
--     , button [ Html.Events.onClick (Increment 10) ] [ text "+10" ]
--     , div [] (List.map (f model) (List.repeat 3 ()))
--     , button [ Html.Events.onClick Decrement ] [ text "-1" ]
--     , button [ Html.Events.onClick Reset ] [ text "reset" ]
--     ]
-- f model _ =
--     p [] [ text (String.fromInt model) ]
