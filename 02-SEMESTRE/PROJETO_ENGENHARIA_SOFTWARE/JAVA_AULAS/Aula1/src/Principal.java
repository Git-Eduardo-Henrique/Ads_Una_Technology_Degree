public class Principal {
    public static void main(String[] args) {
        ContaBancaria contaEdu = new ContaBancaria("Eduardo", "12345");
        contaEdu.getDados();
        contaEdu.getSaldo();

        contaEdu.Deposito(100.99);
        contaEdu.Saque(55.99);
        contaEdu.getSaldo();

        ContaBancaria contaIrineu = new ContaBancaria("Irineu", "06924");
        contaIrineu.getDados();
        contaIrineu.getSaldo();

        contaIrineu.Deposito(255.69);
        contaIrineu.Saque(199.99);
        contaIrineu.getSaldo();
    }
}


