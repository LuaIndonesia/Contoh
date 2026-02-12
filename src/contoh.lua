local Contoh = {}
Contoh.__index = Contoh

function Contoh:baru(nama, umur, alamat)
   local objek = setmetatable({}, Contoh)
   objek.nama = nama
   objek.umur = umur
   objek.alamat = alamat
   return objek
end

function Contoh.sapa()
   print("Halo!, nama saya ".. self.nama .. ", umur saya " .. self.umur .. " tahun, dan alamat saya di " .. self.alamat .." :).")
end

function Contoh.halo()
   print("Halo Dunia :D!")
end

function Contoh.pesan()
   io.stdout.write("Santai bro santai😎!\n")
end

function Contoh.unduh()
  for k, v in pairs(Contoh) do
    if type(v) == "function" then
       if _G[k] then
           error("✖️ Fungsi sudah di definisikan!")
       else
           print("\e[34m[✓] Fungsi berhasil diunduh ke objek global.\e[0m")
       end
    end
  end
end

return Contoh
