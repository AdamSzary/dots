$env.EDITOR = "helix"

$env.config.show_banner = false

$env.PROMPT_COMMAND = {
    let dir = match (do -i { $env.PWD | path relative-to $nu.home-path }) {
                null => $env.PWD
                '' => '~'
                $relative_pwd => ([~ $relative_pwd] | path join)
        }    
    $"(ansi blue)('[')($env.USER | ansi gradient --fgstart 0x0384fc --fgend 0x4e03fc)(ansi blue)(']') ($dir | ansi gradient --fgstart 0x7f1be3 --fgend 0xe31b8c) (ansi reset)"
}

$env.PROMPT_INDICATOR = (ansi red)('# ')
$env.PROMPT_COMMAND_RIGHT = ""

fastfetch
