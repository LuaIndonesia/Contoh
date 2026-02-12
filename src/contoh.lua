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
   local pesan = {
      "Santai bro santai😎!\n",
      "Dingin tetapi tidak kejam🥶\n",
      "Menyala abangku!!!😎🔥...\n",
      "Sedia aku sebelum hujan🌧️☂️\n",
      "Hanya cinta dan malam, yang tidak akan pernah habis🌆❤️\n"
   }
   local panjangPesan = #pesan
   local indeksAcak = math.random(1, panjangPesan)
   io.stdout.write(pesan[indeksAcak])
end

function Contoh.asciify(teks)
   return "\e[34m***[\e[0m\e[33m<( "..teks.." )>\e[0m\e34m]***\e[0m"
end

function Contoh.ascii_hewan(hewan)
   if hewan == "kelinci" then
      return [[
          ()_()    •-------------------•
          (• •)  \e[33mAku cinta kamu!\e[0m
          (>❤️<)   •-------------------•
          ()..()
      ]]
   else
      return "Format ascii art hewan tidak didukung!"
   end
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
