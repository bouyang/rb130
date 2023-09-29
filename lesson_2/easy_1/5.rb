ENCRYPTED_PIONEERS = [
  'Nqn Ybirynpr',
  'Tenpr Ubccre',
  'Nqryr Tbyqfgvar',
  'Nyna Ghevat',
  'Puneyrf Onoontr',
  'Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv',
  'Wbua Ngnanfbss',
  'Ybvf Unvog',
  'Pynhqr Funaaba',
  'Fgrir Wbof',
  'Ovyy Tngrf',
  'Gvz Orearef-Yrr',
  'Fgrir Jbmavnx',
  'Xbaenq Mhfr',
  'Fve Nagbal Ubner',
  'Zneiva Zvafxl',
  'Lhxvuveb Zngfhzbgb',
  'Unllvz Fybavzfxv',
  'Tregehqr Oynapu'
].freeze

def decipher(arr)
  result = []

  arr.each do |name|

    first_name = name.split.first.chars.map do |char|
      case char
      when 'a'..'m', 'A'..'M' then (char.ord + 13).chr
      when 'n'..'z', 'N'..'Z' then (char.ord - 13).chr
      else                         char
      end
    end.join

    last_name = name.split.last.chars.map do |char|
      case char
      when 'a'..'m', 'A'..'M' then (char.ord + 13).chr
      when 'n'..'z', 'N'..'Z' then (char.ord - 13).chr
      else                         char
      end
    end.join

    result << "#{first_name} #{last_name}"
  end

  result
end

p decipher(ENCRYPTED_PIONEERS)