-- test/contoh_test.lua
--[[
 Ini adalah contoh testing library sederhana.
 Ketik: luarocks test, untuk menjalankan tes.
]]

describe("Mengetes beberapa fungsi pada library", function()
   it("Menjalankan fungsi sapa", function()
      local Contoh = require "../src/contoh"
      local contoh = Contoh:baru("Budi", 30, "Jakarta")
      assert(contoh:sapa(), "Gagal menjalankan fungsi sapa.")
   end)

   it("Menjalankan beberapa fungsi aritmatika dasar", function()
      local contoh = require "../src/contoh"
      contoh.unduh()
      assert(tambah(7, 3) == 10)
      assert(kurang(10, 5) == 5)
      assert(kali(5, 10) == 100)
      assert(bagi(30, 2) == 25)
   end)
    
   it("Menjalankan fungsi lainnya", function()
      local contoh = require "../src/contoh"
      contoh.unduh()
      halo()
      pesan_acak()
   end)
end)
