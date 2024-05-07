local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local d = ls.dynamic_node
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local rep = require("luasnip.extras").rep

local get_visual = function(args, parent)
  if (#parent.snippet.env.LS_SELECT_RAW > 0) then
    return sn(nil, i(1, parent.snippet.env.LS_SELECT_RAW))
  else  -- If LS_SELECT_RAW is empty, return a blank insert node
    return sn(nil, i(1))
  end
end

local line_begin = require("luasnip.extras.expand_conditions").line_begin

local in_mathzone = function()
  -- The `in_mathzone` function requires the VimTeX plugin
  return vim.fn['vimtex#syntax#in_mathzone']() == 1
end




return {
s({trig=";a", snippetType="autosnippet"},
  {
    t("\\alpha"),
  }
),
s({trig=";b", snippetType="autosnippet"},
  {
    t("\\beta"),
  }
),
s({trig=";g", snippetType="autosnippet"},
  {
    t("\\gamma"),
  }
),

s({trig="hr", dscr="The hyperref package's href{}{} command (for url links)"},

  fmta(
    [[\href{<>}{<>}]],
    {
      i(1, "url"),
      i(2, "display name"),
    }
  )
),


 s({trig="tt", dscr="Expands 'tt' into '\texttt{}'"},
   {
     t("\\texttt{"), -- remember: backslashes need to be escaped
     i(1),
     t("}"),
   }
 ),
 -- Yes, these jumbles of text nodes and insert nodes get messy fast, and yes,
 -- there is a much better, human-readable solution: ls.fmt, described shortly.
 s({trig="ff", dscr="Expands 'ff' into '\frac{}{}'",snippetType="autosnippet"},
   fmta(
     "\\frac{<>}{<>}", {i(1, "1"), i(2, "2")}, {delimiters = "<>"}
    )
 ),
  s({trig='nn', dscr="A LaTeX equation environment", snippetType='autosnippet'},
   fmt( -- The snippet code actually looks like the equation environment it produces.
     [[
       \begin{equation}
           <>
       \end{equation}
     ]],
     -- The insert node is placed in the <> angle brackets
     { i(0) },
     -- This is where I specify that angle brackets are used as node positions.
     { delimiters = "<>" }
   )
 ),
s({trig='mm', dscr="A LaTeX inline math environment", snippetType='autosnippet'},
   fmt( -- The snippet code actually looks like the equation environment it produces.
     [[
        $<>$
      ]],
     -- The insert node is placed in the <> angle brackets
     { i(0) },
     -- This is where I specify that angle brackets are used as node positions.
     { delimiters = "<>" }
   )
 ),



 s({trig="env", snippetType="autosnippet",},
   fmta(
     [[
       \begin{<>}
           <>
       \end{<>}
     ]],
     {
       i(1),
       i(2),
       rep(1),  -- this node repeats insert node i(1)
     }
   )
 ),

s({trig = "h1", dscr="Top-level section"},
  fmta(
    [[\section{<>}]],
    { i(1) }
  ),
  {condition = line_begin}  -- set condition in the `opts` table
),

s({trig = "h2", dscr="sub section"},
  fmta(
    [[\subsection{<>}]],
    { i(1) }
  ),
  {condition = line_begin}  -- set condition in the `opts` table
),


}
