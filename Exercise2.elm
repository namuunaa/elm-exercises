module Main exposing (..)

import Html
import String


upcaseName name maxLength =
    if String.length name > maxLength then
        String.toUpper name
    else
        name


main =
    let
        name =
            "Namuun Bayaraa"

        length =
            String.length name
    in
    Html.text
        (upcaseName name 10
            ++ " - name length: "
            ++ toString length
        )
