from libqtile import layout
from colors import *

layouts = [

    # Bsp
    #layout.Bsp(),

    # Columns
    layout.Columns(
        border_focus = [PRIMARY],
        border_focus_stack = ['#000000', PRIMARY],
        border_normal = ['#000000'],
        border_normal_stack = ['#000000'],
        border_on_single = False,
        border_width = 2,
        fair = False,
        grow_amount = 10,
        insert_position = 1,
        margin = [5, 5, 5, 5],
        margin_on_single = 0,
        num_columns = 2,
        single_border_width = None,
        split = True,
        wrap_focus_columns = True,
        wrap_focus_rows = True,
        wrap_focus_stacks = True,
    ),

    # Floating
    #layout.Floating(),

    # Matrix
    #layout.Matrix(),

    # Max
    layout.Max(
        border_focus = PRIMARY,
        border_normal = PRIMARY,
        border_width = 0,
        margin = [0, 0, 0, 0],
        only_focused = False
    ),

    # MonadTall
    #layout.MonadTall(),

    # MonadThreeCol
    #layout.MonadThreeCol(),

    # MonadWide
    #layout.MonadWide(),

    # RatioTile
    #layout.RatioTile(),

    # Slice
    #layout.Stack(),

    # Spiral
    #layout.Spiral(),

    # Stack
    # layout.Stack(
    #     autosplit = False,
    #     border_focus = PRIMARY,
    #     border_focus_stack = None,
    #     border_normal = PRIMARY,
    #     border_normal_stack = None,
    #     border_width = 1,
    #     fair = False,
    #     margin = 3,
    #     num_stacks = 2
    # ),

    # Tile
    #layout.Tile(),

    # TreeTab
    #layout.TreeTab(),

    # VerticalTile
    #layout.VerticalTile(),

    # Zoomy
    #layout.Zoomy(),

]
