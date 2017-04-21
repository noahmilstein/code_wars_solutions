def heavy_metal_umlauts(boring_text)
  umlauts = {
    "A" => "\u00c4",
    "E" => "\u00cb",
    "I" => "\u00cf",
    "O" => "\u00d6",
    "U" => "\u00dc",
    "Y" => "\u0178",
    "a" => "\u00e4",
    "e" => "\u00eb",
    "i" => "\u00ef",
    "o" => "\u00f6",
    "u" => "\u00fc",
    "y" => "\u00ff"
  }

  text_array = boring_text.chars
  text_array.each_with_index do |letter, index|
    umlauts.any? do |umlaut|
      if letter == umlaut[0]
        text_array[index] = umlaut[1]
      end
    end
  end
  return text_array.join
end

# def heavy_metal_umlauts(boring_text)
#   boring_text.tr("AEIOUYaeiouy", "\u00c4\u00cb\u00cf\u00d6\u00dc\u0178\u00e4\u00eb\u00ef\u00f6\u00fc\u00ff")
# end
