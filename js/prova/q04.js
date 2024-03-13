
const funcExpressao = function() {
    console.log(this);
  };
  
  const arrowFunc = () => {
    console.log(this);
  };
  
  const obj = {
    prop: 'Hello',
    funcExpressao: funcExpressao,
    arrowFunc: arrowFunc
  };
  
  obj.funcExpressao(); // Aqui, o `this` se refere ao `obj`
  obj.arrowFunc(); // Aqui, o `this` se refere ao contexto em que a arrow function foi definida
  