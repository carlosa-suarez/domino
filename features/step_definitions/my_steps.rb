require './lib/juego'

Given(/^entro al juego$/) do
  visit '/'
end

Then(/^debo tener (\d+)$/) do |arg1|
  arg1 == @@juego.cantidad_fichas_cada_uno # Write code here that turns the phrase above into concrete actions
end
Then(/^debo tener (\d+) fichas y (\d+) jugadores$/) do |arg1, arg2|
  arg1 == @@juego.cantidad_fichas_cada_uno  && arg2 == @@juego.cantidad_jugadores# Write code here that turns the phrase above into concrete actions
end

When(/^reparto$/) do
  @@juego = Juego.new
  @@juego.cantidad_jugadores = 2
  @@juego.cantidad_fichas_cada_uno =7
end

Then(/^debo tener (\d+) fichas no repetidas$/) do |arg1|
  no_repetidas = true
end
