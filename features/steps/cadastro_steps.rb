Dado('que acesso a tela de Cadastro') do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Quando('clico no menu mais') do
    find_element(xpath:"//android.widget.ImageView[@text='']").click
  end
  
  Quando('clico no cadastrar novo') do
    find_element(id:"br.com.dudstecnologia.cadastrodeclientes:id/floating_novo").click
  end
  
  Quando('insiro os dados para Cadastro') do |table|
    find_element(id:"br.com.dudstecnologia.cadastrodeclientes:id/editNome").send_Keys(nome)
  end
  Quando('clico no Salvar') do                                                 
    find_element(id:"br.com.dudstecnologia.cadastrodeclientes:id/btnSalvar").click
  end                                                                           
  
  Então('devo ver a notificação: {string}') do |notice|
    cadastro_realizado = find_element(xpath: "//android.widget.TextView[@text='Cadastro efetuado com sucesso']")
    expect(cadastro_realizado).to eql notice
  end
  
  Quando('não insiro o nome para Cadastro') do
    find_element(id:"br.com.dudstecnologia.cadastrodeclientes:id/editNome").send_Keys("")
  end
                                                        
  Quando('clico no salvar') do                                                 
    find_element(id:"br.com.dudstecnologia.cadastrodeclientes:id/btnSalvar").click
  end