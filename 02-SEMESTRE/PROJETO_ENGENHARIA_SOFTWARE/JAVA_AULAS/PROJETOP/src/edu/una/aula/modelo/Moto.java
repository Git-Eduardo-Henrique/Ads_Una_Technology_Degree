package edu.una.aula.modelo;

public class Moto extends Veiculo{
    @Override
    public void acelerar() {
        setVelocidade(getVelocidade() + 10);

        System.out.println("A moto: " + getCor() + " Acelerou!! Velocidade atual: " + getVelocidade());
    }

    @Override
    public void frear() {
        setVelocidade(getVelocidade() - 10);

        System.out.println("A moto: " + getCor() + " Freiou!! Velocidade atual: " + getVelocidade());
    }
}
