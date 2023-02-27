console.log("miao");

pizzaList();

function pizzaList() {
    axios.get('http://localhost:8080/api/pizze').then((res) => {
        //codice da eseguire se la richiesta è andata a buon fine
        console.log('richiesta ok', res);


        document.getElementById(
            "pizzaList"
        ).innerHTML = '';
        res.data.forEach(pizza => {
            console.log(pizza);
            var pricePizza = formatEuro(pizza.price)
            document.getElementById(
                "pizzaList"
            ).innerHTML += `
                <div>Name:
                    <a href="./detail.html?id=${pizza.id}">${pizza.id}</a>
                </div>
                <div>Price : 
                <span>${pricePizza}</span>
                </div>
                <div>${pizza.name}</div>
                <div>
                    <a class="btn btn-primary" onclick="deletePizza(${pizza.id})">
                        <i class="fa-solid fa-trash-can"> </i>
                    </a>
                </div>      
                <div>
                    <a class="btn btn-primary" href="./edit.html?id=${pizza.id}">
                        <i class="fa-solid fa-pen-to-square"> </i>
                    </a>
                </div>         
            `
        });
    }).catch((res) => {
        //codice da eseguire se la richiesta non è andata a buon fine
        console.error('errore nella richiesta', res);
        alert('Errore durante la richiesta!');
    })
}


function deletePizza(pizzaId) {
    const risposta = confirm('Sei sicuro?');

    if (risposta) {
        axios.delete('http://localhost:8080/api/pizze/delete/' + pizzaId).then((res) => {
            //ok => ricarico l'elenco delle Pizze
            pizzaList();
        }).catch((res) => {
            console.error('errore nella richiesta', res);
            alert('Errore durante la richiesta!');
        });
    }

}