public class ContaEspecial extends ContaBancaria {
    private Cliente titular;
    private double limite;

    public ContaEspecial(Cliente titular, double saldoInicial, double limite) {
        super(saldoInicial >= -limite ? saldoInicial : 0);
        if (limite >= 0) {
            if (saldoInicial >= -limite) {
                this.limite = limite;
                this.titular = titular;
            } else {
                System.out.println("saldo incompativel com limite!!! não foi possivel criar conta especial");
            }
        } else {
            System.out.println("limite não pode ser negativo!!! não foi possivel criar conta especial");
        }
    }

    @Override
    public boolean saque(double valor) {
        if (valor > 0 && (this.saldo + this.limite) >= valor) {
            this.saldo -= valor;
            return true;
        } else {
            System.out.println("Valor de Saque inválido!! valor menor que 0 ou/e limite insuficiente!");
            return false;
        }
    }
}
