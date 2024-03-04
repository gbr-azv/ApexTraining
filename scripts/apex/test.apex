List<String> lst = new List<String>{'123456_CPF', '54321_RG', '341635_CPF', '036193_CPF'};

List<String> splited = new List<String>();

for (String str : lst ) {
    List<String> parts = str.split('_');
    splited.addAll(parts);
}

System.debug(splited);