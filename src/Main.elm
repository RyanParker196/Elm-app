module Main exposing (..)

import Browser
import Html exposing (..)
import Html.Attributes exposing (..)

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
    [ img [ src "/logo.svg" ] [ text "yo"]
    , h1 [] [ text "Welcome" ]
    ]

project : List (Html Msg)
project =
    [ h1 [] [ text "My Grocery List" ]
    , ul []
        [ li [] [ text "Black Beans" ]
        , li [] [ text "Limes" ]
        , li [] [ text "Greek Yogurt" ]
        , li [] [ text "Cilantro" ]
        , li [] [ text "Honey" ]
        , li [] [ text "Sweet Potatoes" ]
        , li [] [ text "Cumin" ]
        , li [] [ text "Chili Powder" ]
        , li [] [ text "Quinoa" ]
        ]
    ]
    

view : Model -> Html Msg
view model =
    div [] [
         div [] avatar
        ,div [ id "Project"] project
    ]
---- PROGRAM ----

main : Program () Model Msg
main =
    Browser.element
        { view = view
        , init = \_ -> init
        , update = update
        , subscriptions = always Sub.none
        }
