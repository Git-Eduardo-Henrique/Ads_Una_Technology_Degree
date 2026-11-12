public class Banco {
    public boolean saque(ContaBancaria conta, double valor) {
        return conta.saque(valor);
    }

    public boolean depositar(ContaBancaria conta, double valor) {
        if (valor > 0) {
            conta.depositar(valor);
            return true;
        } else {
            return false;
        }
    }

    public boolean transferir(ContaBancaria conta1, ContaBancaria conta2, double valor) {
        if (conta1.saque(valor)) {
            conta2.depositar(valor);
            return true;
        } else {
            return false;
        }
    }
}
