package br.poo.geradorestatisticasbr;

public class TimeMandante {
	private int golsTimeMandante;
	private int chutesAGolTimeMandante;
	private int posseBolaTimeMandanteDefesaEmMin;
	private int posseBolaTimeMandanteAtaqueEmMin;
	private int faltasTimeMandante;
	private int cartoesAmarelosMandante;
	private int cartoesVermelhosMandante;
	
	
	public int getGolsTimeMandante() {
		return golsTimeMandante;
	}
	public void setGolsTimeMandante(int golsTimeMandante) {
		this.golsTimeMandante = golsTimeMandante;
	}
	public int getChutesAGolTimeMandante() {
		return chutesAGolTimeMandante;
	}
	public void setChutesAGolTimeMandante(int chutesAGolTimeMandante) {
		this.chutesAGolTimeMandante = chutesAGolTimeMandante;
	}
	public int getPosseBolaTimeMandanteDefesaEmMin() {
		return posseBolaTimeMandanteDefesaEmMin;
	}
	public void setPosseBolaTimeMandanteDefesaEmMin(int posseBolaTimeMandanteDefesaEmMin) {
		this.posseBolaTimeMandanteDefesaEmMin = posseBolaTimeMandanteDefesaEmMin;
	}
	public int getPosseBolaTimeMandanteAtaqueEmMin() {
		return posseBolaTimeMandanteAtaqueEmMin;
	}
	public void setPosseBolaTimeMandanteAtaqueEmMin(int posseBolaTimeMandanteAtaqueEmMin) {
		this.posseBolaTimeMandanteAtaqueEmMin = posseBolaTimeMandanteAtaqueEmMin;
	}
	public int getFaltasTimeMandante() {
		return faltasTimeMandante;
	}
	public void setFaltasTimeMandante(int faltasTimeMandante) {
		this.faltasTimeMandante = faltasTimeMandante;
	}
	public int getCartoesAmarelosMandante() {
		return cartoesAmarelosMandante;
	}
	public void setCartoesAmarelosMandante(int cartoesAmarelosMandante) {
		this.cartoesAmarelosMandante = cartoesAmarelosMandante;
	}
	public int getCartoesVermelhosMandante() {
		return cartoesVermelhosMandante;
	}
	public void setCartoesVermelhosMandante(int cartoesVermelhosMandante) {
		this.cartoesVermelhosMandante = cartoesVermelhosMandante;
	}
	
	public TimeMandante(int golsTimeMandante, int chutesAGolTimeMandante, int posseBolaTimeMandanteDefesaEmMin,
			int posseBolaTimeMandanteAtaqueEmMin, int faltasTimeMandante, int cartoesAmarelosMandante,
			int cartoesVermelhosMandante) {
		super();
		this.golsTimeMandante = golsTimeMandante;
		this.chutesAGolTimeMandante = chutesAGolTimeMandante;
		this.posseBolaTimeMandanteDefesaEmMin = posseBolaTimeMandanteDefesaEmMin;
		this.posseBolaTimeMandanteAtaqueEmMin = posseBolaTimeMandanteAtaqueEmMin;
		this.faltasTimeMandante = faltasTimeMandante;
		this.cartoesAmarelosMandante = cartoesAmarelosMandante;
		this.cartoesVermelhosMandante = cartoesVermelhosMandante;
	}
	
}
