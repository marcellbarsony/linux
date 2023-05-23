from libqtile.lazy import lazy
from libqtile.config import Key

from .functions import Functions


class Keys():

    """Docstring for Keys"""

    @staticmethod
    def init():
        mod = 'mod4'
        mod1 = 'mod1'
        browser = 'firefox'
        terminal = 'kitty'
        menu = 'rofi -show drun'  # dmenu_run

        keys = [
            # Layouts
            Key([mod],            "Tab", lazy.next_layout(), desc="Next layout"),
            Key([mod, "shift"],   "Tab", lazy.prev_layout(), desc="Prev layout"),

            # Groups
            Key([mod, "mod1"],      "j", lazy.screen.prev_group(),   desc="Prev group"),
            Key([mod, "mod1"],      "k", lazy.screen.next_group(),   desc="Next group"),
            Key([mod, "mod1"],      "b", lazy.screen.toggle_group(), desc="Toggle last group"),

            # Qtile
            Key([mod],              "q", lazy.window.kill(),   desc="Kill window"),
            Key([mod, "control"],   "q", lazy.shutdown(),      desc="Shutdown"),
            Key([mod, "control"],   "r", lazy.reload_config(), desc="Reload"),
            Key([mod1],             "r", lazy.restart(),       desc="Restart"),

            # ScratchPad
            Key([mod],              'i', lazy.group['scratchpad'].dropdown_toggle('term')),

            # Screen
            Key([mod, "control"],   "h", lazy.prev_screen(), desc='Focus prev monitor'),
            Key([mod, "control"],   "j", lazy.function(Functions.window_to_previous_screen), lazy.prev_screen(), desc="Move & Focus prev screen"),
            Key([mod, "control"],   "k", lazy.function(Functions.window_to_next_screen),     lazy.next_screen(), desc="Move & Focus next screen"),
            Key([mod, "control"],   "l", lazy.next_screen(), desc='Focus next monitor'),
            Key([mod],              "w", lazy.to_screen(0),  desc='Focus 1st monitor'),
            Key([mod],              "e", lazy.to_screen(1),  desc='Focus 2nd monitor'),
            Key([mod],              "r", lazy.to_screen(2),  desc='Focus 3rd monitor'),
            Key([mod],              "t", lazy.function(Functions.switch_screens)),

            # Spawn
            Key([mod],         "Return", lazy.spawn(terminal),    desc="Spawn terminal"),
            Key([mod],              "b", lazy.spawn(browser),     desc="Spawn broswer"),
            Key([mod],              "d", lazy.spawn(menu),       desc="Spawn launch menu"),
            Key([mod],              "r", lazy.spawncmd(),         desc="Spawn command prompt"),

            # Window - Actions
            Key([mod],          "f", lazy.window.toggle_fullscreen(), desc='Fullscreen'),
            Key([mod, "shift"], "f", lazy.window.toggle_floating(),   desc='Floating'),

            # Window - Focus
            Key([mod],     "h", lazy.layout.left(),  desc="Focus left"),
            Key([mod],     "j", lazy.layout.down(),  desc="Focus down"),
            Key([mod],     "k", lazy.layout.up(),    desc="Focus up"),
            Key([mod],     "l", lazy.layout.right(), desc="Focus right"),
            Key([mod], "space", lazy.layout.next(),  desc="Focus next window"),

            # Window - Move
            Key([mod, "shift"], "h", lazy.layout.shuffle_left(),  desc="Move left"),
            Key([mod, "shift"], "j", lazy.layout.shuffle_down(),  desc="Move down"),
            Key([mod, "shift"], "k", lazy.layout.shuffle_up(),    desc="Move up"),
            Key([mod, "shift"], "l", lazy.layout.shuffle_right(), desc="Move right"),

            # Window - Resize
            Key([mod1], "h", lazy.layout.grow_left(), lazy.layout.shrink(), lazy.layout.decrease_ratio(), lazy.layout.add(), desc="Grow left"),
            Key([mod1], "j", lazy.layout.grow_down(), lazy.layout.shrink(), lazy.layout.increase_nmaster(), desc="Grow down"),
            Key([mod1], "k", lazy.layout.grow_up(), lazy.layout.grow(), lazy.layout.decrease_nmaster(), desc="Grow up"),
            Key([mod1], "l", lazy.layout.grow_right(), lazy.layout.grow(), lazy.layout.increase_ratio(), lazy.layout.delete(), desc="Grow right"),
            Key([mod1], "n", lazy.layout.normalize(), desc="Normalize"),

            # Toggle between split and unsplit sides of stack.
            # Split = all windows displayed
            # Unsplit = 1 window displayed, like Max layout, but still with multiple stack panes
            Key([mod, "shift"], "Return", lazy.layout.toggle_split(), desc="Toggle between split and unsplit sides of stack"),
        ]