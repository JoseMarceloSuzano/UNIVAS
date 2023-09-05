package br.poo.geradorestatisticasbr;

public class Main {

	public static void main(String[] args) {
		Jogo jogo = new Jogo(70, 96);
		TimeMandante mandante = new TimeMandante(2, 4, 6, 8, 10, 12, 14);
		TimeVisitante visitante = new TimeVisitante(3, 6, 9, 12, 15, 18, 21);
		GeradorEstatisticas gerador = new GeradorEstatisticas();
		EstatisticaTempoJogo tempoJogo = gerador.calcularTemposJogo(mandante, visitante, jogo);
		EstatisticaGolsChutes chutesGol = gerador.calcularChutesGol(mandante, visitante, jogo);
		EstatisticaFaltasCartoes faltasCartoes = gerador.calcularFaltasCartoes(mandante, visitante, jogo);
		System.out.println(tempoJogo.imprimir());
		System.out.println(chutesGol.imprimir());
		System.out.println(faltasCartoes.imprimir());
	}

}
