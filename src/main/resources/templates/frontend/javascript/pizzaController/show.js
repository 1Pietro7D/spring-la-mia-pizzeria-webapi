
function showPizza(pizzaId) {
    console.log("Show log");
    setTimeout(() => {
        console.log("set1" + window.location);
    }, 500);
    setTimeout(() => {
        window.location.href = './show.html';
    }, 501);
    setTimeout(() => {
        console.log("set2" + window.location);
    }, 2000);

    axios.get("http://localhost:8080/api/pizze/" + pizzaId).then((res) => {





        console.log("load OK");
        console.log("status :" + res.status)
        const pizza = res.data;
        console.log(pizza);




        if (res.status == 200) {
            console.log("download OK");
            console.log(document.querySelector(".pizza_title"));
            document.querySelector(".pizza_title").innerHTML += pizza.name;
            document.querySelector(".pizza_img").src = pizza.img_path;
            document.querySelector(".pizza_img").alt = pizza.description;
            document.querySelector(".pizza_description").innerHTML += pizza.description;
            document.querySelector(".pizza_price").innerHTML += formatEuro(pizza.price);

            if (pizza.ingredients.length > 0) {
                document.querySelector(".pizza_ingredients").classList.remove("d-none");
                pizza.ingredienti.forEach(i => {
                    let ingredient = i.name;
                    document.querySelector(".pizza_ingredients").innerHTML += `
                                                                <span>${ingredient} </span>
                                                             `
                });
            }
            else document.querySelector(".pizza_ingredients").innerHTML = "Non ci sono ingredienti" // da validare con min 1 il back, e si può cancellare l'else



            console.log("download OK");
        }



    })//.catch((res) => {
    //     // console.log(res)
    //     console.log("NO load" + res)
    // })



}
