import { useState } from 'react'
import axios from 'axios';

function App() {
  const [conselho, setConselho] = useState('');
  const buscarConselhoAleatorio = () => {
    axios.get('https://api.adviceslip.com/advice')
      .then(res => {
        setConselho(res.data.slip.advice);
      })
      .catch(error => {
        console.error('Erro ao buscar conselho:', error);
      });
  };

  const buscarConselhoPorTema = (tema) => {
    axios.get(`https://api.adviceslip.com/advice/search/${tema}`)
      .then(res => {
        if (res.data.slips.length > 0) {
          const indiceAleatorio = Math.floor(Math.random() * res.data.slips.length);
          setConselho(res.data.slips[indiceAleatorio].advice);
        }
      })
      .catch(error => {
        console.error('Erro ao buscar conselho por tema');
        window.alert('Não há conselhos para esse tema')
      });
  };

  return (
    <>
      <div>
        <div>
          <div>
            <button onClick={() => buscarConselhoPorTema('dog')} >Cachorro</button>
            <button onClick={() => buscarConselhoPorTema('cat')} >Gato</button>
            <button onClick={() => buscarConselhoPorTema('study')} >Estudo</button>
          </div>
          <div>
            <button onClick={buscarConselhoAleatorio} >Conselho Aleatório</button>
          </div>
        </div>
        <div>
          <div>
            {conselho && <h2>Conselho: {conselho}</h2>}
          </div>
        </div>
      </div>
    </>
  )
}

export default App
