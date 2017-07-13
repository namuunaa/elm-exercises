module Main exposing (..)

import Html


type alias Item =
    { name : String
    , qty : Int
    , freeQty : Int
    }


cart : List Item
cart =
    [ { name = "Lemon", qty = 1, freeQty = 0 }
    , { name = "Apple", qty = 5, freeQty = 0 }
    , { name = "Pear", qty = 10, freeQty = 0 }
    ]


bonus : Int -> Int -> Item -> Item
bonus minQty addQty item =
    if item.qty >= minQty then
        { item | freeQty = addQty }
    else
        item


newCart : List Item
newCart =
    List.map (bonus 5 1 >> bonus 10 3) cart


main : Html.Html msg
main =
    Html.text (toString newCart)
