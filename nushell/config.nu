$env.EDITOR = "helix"

$env.config.show_banner = false

def prompt [] {
    $"(ansi blue)('[')($env.USER | ansi gradient --fgstart 0x0384fc --fgend 0x4e03fc)(ansi blue)(']') (pwd | ansi gradient --fgstart 0x7f1be3 --fgend 0xe31b8c) (ansi reset)"
}

$env.PROMPT_COMMAND = prompt
$env.PROMPT_INDICATOR = (ansi red)('# ')
$env.PROMPT_COMMAND_RIGHT = ""

def fetch [] {
    use /home/szary/fetch.nu
    fetch nufetch
}

fastfetch
