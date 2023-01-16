# Import

import os
import subprocess
from libqtile import hook
from libqtile import bar, layout, widget, qtile
from libqtile.config import Click, Drag, DropDown, Group, Key, Match, ScratchPad, Screen
from libqtile.lazy import lazy

# Variables

mod = 'mod4'
mod1 = 'mod1'
browser = 'librewolf'
terminal = 'kitty'
menu = 'rofi -show drun'  # dmenu_run

# Colors

PRIMARY = '#9A79E6'
SECONDARY = '#7AA2F7'
INACTIVE = '#444444'

# Functions


def window_to_prev_group(qtile):
    if qtile.currentWindow is not None:
        i = qtile.groups.index(qtile.currentGroup)
        qtile.currentWindow.togroup(qtile.groups[i - 1].name)


def window_to_next_group(qtile):
    if qtile.currentWindow is not None:
        i = qtile.groups.index(qtile.currentGroup)
        qtile.currentWindow.togroup(qtile.groups[i + 1].name)


def window_to_previous_screen(qtile):
    i = qtile.screens.index(qtile.current_screen)
    if i != 0:
        group = qtile.screens[i - 1].group.name
        qtile.current_window.togroup(group)


def window_to_next_screen(qtile):
    i = qtile.screens.index(qtile.current_screen)
    if i + 1 != len(qtile.screens):
        group = qtile.screens[i + 1].group.name
        qtile.current_window.togroup(group)


def switch_screens(qtile):
    i = qtile.screens.index(qtile.current_screen)
    group = qtile.screens[i - 1].group
    qtile.current_screen.set_group(group)


def window_name(text):
    """
    TODO: Implement WindowName filter
    """
    valami_list = [" - Chromium", " - Firefox", " - LibreWolf"]
    for string in valami_list:
        text = text.replace(string, "")
        return text

# Keys


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
    Key([mod],              'k', lazy.group['scratchpad'].dropdown_toggle('term')),

    # Screen
    Key([mod, "control"],   "h", lazy.prev_screen(), desc='Focus prev monitor'),
    Key([mod, "control"],   "j", lazy.function(window_to_previous_screen), lazy.prev_screen(), desc="Move & Focus prev screen"),
    Key([mod, "control"],   "k", lazy.function(window_to_next_screen),     lazy.next_screen(), desc="Move & Focus next screen"),
    Key([mod, "control"],   "l", lazy.next_screen(), desc='Focus next monitor'),
    Key([mod],              "w", lazy.to_screen(0),  desc='Focus 1st monitor'),
    Key([mod],              "e", lazy.to_screen(1),  desc='Focus 2nd monitor'),
    Key([mod],              "r", lazy.to_screen(2),  desc='Focus 3rd monitor'),
    Key([mod],              "t", lazy.function(switch_screens)),

    # Spawn
    Key([mod],         "Return", lazy.spawn(terminal),    desc="Spawn terminal"),
    Key([mod],              "b", lazy.spawn(browser),     desc="Spawn broswer"),
    Key([mod],              "d", lazy.spawn(menu),       desc="Spawn launch menu"),
    Key([mod],              "r", lazy.spawncmd(),         desc="Spawn command prompt"),

    # Wallpaper
    # Key([mod], "h", lazy.screen.set_wallpaper(path, mode='fill/stretch'), desc="Set wallpaper"),

    # Window - ctions
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

# Workspaces [named]

# group_names = ' 1 2 3 4 5'.split()
group_names = ' 一 二 三 四 五'.split()
groups = [Group(name, layout='max') for name in group_names]

for i, name in enumerate(group_names):
    indx = str(i + 1)
    keys += [
        Key([mod], indx, lazy.group[name].toscreen()),
        Key([mod, 'shift'], indx, lazy.window.togroup(name))]


# Workspaces [numbered]

# groups = [Group(i) for i in "123456789"]
# for i in groups:
#     keys.extend([
#         Key(
#             [mod], i.name, lazy.group[i.name].toscreen(),
#             desc="Switch to group {}".format(i.name),
#         ),
#         Key(
#             [mod, "shift"], i.name, lazy.window.togroup(i.name, switch_group=True),
#             desc="Move window & switch to group {}".format(i.name),
#         ),
#     ])

# ScratchPad
# TODO:
# https://github.com/qtile/qtile-examples/blob/master/osimplex/scratchpad.py
groups.append(
     ScratchPad(
         'scratchpad', [
             DropDown('term', terminal),
             ]
         )
     )

# Layouts

layouts = [
    # Bsp
    # layout.Bsp(),
    # Max
    # layout.Max(
    #    border_focus = '#FFFFFF',
    #    border_normal = '#FFFFFF',
    #    border_width = 3,
    #    margin = [15, 15, 15, 15],
    # ),
    # Columns
    layout.Columns(
        border_focus=[PRIMARY],
        border_focus_stack=['#222255', PRIMARY],
        border_normal=['#222255'],
        border_normal_stack=['#222255'],
        border_on_single=False,
        border_width=2,
        grow_amount=10,
        insert_position=0,
        margin=[3, 3, 3, 3],
        margin_on_single=5,
        num_columns=2,
        split=True,
        wrap_focus_columns=True,
        wrap_focus_rows=True,
        wrap_focus_stacks=True,
        ),
    # Floating
    # layout.Floating(
    #     border_focus = PRIMARY
    #     border_normal = ['#222255'],
    #     border_width = 3,
    #     fullscreen_border_width = 3,
    #     max_border_width = 3,
    #     ),
    # Matrix
    # layout.Matrix(),
    # MonadTall
    # layout.MonadTall(),
    # MonadWide
    # layout.MonadWide(),
    # RatioTile
    # layout.RatioTile(),
    # Stack
    # layout.Stack(
    #    num_stacks=2
    # ),
    # Tile
    # layout.Tile(),
    # TreeTab
    # layout.TreeTab(),
    # VerticalTile
    # layout.VerticalTile(),
    # Zoomy
    # layout.Zoomy(),
]

# Drag floating layouts
mouse = [
    Drag([mod], 'Button1',
         lazy.window.set_position_floating(),
         start=lazy.window.get_position()),
    Drag([mod], 'Button3',
         lazy.window.set_size_floating(),
         start=lazy.window.get_size()),
    Click([mod], 'Button2', lazy.window.bring_to_front()),
]

# Mouse callbacks


def open_sysmonitor():
    qtile.cmd_spawn('alacritty -e bpytop')

# Widgets


widget_defaults = dict(
    font='sans',
    fontsize=13,
    padding=3,
)
extension_defaults = widget_defaults.copy()

# Screens
screens = [

    # Screen 0 (DP-1)
    Screen(
        top=bar.Bar([
            # LEFT
            # Groups
            widget.GroupBox(
                active=PRIMARY,
                background=None,
                borderwidth=5,
                center_aligned=True,
                disable_drag=True,
                fontshadow=None,
                fontsize=15,
                # foreground='FF0000',
                hide_unused=False,
                highlight_color=['030009', '4A2996'],
                highlight_method='line',
                inactive=INACTIVE,
                margin_x=0,
                margin_y=3,
                # other_current_screen_border='FFFFFF',
                # other_screen_border='FFFFFF',
                rounded=False,
                this_current_screen_border=PRIMARY,
                this_screen_border=PRIMARY,
                urgent_border='FF0000',
                urgent_text='FF0000',
                ),
            # Window name
            widget.WindowName(
                background=None,
                fontsize=14,
                foreground=PRIMARY,
                max_chars=250,
                parse_text=window_name,
                scroll=False,
                scroll_delay=5,
                scroll_interval=0.1,
                scroll_repeat=True,
                scroll_step=1,
                # width=800,
            ),

            # Spacer
            widget.Spacer(),

            # RIGHT
            # Weather
            widget.WidgetBox(
                button_location='left',
                close_button_location='right',
                foreground=PRIMARY,
                # text_closed='☁',
                text_closed='W',
                text_opened='[x]',
                widgets=[
                    widget.OpenWeather(
                        location='Budapest',
                        format='{location_city} {main_temp}°{units_temperature} - {weather_details} {icon}',
                        foreground=PRIMARY,
                        update_interval=600
                        ),
                ]
            ),
            widget.Sep(
                foreground=INACTIVE,
                ),
            # Updates
            widget.CheckUpdates(
                colour_have_updates='22EE44',
                colour_no_updates=PRIMARY,
                display_format='{updates}',
                distro='Arch_Sup',
                initial_text='Checking updates...',
                foreground=PRIMARY,
                no_update_string='No updates',
                update_interval=3600,
                ),
            widget.Sep(
                foreground=INACTIVE,
                ),
            # CPU
            widget.CPU(
                format='CPU: {load_percent}%',
                foreground=PRIMARY,
                mouse_callbacks={'Button1': open_sysmonitor},
                update_interval=10
                ),
            widget.Sep(
                foreground=INACTIVE,
                ),
            # RAM
            widget.Memory(
                format='RAM: {MemUsed:.0f}{mm}',
                foreground=PRIMARY,
                mouse_callbacks={'Button1': open_sysmonitor},
                update_interval=10
                ),
            widget.Sep(
                foreground=INACTIVE,
                ),
            # Volume
            widget.Volume(
                foreground=PRIMARY,
                ),
            widget.Sep(
                foreground=INACTIVE,
                ),
            # Wlan
            # widget.Wlan(
            #     foreground=PRIMARY,
            #     # interface='enp0s3',

            #     ),
            # widget.Sep(
            #     foreground=INACTIVE,
            #     ),
            # Battery
            widget.Battery(
                battery=0,
                format='BAT: {percent:2.0%}',
                foreground=PRIMARY,
                update_interval=60,
                ),
            widget.Sep(
                foreground=INACTIVE,
                ),
            # Time & Date
            widget.Clock(
                format='%I:%M %p',
                foreground=PRIMARY,
                update_interval=60,
                ),
            # System tray
            widget.Systray(),
            ],
            26,
            border_width=[0, 0, 0, 0],
            border_color=['000000', '000000', '000000', '000000'],
            background='#16161E',
            margin=[3, 3, 0, 3],
        ),
    ),

    # Screen 1 (HDMI-2)
    Screen(
        top=bar.Bar([
            # LEFT
            # Groups
            widget.GroupBox(
                active=PRIMARY,
                background=None,
                borderwidth=5,
                center_aligned=True,
                disable_drag=True,
                fontshadow=None,
                fontsize=15,
                # foreground='FFFFFF',
                hide_unused=False,
                highlight_color=['030009', '4A2996'],
                highlight_method='line',
                inactive=INACTIVE,
                margin_x=0,
                margin_y=3,
                # other_current_screen_border='FF0000',
                # other_screen_border='FF0000',
                rounded=False,
                this_current_screen_border=PRIMARY,
                this_screen_border=PRIMARY,
                urgent_border='FF0000',
                urgent_text='FF0000',
                ),
            # Prompt
            widget.Prompt(),
            # Window name
            widget.WindowName(
                background=None,
                fontsize=14,
                foreground=PRIMARY,
                max_chars=500,
                parse_text=window_name,
                scroll=False,
                scroll_delay=5,
                scroll_interval=0.1,
                scroll_repeat=True,
                scroll_step=1,
                # width=800,
            ),
            # Disk Free
            widget.DF(
                foreground=PRIMARY,
                visible_on_warn=False,
                ),
            widget.Sep(
                foreground=INACTIVE,
                ),
            # Time & Date
            widget.Clock(
                foreground=PRIMARY,
                format='%a %b-%d',
                update_interval=60
                ),
            widget.Sep(
                foreground=INACTIVE,
                ),
            # Quick exit
            widget.QuickExit(
                countdown_format='[ {} seconds ]',
                countdown_start=5,
                default_text='[ Shutdown ]',
                foreground=PRIMARY,
                ),
            ],
            26,
            border_width=[0, 0, 0, 0],
            border_color=['000000', '000000', '000000', '000000'],
            background='#16161E',
            margin=[3, 5, 0, 5],
        ),
    ),
]

# Hooks


@hook.subscribe.startup_once
def autostart():
    home = os.path.expanduser('~/.config/qtile/autostart.sh')
    subprocess.Popen([home])

# Configuration variables


auto_fullscreen = True
auto_minimize = False
bring_front_click = False
cursor_warp = False
dgroups_key_binder = None
dgroups_app_rules = []  # type: list
focus_on_window_activation = 'smart'
follow_mouse_focus = False
floating_layout = layout.Floating(
    float_rules=[
        # Run `xprop` to see the wm class and name
        *layout.Floating.default_float_rules,
        Match(wm_class='confirmreset'),  # gitk
        Match(wm_class='makebranch'),  # gitk
        Match(wm_class='maketag'),  # gitk
        Match(wm_class='ssh-askpass'),  # ssh-askpass
        Match(title='branchdialog'),  # gitk
        Match(title='pinentry'),  # GPG key password entry
    ]
)
reconfigure_screens = True
wl_input_rules = None
wmname = 'LG3D'
