public class ContaComum extends ContaBancaria {
    private Cliente titular;

    public ContaComum(Cliente titular, double saldoInicial) {
        super(saldoInicial >= 0 ? saldoInicial : 0);
        if (saldoInicial >= 0) {
            this.titular = titular;
        } else {
            System.out.println("Não foi possivel criar conta, valor inicial inválido!!!");
        }
    }
}
