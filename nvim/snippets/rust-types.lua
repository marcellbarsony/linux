-- Rust snippets
-- Docs: https://github.com/L3MON4D3/LuaSnip/blob/master/Examples/snippets.lua

-- SHORTHANDS -- {{{
local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node
local r = ls.restore_node
local l = require("luasnip.extras").lambda
local rep = require("luasnip.extras").rep
local p = require("luasnip.extras").partial
local m = require("luasnip.extras").match
local n = require("luasnip.extras").nonempty
local dl = require("luasnip.extras").dynamic_lambda
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local types = require("luasnip.util.types")
local conds = require("luasnip.extras.conditions")
local conds_expand = require("luasnip.extras.conditions.expand")
-- }}}

-- FUNCTIONS -- {{{
-- Same
local same = function(index)
  return f(function(arg)
    return arg[1]
  end, { index })
end
-- }}}

-- SNIPPETS -- {{{
ls.add_snippets("rust", {
  s( -- enum
    "enum",
    fmt("enum {} {{\n" ..
      "\t{}{}\n" ..
      "}}\n" ..
      "{}"
      , {
      i(1, "EnumName"),
      c(2, {
        -- Variant & type
        sn(nil, {i(1), i(2, "Variant"), t"(", i(3, "type"), t"),"}),
        -- Variant
        sn(nil, {i(1), i(2, "Variant"), t","}),
      }),
      i(3),
      i(4),
      }
    )
  ),
  s( -- impl
    "impl",
    fmt("impl {} {{\n" ..
      "\t{}\n" ..
      "}}\n" ..
      "{}"
      , {
      c(1, {
        -- Trait
        sn(nil, {i(1), i(2, "Trait"), t" for ", i(3, "ImplName")}),
        -- No Trait
        sn(nil, {i(1), i(2, "ImplName")}),
      }),
      i(2, "// Methods"),
      i(3),
      }
    )
  ),
  s( -- module
    "mod",
    fmt("mod {} {{\n" ..
      "\t{}\n" ..
      "}}\n" ..
      "{}"
      , {
      i(1, "module_name"),
      i(2, "// Modules"),
      i(3),
      }
    )
  ),
  s( -- struct
    "struct",
    fmt("struct {} {{\n" ..
      "\t{}{}\n" ..
      "}}\n" ..
      "{}"
      , {
      i(1, "StructName"),
      c(2, {
        -- Key & type
        sn(nil, {i(1), i(2, "key"), t": ", i(3, "type"), t","}),
        -- Key
        sn(nil, {i(1), i(2, "key"), t","}),
      }),
      i(3),
      i(4),
      }
    )
  ),
})
-- }}}
