async function getCustomer(customerId, user) {
    try {
        const response = await fetch(http://localhost:3001/api/users/get/${customerId}, {
            headers: {
                Authorization: 'Bearer ' + user.refreshToken,
            },
        });
        const json = await response.json();
        console.log(json);
        return json.payload.user;
    } catch (error) {
        console.error('Error fetching customer name:', error);
    }
}

async function fetchAllOrders(admin) {
    try {
        const response = await fetch('http://localhost:3001/api/orders/');
        const json = await response.json();
        const orders = json.payload.orders;
        const orderCount = orders.length;
        const recentOrdersElement = document.getElementById('recent-orders');

        orders.forEach(async (order) => {
            console.log(order);
            const date = await convertDate(order.createdAt);
            const row = document.createElement('tr');
            row.innerHTML = 
            <td>${order._id}</td>
            <td>${date}</td>
            <td>${order.user.name}</td>
            <td>$${order.total}</td>
            <td>${order.status}</td>
          ;
            recentOrdersElement.appendChild(row);
        });

        const totalOrdersElement = document.getElementById('total-orders');
        totalOrdersElement.textContent = orderCount;
    } catch (error) {
        console.error('Error fetching total orders:', error);
    }
}
