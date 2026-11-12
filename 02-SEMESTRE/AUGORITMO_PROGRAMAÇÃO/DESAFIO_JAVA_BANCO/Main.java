public class Main{
     public static void main(String[] args){
         Cliente joao = new Cliente("João");
         Cliente maria = new Cliente("Maria");
         Cliente pedro = new Cliente("Pedro");
         ContaBancaria cj = new ContaEspecial(joao, 500.00, 300.00);
         ContaBancaria cm = new ContaComum(maria, 400.00);
         ContaBancaria cp = new ContaComum(pedro, 100.00);

         Banco banco = new Banco();
         banco.saque(cj, 650.00); // saldo -150
         banco.saque(cm, 450.00); // negado, saldo 400
         banco.transferir(cm, cp, 150.00); // maria 250 e pedro 250
         banco.depositar(cp, 50.00); // pedro 300
         banco.transferir(cj, cm, 100.00); // joao -250 e maria 350
         banco.saque(cj, 80.00); // negado, saldo - 250
         banco.transferir(cp, cj, 200.00); // pedro 100 e joao -50
         banco.saque(cp, 10.00); // pedro 90
         // maria 350 e joao -50 e pedro 90

         System.out.println("João: R$" + cj.getSaldo());
         System.out.println("Maria: R$" + cm.getSaldo());
         System.out.println("Pedro: R$" + cp.getSaldo());
     }
}