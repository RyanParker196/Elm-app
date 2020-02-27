module Main exposing (..)

import Browser
import Html exposing (..)
import Html.Attributes exposing (src)

---- MODEL ----


type alias Model =
    {}

init : (Model, Cmd Msg)
init =
    ( {}, Cmd.none )

---- UPDATE ----

type Msg
    = NoOp

update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    ( model, Cmd.none )

---- VIEW ----
avatar : List (Html Msg)
avatar =
    [ img [ src "/me.jpg" ] [ text "yo"]
    , h1 [] [ text "Welcome" ]
    ]

view : Model -> Html Msg
view model =
    div [] avatar

---- PROGRAM ----

main : Program () Model Msg
main =
    Browser.element
        { view = view
        , init = \_ -> init
        , update = update
        , subscriptions = always Sub.none
        }
