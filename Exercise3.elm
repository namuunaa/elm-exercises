module Main exposing (..)

import Html
import String


(~=) a b =
    if String.left 1 a == String.left 1 b then
        True
    else
        False


infixResult =
    "monkey"
        ~= "magic"


prefixResult =
    (~=) "elm" "react"


main =
    Html.text
        (toString infixResult
            ++ " and "
            ++ toString prefixResult
        )
