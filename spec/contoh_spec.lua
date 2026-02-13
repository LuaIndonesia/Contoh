-- spec/contoh_spec.lua
--[[
 Ini adalah contoh testing library sederhana.
 Ketik: luarocks test, untuk menjalankan tes.
]]

describe("Mengetes beberapa fungsi pada library: ", function()
   it("Menjalankan fungsi sapa", function()
      local Contoh = require "../src/contoh"
      local contoh = Contoh:baru("Budi", 30, "Jakarta")
      contoh:sapa()
   end)

   it("Menjalankan beberapa fungsi aritmatika dasar", function()
      local contoh = require "../src/contoh"
      contoh.unduh()
      print("Hasil tambah: " .. tostring(tambah(7, 3)))
      print("Hasil kurang: " .. tostring(kurang(10, 5)))
      print("Hasil kali: " .. tostring(kali(5, 10)))
      print("Hasil bagi: " .. tostringbagi(30, 2)))
   end)
    
   it("Menjalankan fungsi lainnya", function()
      local contoh = require "../src/contoh"
      contoh.unduh()
      halo()
      pesan_acak()
   end)
end)
