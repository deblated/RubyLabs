puts "Введіть х: "
x = gets.chomp.to_f

#не знав в який з проміжків внести число -4 (в перший чи третій), тому відніс -4 до першого (задля зручності в case операторі)
#if else
if(x>=-4 && x<=0)
  y = ((((x-2).abs)/(x*x*Math.cos(x)))**(1/7.to_f))
  (((x-2).abs)/(x*x*Math.cos(x)))>0? y=y.abs : y=-(y.abs)
elsif (x>0 && x<=12)
  y = ((1/(((Math.tan(x+(1/Math.exp(x))))/(Math.sin(x)*Math.sin(x)))))**2)**(1/7.to_f)
else
  y = 1/(1+(x/(1+(x/(1+x)))))
end
puts "if-else: #{y}"

#case
case x
when (-4..0)
  y1 = ((((x-2).abs)/(x*x*Math.cos(x)))**(1/7.to_f))
  (((x-2).abs)/(x*x*Math.cos(x)))>0? y1=y1.abs : y1=-(y1.abs)
when (0..12) then y1 = ((1/(((Math.tan(x+(1/Math.exp(x))))/(Math.sin(x)*Math.sin(x)))))**2)**(1/7.to_f)
else y1 = 1/(1+(x/(1+(x/(1+x)))))
end
puts "case: #{y}"
