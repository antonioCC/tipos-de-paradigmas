# Creamos la clase Figura, con las funciones básicas de una figura geometrica
class Figura
  attr_reader :area, :perimetro
end

# Creamos la clase Rectangulo que recibe 2 parametros base y altura. Y partir
# de estos datos calculamos el area y el perimetro. Podemos acceder a las
# variables de instancia @area y @perimetro por que heredamos las funciones
# de la clase Figure
class Rectangulo < Figura
  def initialize(base, altura)
    @base = base
    @altura = altura
    @area = @base * @altura
    @perimetro = @base * 2 + @altura * 2
  end
end

# Creamos la clase Cuadrado que recibe 2 parametros, base y altura, corre el método
# initialize de la clase Rectangulo, de este modo no tenemos que definir nuevamente
# las variables de instancia ni los calculos de area y perimetro utilizando la
# palabra clave
class Cuadrado < Rectangulo
  def initialize(base, altura)
    @base = base
    @altura = altura
    if es_cuadrado?
      @area = @base * @altura
      @perimetro = @base * 2 + @altura * 2
    else
      @area = "No se puede calcular el area"
      @perimetro = "No se puede calcular el perimetro"
      puts "La figura no es un Cuadrado"
    end
  end

  private
  def es_cuadrado?
    @base == @altura
  end
end

class Circulo < Figura
  def initialize(radio)
    @radio = radio
    @area = Math::PI * @radio ** 2
    @perimetro = 2 * Math::PI * @radio
  end
end
puts

r1 = Rectangulo.new(2, 4)
puts "Se formó un rectangulo con 2cm de base y 4cm de altura"
puts "El area del rectangulo es: #{r1.area}"
puts "El perimetro del rectangulo es: #{r1.perimetro}"

puts

c1 = Circulo.new(3)
puts "Se formo un Circulo con un radio de 3cm"
puts "El area del ciculo es: #{c1.area}"
puts "El perimetro del circulo es: #{c1.perimetro}"

puts

s1 = Cuadrado.new(2, 2)
puts "Se formo un Cuadrado con 2cm de base y 2 cm de altura"
puts "El area del cuadrado es: #{s1.area}"
puts "El perimetro del cuadrado es: #{s1.perimetro}"

puts

puts "Se formo un Cuadrado con 2cm de base y 3cm de altura"
s2 = Cuadrado.new(2, 3)
puts s2.area
puts s2.perimetro