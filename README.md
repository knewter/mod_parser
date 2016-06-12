# ModParser

ModParser reads in [.mod files](https://en.wikipedia.org/wiki/Module_file) and
turns them into nice Elm types representing the data format.

I'm going to be Test-Driving this.  To do that, I've turned [a mod file I found
online](http://www.filewatcher.com/m/zelda%201.mod.12208-0.html) into an elm
module by way of [a tiny elixir tool I built for that
purpose](https://github.com/knewter/mod_to_elm/blob/master/lib/mod_to_elm.ex).

Here's the best [.mod spec](http://www.eblong.com/zarf/blorb/mod-spec.txt) I was
able to find after a grueling second or ten of googling.

## Development

To run the tests:

```sh
./test
```

(or if you use vim, open the tests/Tests.elm file from the project root and hit
`comma space`, courtesy of the .vimrc in here)
