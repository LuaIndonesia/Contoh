package = "contoh"
version = "1.0-1"
source = {
  url = "git://github.com/LuaIndonesia/Contoh.git"
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
