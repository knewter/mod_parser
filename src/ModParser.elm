module ModParser exposing (parse, ModFile)


type alias ModFile =
    { songname : String
    }


emptyModFile : ModFile
emptyModFile =
    { songname = ""
    }


parse : List Int -> ModFile
parse data =
    emptyModFile
