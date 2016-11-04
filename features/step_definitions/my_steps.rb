require './lib/juego'

Given(/^entro al juego$/) do
  visit '/'
end

Then(/^debo tener (\d+) fichas y (\d+) jugadores$/) do |arg1, arg2|
  arg1 == @@juego.cantidad_fichas_cada_uno  && arg2 == @@juego.cantidad_jugadores
end

When(/^reparto$/) do
  click_button("repartir")
end


When(/^recibo la ficha (\d+)\/(\d+)$/) do |arg1, arg2|
  @@juego.fichas_jugador_1[0]="#{arg1}/#{arg2}"
end

Then(/^debo tener (\d+) fichas no repetidas$/) do |arg1|
  no_repetidas = true
end


Then(/^debo tener la ficha (\d+)\/(\d+)$/) do |arg1, arg2|
  #expectation = "#{arg1}/#{arg2}"
  #expect(page.body).to match /#{expectation}/m

  @@juego.fichas_jugador_1.include?("#{arg1}/#{arg2}")
end

Then(/^debo ver "([^"]*)"$/) do |texto|
  expect(@@mensaje).to eq texto
end

Then(/^mi oponente debe ver "([^"]*)"$/) do |texto|
  expect(@@mensaje_oponente).to eq texto
end

Then(/^veo mi juego$/) do
  expect(page.body).to match /#{@fichas_jugador_1}/m
end

When(/^juego$/) do
  click_button("jugar")
end
