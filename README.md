# wp4

## Workflow para usar este projeto

    git clone https://github.com/joao-parana/wp4.git
    cd bedrock-ansible
    vagrant up
    #
    # altere alguma definição de serviço provisionado (sob demanda)
    #
    vagrant provision
    #
    # Observe os Logs do Provisionamento e verifique se ocorre algum erro
    # O normal é não aparecer nenhum erro ! 
    #
    # Faça desenvolvimento e testes 
    # 
    # Salve no github
    #
    git status
    git add <recursos>
    git commit -m "<seu-comentário-cheio-de-significado>"
    git push -u origin master
    #
    # Retire a maquina Virtual do Ar para economizar recursos quando
    # não estiver desenvolvendo ou testando o Aplicativo ou Site.
    # 
    vagrant halt 

## Usando Maquina Virtual e Vagrant box para construir um ambiente como este.
Este é o jeito facil de construir este ambiente.

    ssh-keygen -t rsa -C "seu-email@gmail.com"
    brew update
    brew install ansible
    git clone https://github.com/roots/bedrock.git example.dev
    git clone https://github.com/roots/bedrock-ansible.git
    cd bedrock-ansible 

    vagrant plugin install vagrant-bindfs
    vagrant plugin install vagrant-hostsupdater
    vagrant up

    # Observe que é pedido a senha do sudo, pois o Script do Vagrant cria / atualiza o 
    # arquivo /etc/hosts incluindo uma entrada para  example.dev  e também 
    # cria / atualiza o arquivo /etc/exports que define os mapeamentos no NFS 
    # para o nosso diretório example.dev 
    # 
    #
    # Veja exemplos de comandos abaixo para verificar isso: 
    cat /etc/exports
    ping example.dev
    open http://example.dev
    vagrant ssh
    #

That's all folks !
