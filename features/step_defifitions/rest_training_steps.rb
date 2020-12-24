# encoding: utf-8

Then(/^Складываю число (.*) и число (.*)$/) do |x, y|
  @sum = x.to_i + y.to_i
  Kernel.puts "@sum = #{@sum}"
end

Then(/^Умножаю результат сложения на число (.*)$/) do |z|
 @multiplication = @sum * z.to_i
end

Then(/^Результат умножения = (.*)$/) do |result|
  expect(@multiplication).to eq(result.to_i)
end