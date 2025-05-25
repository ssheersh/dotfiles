-- cpp.lua
-- LuaSnip snippets for C++ — optimized for competitive programming warriors.

local ls = require 'luasnip'
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local fmt = require('luasnip.extras.fmt').fmt

local rep = require('luasnip.extras').rep
local autosnippet = ls.extend_decorator.apply(s, { snippetType = 'autosnippet' })

return {
  -- Fast I/O
  s(
    'fio',
    t {
      'ios::sync_with_stdio(false);',
      'cin.tie(nullptr);',
      'cout.tie(nullptr);',
    }
  ),

  -- Main template
  -- For loop
  s(
    'fl',
    fmt('for (int {} = 0; {} < {}; ++{}) {{\n  {}\n}}', {
      i(1, 'i'),
      rep(1),
      i(2, 'n'),
      rep(1),
      i(3, '// body'),
    })
  ),

  -- Debug macro
  s('dbg', fmt('#define dbg(x) cerr << #x << " = " << x << endl;', {})),

  -- Vector input
  s(
    'vin',
    fmt(
      [[
    vector<{}> {}({});
    for (auto& {} : {}) cin >> {};
  ]],
      {
        i(1, 'int'),
        i(2, 'v'),
        i(3, 'n'),
        i(4, 'x'),
        rep(2),
        rep(4),
      }
    )
  ),

  -- Binary search
  s(
    'binsrch',
    fmt(
      [[
    int {}(vector<int>& a, int target) {{
        int low = 0, high = a.size() - 1;
        while (low <= high) {{
            int mid = (low + high) / 2;
            if (a[mid] == target) return mid;
            else if (a[mid] < target) low = mid + 1;
            else high = mid - 1;
        }}
        return -1;
    }}
  ]],
      { i(1, 'binary_search') }
    )
  ),

  -- GCD
  s(
    'gcd',
    fmt(
      [[
    int gcd(int a, int b) {{
        return b == 0 ? a : gcd(b, a % b);
    }}
  ]],
      {}
    )
  ),

  -- Sieve of Eratosthenes
  s(
    'sieve',
    fmt(
      [[
    vector<bool> sieve(int n) {{
        vector<bool> is_prime(n + 1, true);
        is_prime[0] = is_prime[1] = false;
        for (int i = 2; i * i <= n; ++i) {{
            if (is_prime[i]) {{
                for (int j = i * i; j <= n; j += i) {{
                    is_prime[j] = false;
                }}
            }}
        }}
        return is_prime;
    }}
  ]],
      {}
    )
  ),

  -- Fast exponentiation
  s(
    'binpow',
    fmt(
      [[
    int binpow(int a, int b, int mod) {{
        int res = 1;
        while (b > 0) {{
            if (b & 1) res = 1LL * res * a % mod;
            a = 1LL * a * a % mod;
            b >>= 1;
        }}
        return res;
    }}
  ]],
      {}
    )
  ),

  -- Pair sort
  s(
    'pairsort',
    fmt(
      [[
    vector<pair<{}, {}>> {}({});
    for (int i = 0; i < {}; ++i) {{
        cin >> {}[i].first >> {}[i].second;
    }}
    sort({}.begin(), {}.end());
  ]],
      {
        i(1, 'int'),
        i(2, 'int'),
        i(3, 'vp'),
        i(4, 'n'),
        rep(4),
        rep(3),
        rep(3),
        rep(3),
        rep(3),
      }
    )
  ),
}
