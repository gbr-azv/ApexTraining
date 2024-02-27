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
    }

    if (Trigger.isAfter) {
        //* DEPOIS DA ACAO - DEPOIS DE INSERIR NO BANCO DE DADOS
        if(Trigger.isInsert) {
            for (Account acc : Trigger.new) {
                System.debug('A conta que houve uma acao DEPOIS de inserir no db é: ' + acc.Name + ' ' + acc.Id);
            }
        }
    }
}