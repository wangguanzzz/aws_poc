files = Dir.glob("/*KB.csv")
files.each do | file|
        result = 0
        number = 0
        File.open(file,"r") do |f|
                f.each_line do | line |
                  temp = line.split(',')[1].to_i
                  if temp > 0
                    result += temp
                    number += 1
                  end
                end
        end
        if number > 0
          average = result / number
          file = file[1..-1]
          `echo "#{file},#{average}" >> /summary.csv`
        end
end