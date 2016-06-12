module Tests exposing (..)

import List
import ElmTest exposing (..)
import ZeldaMod
import ModParser


tests : List Test
tests =
    let
        parsed_mod =
            ZeldaMod.data
                |> ModParser.parse
    in
        [ "Zelda 1             " `equals` parsed_mod.songname
          -- ^^^ 20 characters exactly for each songname
        ]


consoleTests : Test
consoleTests =
    suite "All Tests" tests


main =
    runSuite consoleTests
