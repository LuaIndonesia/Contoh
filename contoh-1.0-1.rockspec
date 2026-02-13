--@package contoh
--@version >= 5.1
--@description "Sebuah cotnoh library Lua sederhana."
--@author Ahmad Daniar <foltyzxzhen@gmail.com>
--@license MIT

--@diagnostics disable:unused-var,unused-local,unused-arg

package = "contoh"
version = "1.0-1"
source = {
  url = "git://github.com/LuaIndonesia/Contoh.git",
  tag = "v1.0"
}
description = {
  summary = "Contoh library/modul Lua.",
  detailed = [[
    Ini adalah contoh sederhana library Lua untuk programming, debugging, testing, dll.
  ]],
  homepage = "https://github.com/LuaIndonesia/Contoh",
  license = "MIT"
}
dependencies = {
  "lua >= 5.1"
}
build = {
  type = "builtin",
  modules = {
    ["contoh"] = "src/contoh.lua"
  }
}
