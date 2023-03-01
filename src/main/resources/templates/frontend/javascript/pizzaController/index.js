console.log("index log");
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
                    <a id="${pizza.id}" class="btn btn-info" onclick="showPizza(${pizza.id})">${pizza.name}</a>
                </div>
                <div>Price : 
                    <span>${pricePizza}</span>
                </div>
               
                <div>
                    <a class="btn btn-warning" onclick="deletePizza(${pizza.id})">
                        <i class="fa-solid fa-trash-can"> </i>
                    </a>
                </div>      
                <div>
                    <a class="btn btn-primary" href="./edit.html?id=${pizza.id}">
                        <i class="fa-solid fa-pen-to-square"> </i>
                    </a>
                </div>         
            `;

        });
    }).catch((res) => {
        //codice da eseguire se la richiesta non è andata a buon fine
        console.error('errore nella richiesta', res);
        alert('Errore durante la richiesta!');
    })
}
