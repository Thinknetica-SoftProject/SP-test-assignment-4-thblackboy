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
def differ(str_arr)
  max= -(2**(0.size * 8 -2))
  min = (2**(0.size * 8 -2) -1)
  (0..str_arr.size).each { |i|

    if str_arr[i].to_i > max
      max = str_arr[i].to_i
    end
    if i.to_i < min
      min = str_arr[i].to_i
    end
  }


  return max-min
end

arr = File.readlines("./data/3.txt")
my_num=0
for item in (0..arr.size-1) do
  arr2=arr[item].split(" ").reject(&:empty?).map(&:to_i)
  my_num+=(arr2.max-arr2.min)

  end


puts my_num
