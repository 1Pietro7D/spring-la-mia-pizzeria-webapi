function deletePizza(pizzaId) {
    console.log("delete post");
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