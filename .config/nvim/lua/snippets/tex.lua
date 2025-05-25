local ls = require 'luasnip'
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local fmt = require('luasnip.extras.fmt').fmt
local rep = require('luasnip.extras').rep
local autosnippet = ls.extend_decorator.apply(s, { snippetType = 'autosnippet' })

return {
  -- Lowercase Greek autosnippets
  autosnippet(';a', t '\\alpha'),
  autosnippet(';b', t '\\beta'),
  autosnippet(';g', t '\\gamma'),
  autosnippet(';d', t '\\delta'),
  autosnippet(';e', t '\\epsilon'),
  autosnippet(';z', t '\\zeta'),
  autosnippet(';h', t '\\eta'),
  autosnippet(';th', t '\\theta'),
  autosnippet(';i', t '\\iota'),
  autosnippet(';k', t '\\kappa'),
  autosnippet(';l', t '\\lambda'),
  autosnippet(';m', t '\\mu'),
  autosnippet(';n', t '\\nu'),
  autosnippet(';x', t '\\xi'),
  autosnippet(';p', t '\\pi'),
  autosnippet(';r', t '\\rho'),
  autosnippet(';s', t '\\sigma'),
  autosnippet(';t', t '\\tau'),
  autosnippet(';u', t '\\upsilon'),
  autosnippet(';ph', t '\\phi'),
  autosnippet(';ch', t '\\chi'),
  autosnippet(';ps', t '\\psi'),
  autosnippet(';w', t '\\omega'),

  -- uppercase Greek
  autosnippet(';G', t '\\Gamma'),
  autosnippet(';D', t '\\Delta'),
  autosnippet(';Th', t '\\Theta'),
  autosnippet(';L', t '\\Lambda'),
  autosnippet(';X', t '\\Xi'),
  autosnippet(';P', t '\\Pi'),
  autosnippet(';S', t '\\Sigma'),
  autosnippet(';Ph', t '\\Phi'),
  autosnippet(';Ps', t '\\Psi'),
  autosnippet(';W', t '\\Omega'),

  -- Manual snippet for \begin{}...\end{}
  s(
    'env',
    fmt(
      [[
    \begin{{{}}}
      {}
    \end{{{}}}
  ]],
      {
        i(1, 'environment'),
        i(2),
        rep(1),
      }
    )
  ),
}
