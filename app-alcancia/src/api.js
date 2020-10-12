const url = "http://localhost:8090";

function getAssets() {
  return fetch(`${url}/saldo/calcularCantidaPorDenominacion`)
    .then(response => {
      return response.json();
    })
    .then(data => {
      return data;
    });
}

function addBalance(saldo) {
  return fetch(`${url}/saldo/guardarsaldo`,{
    method: 'POST',
    headers : {
      'Content-Type': 'application/json',
      Accept: 'application/json',
    },
    body: JSON.stringify(saldo),
  })
    .then(response => {
      return response;
    });
}

export default {
  getAssets,
  addBalance
};
