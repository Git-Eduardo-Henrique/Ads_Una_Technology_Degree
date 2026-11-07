public class ContaBancaria {
    private String usuario;
    private String conta;
    private double saldo = 0;

    public ContaBancaria(String usuario, String conta){
        this.usuario = usuario;
        this.conta = conta;
    }

    public void getSaldo(){
        System.out.println("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=");
        System.out.println("Saldo do usuario " + this.usuario + " | R$" + this.saldo);
    }

    public void getDados(){
        System.out.println("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=");
        System.out.println("Usuário da conta: " + this.usuario);
        System.out.println("Número da conta bancária: " + this.conta);
    }

    public void Deposito(double valor){
        if ( valor > 0 ) {
            this.saldo += valor;
            System.out.println("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=");
            System.out.println("Foi depósitado R$" + valor + " na conta " + conta + " usuario " + usuario);
            System.out.println("Saldo total atual: R$" + this.saldo);
        } else {
            System.out.println("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=");
            System.out.println("Valor inválido! não foi possível realizar o depósito");
        }
    }

    public void Saque(double valor){
        if ( valor > 0 && this.saldo >= valor ){
            this.saldo -= valor;
            System.out.println("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=");
            System.out.println("Foi saquado R$" + valor + " da conta " + conta + " usuario " + usuario);
            System.out.println("Saldo total atual: R$" + this.saldo);
        } else {
            System.out.println("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=");
            System.out.println("Valor inválido! não foi possível realizar o saque");
        }
    }
}


