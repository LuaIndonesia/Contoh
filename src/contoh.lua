local Contoh = {}
Contoh.__index = Contoh

function Contoh:baru(nama, umur, alamat)
   local objek = setmetatable({}, Contoh)
   objek.nama = nama
   objek.umur = umur
   objek.alamat = alamat
   return objek
end

function Contoh:sapa()
   print("Halo!, nama saya ".. self.nama .. ", umur saya " .. self.umur .. " tahun, dan alamat saya di " .. self.alamat .." :).")
end

function Contoh.halo()
   print("\x1b[33mHalo Dunia :D!\x1b[0m")
end

function Contoh.pesan_acak()
   local pesan = {
      "Santai bro santai😎!\n",
      "Dingin tetapi tidak kejam🥶\n",
      "Menyala abangku!!!😎🔥...\n",
      "Sedia aku sebelum hujan🌧️☂️\n",
      "Hanya cinta dan malam, yang tidak akan pernah habis🌆❤️\n"
   }
  local function shuffle(t)
       local n = #t
       for i = n, 2, -1 do
          local j = math.random(i)
          t[i], t[j] = t[j], t[i]
       end
  end
   shuffle(pesan)
   print(pesan[1])
end

function Contoh.memuat(presentase)
   local bar = ""
   for i = 1, 20 do
      if i <= (presentase / 5) then
          bar = bar .. "#"
      else
          bar = bar .. "-"
      end
      io.write("\rMemuat... [".. bar .. "] ".. presentase .. "%")
      io.flush()
   end

   for i = 0, 100, 5 do
      memuat(i)
      -- Implementasi loading progress...
      os.execute("sleep 0.5")
   end
   print("\nSelesai!")
end

function Contoh.asciify(teks)
   return "\x1b[34m***[\x1b[0m\x1b[33m<( "..teks.." )>\x1b[0m\x1b[34m]***\x1b[0m"
end

function Contoh.ascii_hewan(hewan)
   hewan = hewan:lower()
   if hewan == "kelinci" then
      return [[
          ()_()    •-------------------•
          (• •)  \27[33mAku cinta kamu!\27[0m
          (>❤️<)   •-------------------•
          ()..()
      ]]
   else
      return "Format ascii art hewan tidak didukung!"
   end
end

function Contoh.unduh()
  for k, v in pairs(Contoh) do
    if type(v) == "function" and v ~= "baru" and v ~= "unduh" then
       _G[k] = v
    end
  end
end

function Contoh.tambah(x, y)
   return x + y
end

function Contoh.kurang(a, b)
   return a - b
end

function Contoh.kali(w, x)
   return w * x
end

function Contoh.bagi(y, z)
   if z == 0 then
      error("Tidak dapat dibagi dengan 0!")
   else
      return y / z
   end
end

return Contoh
