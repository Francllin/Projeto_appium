Quando(/^que eu clique no botão \+ para cadastar um new notebook$/) do
  FuncionalidadesOrgzly.new.botao_ok.click
  FuncionalidadesOrgzly.new.close_drawer.click
  WaitElement.new.validar_elemento_existente('fab')
  FuncionalidadesOrgzly.new.add_notebooks.click
end

Quando(/^preencho o campo name$/) do
   $fake_name = Faker::Name.name
   WaitElement.new.validar_elemento_existente('alertTitle.')
   FuncionalidadesOrgzly.new.nome_notebook.send_keys($fake_name)
end

Quando(/^e confirmo a criação de um new notebook$/) do
  FuncionalidadesOrgzly.new.botao_crear.click
end

Entao(/^a será apresentada a new notebook criada$/) do
  WaitElement.new.validar_elemento_existente('item_book_title')
  expect(FuncionalidadesOrgzly.new.titulo_nome_notebook($fake_name)).to eq true
end