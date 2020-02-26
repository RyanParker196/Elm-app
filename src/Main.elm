module Main exposing (..)

import Browser
import Html exposing (..)
import Html.Attributes exposing (src)


---- MODEL ----


type alias Model =
    {}


init : ( Model, Cmd Msg )
init =
    ( {}, Cmd.none )



---- UPDATE ----

type Msg
    = NoOp


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    ( model, Cmd.none )

---- VIEW ----


view : Model -> Html Msg
view model =
    div []
        [ img [ src "/me.jpg" ] []
        , h1 [] [ text "Your Elm App is working!" ]
        ]



---- PROGRAM ----


main : Program () Model Msg
main =
    div []
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
    Browser.element
        { view = view
        , init = \_ -> init
        , update = update
        , subscriptions = always Sub.none
        }
