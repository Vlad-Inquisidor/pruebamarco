class Board
a = [["POEMA", "CANCION", "RONDAS", "RIMAS"],"POEMAXCXXXXAXXSXNXAAXCMXDXIXXNROXXOXNXXR"]
b = [["MANGO", "SANDIA", "MELON", "PLATANO"],"XXXXPXXXXLXAMXAXIEXTXDLXAXNOXNMANGOXSXXX"]
c = [["ROJO", "VERDE", "AZUL", "NEGRO"],"OJORXXXXXXXEXXOXDXRXXRGLXXEXUXNVXZXXXXAX"]
@@boards_templates =  a

  def initialize
     complete_board!
  end

  def to_s
    dato = complete_board!
    num = [5, 10, 15, 20, 25, 30, 35, 40, 45, 50]
    arrayTemp = []
    sopa_letras = []
  for i in 0..40      # Hace un arreglo de arreglos de 8 filas por 5 columnas
    if num.include? i
      sopa_letras << arrayTemp
      arrayTemp = []
    end
    arrayTemp << dato[i]
  end
    #8.times{ |x| p sopa_letras[x]}
    p sopa_letras
  end

  def includee?(word)
   # sopa = to_s          # Genera la sopa de letras con letras aleatorias

    sopa =  ["P", "O", "E", "M", "A"],  # Sopa de letras definida para Test
         ["A", "C", "Y", "B", "W"],
         ["H", "A", "P", "H", "S"],
         ["S", "N", "P", "A", "A"],
         ["M", "C", "M", "Q", "D"],
         ["F", "I", "E", "K", "N"],
         ["R", "O", "A", "W", "O"],
         ["K", "N", "U", "U", "R"]
  puts ""
  8.times{ |x| p sopa[x]}
  puts ""


word.each do |palabra|
columna = []
  for colum in 0..4
    8.times { |row| columna << sopa[row][colum] }
      if (columna.join).include? palabra
         p "#{palabra} Se encuentra en la columna #{colum}"
      elsif (columna.join).reverse.include? palabra
        p "#{palabra} Se encuentra en la columna #{colum}"
      end
    columna = []
  end

  for row in 0..7
    if (sopa[row].join).include? palabra
        p "#{palabra} Se encontro en la fila #{row}"
    elsif (sopa[row].join.reverse).include? palabra
        p "#{palabra} Se encontro en la fila #{row}"
    end
  end

a_comparar = []
for row in 1..7
  colum = 0
  dato = row
    while dato+1 != colum
    a_comparar << sopa[row][colum]
      row -= 1
      colum += 1
    end

    if (a_comparar.join).include? palabra
      p "#{palabra} Se encuentra en la diagonal de la fila #{dato} columna 0"
    end
    colum = 0
    a_comparar = []
end
end # termina each word

end
  private

  def complete_board!
    #Este método debe rellenar un tablero incompleto, en otras palabras cambiar las "x" por letras random.
    dato = @@boards_templates[1].chars
    dato.map! {|letra| letra == 'X' ? letra = rand(65..90).chr : letra = letra }
  end
end

palabras_testa = ["POEMA", "CANCION", "RONDAS", "RIMAS"]
palabras_testb = ["MANGO", "SANDIA", "MELON", "PLATANO"]
palabras_testc = ["ROJO", "VERDE", "AZUL", "NEGRO"]
board = Board.new
puts board
board.includee?(palabras_testa)
