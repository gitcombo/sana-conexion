function updatePrice (total, param) {
    return (parseFloat(total) / parseFloat(param)) || 0;
}

function updateTotal( price, quantity ) {
    return (parseFloat(price) * parseFloat(quantity)) || 0;
}