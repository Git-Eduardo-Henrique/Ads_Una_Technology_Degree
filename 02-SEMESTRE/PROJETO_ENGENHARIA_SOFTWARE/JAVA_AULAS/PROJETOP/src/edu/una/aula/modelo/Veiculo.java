package edu.una.aula.modelo;

public abstract class Veiculo {
    private String cor;
    private int ano;
    private int velocidade = 0;

    public abstract void acelerar();

    public abstract void frear();

    public String getCor() {
        return cor;
    }

    public void setCor(String cor) {
        this.cor = cor;
    }

    public void setAno(int ano){
        this.ano = ano;
    }

    public void setVelocidade(int velocidade) {
        this.velocidade = velocidade;
    }

    public int getVelocidade() {
        return velocidade;
    }

    public int getAno() {
        return ano;
    }

    public void mostrarinfos(){
        System.out.println("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=");
        System.out.println("Cor do carro: " + cor);
        System.out.println("Ano de lançamento: " + ano);
        System.out.println("Velocidade atual: " + velocidade);
        System.out.println("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=");
    }
}
