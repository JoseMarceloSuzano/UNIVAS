package br.poo.geradorestatisticasbr;

public class GeradorEstatisticas {
	
	public EstatisticaTempoJogo calcularTemposJogo(TimeMandante mandante, TimeVisitante visitante, Jogo jogo) {
		return new EstatisticaTempoJogo(
				visitante.getPosseBolaTimeVisitanteDefesaEmMin(), 
				visitante.getPosseBolaTimeVisitanteAtaqueEmMin(),
				mandante.getPosseBolaTimeMandanteDefesaEmMin(), 
				mandante.getPosseBolaTimeMandanteAtaqueEmMin(),
				jogo.getTempoTotalBolaRolandoEmMin(),
				jogo.getTempoTotalJogoEmMin()
			);
	}
	
	public EstatisticaFaltasCartoes calcularFaltasCartoes(TimeMandante mandante, TimeVisitante visitante, Jogo jogo) {
		return new EstatisticaFaltasCartoes(
				visitante.getCartoesAmarelosVisitante(),
				visitante.getCartoesVermelhosVisitante(),
				mandante.getCartoesAmarelosMandante(),
				mandante.getCartoesVermelhosMandante(),
				visitante.getFaltasTimeVisitante(),
				mandante.getFaltasTimeMandante()
			);
	}
	
	public EstatisticaGolsChutes calcularChutesGol(TimeMandante mandante, TimeVisitante visitante, Jogo jogo) {
		return new EstatisticaGolsChutes(visitante.getGolsTimeVisitante(), 
				mandante.getGolsTimeMandante(), 
				visitante.getChutesAGolTimeVisitante(), 
				mandante.getChutesAGolTimeMandante()
			);
	}
	
}
