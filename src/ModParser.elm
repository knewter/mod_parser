module ModParser exposing (parse, ModFile)

import Char exposing (KeyCode)
import String


type alias ModFile =
    { songname : String
    }


emptyModFile : ModFile
emptyModFile =
    { songname = ""
    }


parse : List Int -> ModFile
parse data =
    ( data, emptyModFile )
        |> parseSongname
        |> snd


parseSongname : ( List Int, ModFile ) -> ( List Int, ModFile )
parseSongname ( data, modfile ) =
    let
        songnameByteCount =
            20

        remainingData =
            data |> List.drop songnameByteCount

        songnameData =
            data |> List.take songnameByteCount

        songname =
            List.foldl (\code acc -> acc ++ (readStringChar code)) "" songnameData

        newModfile =
            { modfile | songname = songname }
    in
        ( remainingData, newModfile )


readStringChar : KeyCode -> String
readStringChar keyCode =
    -- If we read a null byte, turn it into an empty string.
    let
        char =
            Char.fromCode keyCode
    in
        case char of
            '\x00' ->
                ""

            _ ->
                String.fromChar (char)
