# wp4

## Usando Maquina Virtual e Vagrant box
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
    # VAGRANT-BEGIN: 501 5b17274b-71e8-404d-a816-500063232e2b
    "/Users/joao_parana/tmp/example.dev" 192.168.50.5 -alldirs -mapall=501:20
    # VAGRANT-END: 501 5b17274b-71e8-404d-a816-500063232e2b
    ping example.dev
    open http://example.dev
    vagrant ssh
    #

That's all folks !
    