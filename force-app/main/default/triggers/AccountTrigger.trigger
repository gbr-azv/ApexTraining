trigger AccountTrigger on Account ( before insert,
                                    before update,
                                    before delete,

                                    after insert,
                                    after update,
                                    after delete,
                                    after undelete
                                )
{
    if (Trigger.isBefore) {
        //* DEPOIS DA ACAO - ANTES DE INSERIR NO BANCO DE DADOS
        if(Trigger.isInsert) {
            for (Account acc : Trigger.new) {
                System.debug('A conta que houve uma acao ANTES de inserir no db é: ' + acc.Name);
            }
        }

        if(Trigger.isDelete) {
            for(Account acc : Trigger.old) { //? SOMENTE É POSSÍVEL USAR .OLD EM ISDELETE
                System.debug('O nome da conta que vai para a lixeira: ' + acc.Name);
            }
        }

        if(Trigger.isUndelete) {
            for(Account acc : Trigger.new) {
                System.debug('O nome da conta que vai sair da lixeira: ' + acc.Name);
            }
        }
    }

    if (Trigger.isAfter) {
        //* DEPOIS DA ACAO - DEPOIS DE INSERIR NO BANCO DE DADOS
        if(Trigger.isInsert) {
            for (Account acc : Trigger.new) {
                System.debug('A conta que houve uma acao DEPOIS de inserir no db é: ' + acc.Name + ' ' + acc.Id);
            }
        }

        if(Trigger.isUpdate) {
        //* DEPOIS DA ACAO - DEPOIS DE ATUALIZAR NO BANCO DE DADOS
            for (Account acc : Trigger.old) {
                System.debug('Dados ANTES do update: ' + acc.Name);     
            }

            for(Account acc : Trigger.new) {
                System.debug('Dados DEPOIS do update: ' + acc.Name);
            }
        }

        if(Trigger.isDelete) {
            for(Account acc : Trigger.old) { //? SOMENTE É POSSÍVEL USAR .OLD EM ISDELETE
                System.debug('O nome da conta foi para a lixeira: ' + acc.Name);
            }
        }

        if(Trigger.isUndelete) {
            for(Account acc : Trigger.new) {
                System.debug('O nome da conta foi retirado da lixeira: ' + acc.Name);
            }
        }
    }
}