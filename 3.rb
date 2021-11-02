## Задача №3:
#
# Джон добрался до этажа с бомбой, но у него на пути стоит дверь с кодовым замком и рядом бумажка с инструкциями (файл data/3.txt)
#
# Чтобы узнать код от замка, ему нужно для каждой строки найти разницу между наибольшим и наименьшим числами и потом сложить полученные значения
#
## Требования к решению:
# - Входные данные находятся в файле data/3.txt (разделитель значений - символ табуляции)
# - Результат должен быть выведен в консоль командой puts
#
## Решение:


mode = "r"

current_path = File.dirname(__FILE__)
file_path = current_path + "/data/3.txt"
file = File.open(file_path, mode)

instructions = file.readlines
summ=0

for i in instructions
    mass = i.split("\t")
    min = mass[0].to_i
    max = mass[0].to_i
    mass.each{ |item|
        if item.to_i < min
            min = item.to_i
        elsif item.to_i > max
            max = item.to_i
        end
    }

    dif = max-min
    summ += dif

end

puts summ

file.close