Given(/^que abri la app$/) do
	visit '/'
end

Then(/^debo ver "([^"]*)"$/) do |texto|
	expect(page.body).to match /#{texto}/m
end

Given(/^que inicie el juego$/) do
  step "que abri la app"
  step 'debo ver "AHORCADO XP"'
end
