module Main exposing (..)

import Html
import String


wordCount =
    String.words >> List.length


main =
    "I am starting to like Elm"
        |> wordCount
        |> toString
        |> Html.text
