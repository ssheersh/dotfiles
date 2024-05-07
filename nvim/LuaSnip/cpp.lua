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

return {
  s({trig="fl", dscr="A for loop"},
  fmta([[
  for(int i=<>;i <>;i++){
    <>
  }
      ]]
    ,
    {i(1, "0"), i(2, "<n"),i(0," ")},
    {delimiters = "<>"}
   )
  ),
  s({trig="startup", dscr="Start up every c++ file for CP"},
    t({
[[#include <bits/stdc++.h>]],
[[#define INF 1e17]],
[[#define ll long long]],
[[#define fl(i, a, b) for(int i=a;i<b;i++)]],
[[  using namespace std;]],
[[  void solve() {]],
[[  }]],

[[  signed main() {]],
[[    ios::sync_with_stdio(0);]],
[[    cin.tie(0);]],
[[    cout.tie(0);]],
[[    int t; cin>>t;]],
[[    while(t--){]],
[[        solve();]],
[[    }]],
[[    return 0;]],
[[ }]],
  })
  ),
  s({trig="endl", snippetType='autosnippet'}, t([['\n']])),
  s({trig="vi"},
    t("vector <ll>",i(1),"(", i(0),");")
  ),
  s({trig="grid"}, t("vector <vector <ll> >",i(1),"(", i(2)," ,vector <ll> (",i(0),"));")),
}
