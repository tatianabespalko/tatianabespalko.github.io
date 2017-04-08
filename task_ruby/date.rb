require "date"
# Посмотрим, в какую неделю попадает 1 мая в 2002 и 2005 годах.
t1 = Time.local(2016,04,1)
d1 = Date.new(2016,04,1)
week1a = t1.strftime("%U").to_i # 11
week1b = t1.strftime("%W").to_i # 11
week1c = d1.cweek #10
t2 = Time.local(2005,5,1)
d2 = Date.new(2005,5,1)
week2a = t2.strftime("%U").to_i # 18
week2b = t2.strftime("%W").to_i # 18
week2c = d2.cweek               # 17

Time
t0 = Time.new
Time.now: t0 = Time.now


# require 'date'
# 2.2.1 :003 > Date.new(2016,3,15).cweek
# => 11 
