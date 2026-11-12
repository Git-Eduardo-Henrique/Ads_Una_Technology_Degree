public abstract class ContaBancaria {
    protected double saldo;

    public ContaBancaria(double saldoInicial) {
        this.saldo = saldoInicial;
    }

    public double getSaldo() {
        return saldo;
    }

    public void depositar(double valor) {
        if (valor > 0) {
            this.saldo += valor;
        } else {
            System.out.println("Valor de deposito inválido!! precisa ser maior do que 0");
        }
    }

    public boolean saque(double valor) {
        if (valor > 0 && this.saldo >= valor) {
            this.saldo -= valor;
            return true;
        } else {
            System.out.println("Valor de Saque inválido!! valor menor que 0 ou/e saldo insuficiente!");
            return false;
        }
    }
}

