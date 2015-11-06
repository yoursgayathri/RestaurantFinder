Given /the following restaurants exist/ do |restaurants_table|
  restaurants_table.hashes.each do |restaurant|
    Restaurant.create!(restaurant)
  end
end

Then /I should see "(.*)" before "(.*)"/ do |e1, e2|
  all = page.body
  if all.include?(e1) & all.include?(e2)
    all.index(e1).should <= all.index(e2) 
  end
end


