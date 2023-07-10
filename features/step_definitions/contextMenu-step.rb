Dado("que eu acesse a tela de Context contextMenu") do
  visit "https://the-internet.herokuapp.com/context_menu"
  find(:xpath, '//a[text()="Context Menu"]').click
end

Dado("eu clique em uma determinada area") do
  area_click = find("#hot-spot")
  area_click.right_click
  sleep 1
  alerta = page.driver.browser.switch_to.alert.text
  puts alerta
  expect(alerta).to eql "You selected a context menu"
end

Então("deve ser exibido que eu realizei o clique") do
  pending # Write code here that turns the phrase above into concrete actions
end
