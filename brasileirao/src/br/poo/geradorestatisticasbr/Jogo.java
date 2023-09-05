package br.poo.geradorestatisticasbr;

public class Jogo {
	
	private int tempoTotalBolaRolandoEmMin;
	private int tempoTotalJogoEmMin;
	
	
	public int getTempoTotalBolaRolandoEmMin() {
		return tempoTotalBolaRolandoEmMin;
	}
	
	public int getTempoTotalJogoEmMin() {
		return tempoTotalJogoEmMin;
	}

	public Jogo(int tempoTotalBolaRolandoEmMin, int tempoTotalJogoEmMin) {
		super();
		this.tempoTotalBolaRolandoEmMin = tempoTotalBolaRolandoEmMin;
		this.tempoTotalJogoEmMin = tempoTotalJogoEmMin;
	}
	
}
