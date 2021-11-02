## Задача №2:
#
# Ганс Грубер в это время пытается намайнить биткоины - чтобы сделать это ему нужно найти MD5 хэши,
# которые начинаются как минимум с 5 нулей.
# Значение, хэш которого нужно посчитать - это инпут (пользовательский ввод), за которым следует положительное число (1, 2, 3 итд).
#
# Например, для инпута abcdef результатом будет число 609043, потому что MD5 хэш для abcdef609043 начинается с 5 нулей (000001dbbfa...)
# и это минимальное такое число.
#
# Помогите Гансу найти это число.
#
# Требования к решению:
# - Инпут вводится пользователем (получение данных в коде через команду gets)
# - Результат (число) выводится через puts
#
#
## Решение:

require 'digest'

input = gets


flag=0

counter = 1

md5 = Digest::MD5.new

while flag==0 do
    stringToHash = input.chomp+counter.to_s
    md5 << stringToHash
    hash = md5.hexdigest
    startHash = hash[0..4]

    startHash.each_char { |item|
        if item=="0"
            flag=1
        else
            flag=0
        end
        break if item != "0"        
    }
    md5.reset
    if flag ==1
        puts counter
    else
        counter+=1
    end
end