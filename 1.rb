## Задача №1:
#
# Джон Макклейн пытается найти этаж на котором заложена бомба и у него есть список инструкций (в файле data/1.txt):
#
# (- Джон должен подняться на этаж выше
# ) - Джон должен опуститься на этаж ниже
#
# Поиск начинается с нулевого этажа. 
#
# На каком этаже находится бомба?
#
## Требования к решению:
# - Входные данные находятся в файле data/1.txt
# - Результат должен быть выведен в консоль командой puts
#
#
## Решение:


mode = "r"

current_path = File.dirname(__FILE__)
file_path = current_path + "/data/1.txt"
file = File.open(file_path, mode)

instructions = file.read

floor = 0; 

instructions.each_char { |item|
    if item == "("
        floor+=1
    elsif item ==")"
        floor-=1
    end
}

puts floor

file.close
