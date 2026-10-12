package edu.una.aula.modelo;

public class Car extends Veiculo{
    @Override
    public void acelerar() {
        setVelocidade(getVelocidade() + 15);

        System.out.println("O carro: " + getCor() + " Acelerou!! Velocidade atual: " + getVelocidade());
    }

    @Override
    public void frear() {
        setVelocidade(getVelocidade() - 15);

        System.out.println("O carro: " + getCor() + " Freiou!! Velocidade atual: " + getVelocidade());
    }
}
