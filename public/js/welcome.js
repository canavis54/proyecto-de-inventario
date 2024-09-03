function filterTable() {
    const input = document.getElementById('searchInput');
    const filter = input.value.toLowerCase();
    const criteria = filter.split(' ');
    const table = document.getElementById('itemsTable');
    const trs = table.getElementsByTagName('tr');

    for (let i = 1; i < trs.length; i++) {
        const tds = trs[i].getElementsByTagName('td');
        let displayRow = true;

        for (let j = 0; j < criteria.length; j++) {
            let matchFound = false;
            for (let k = 0; k < tds.length; k++) {
                if (tds[k].innerText.toLowerCase().includes(criteria[j])) {
                    matchFound = true;
                    break;
                }
            }
            if (!matchFound) {
                displayRow = false;
                break;
            }
        }
        trs[i].style.display = displayRow ? '' : 'none';
    }
}

// cierre de sesion
function logout() {
    window.location.href = 'index.html';
}

document.addEventListener('DOMContentLoaded', () => {
    const itemsTable = document.getElementById('itemsTable').getElementsByTagName('tbody')[0];
    const addButton = document.getElementById('addButton');
    const modal = document.getElementById('modal');
    const closeModalButtons = document.querySelectorAll('.close');
    const itemForm = document.getElementById('itemForm');
    const itemId = document.getElementById('itemId');
    const ubicacionInput = document.getElementById('ubicacion');
    const No_parteInput = document.getElementById('No_parte');
    const No_parte_2Input = document.getElementById('No_parte_2');
    const valor_nominalInput = document.getElementById('valor_nominal');
    const v_n_1Input = document.getElementById('v_n_1');
    const v_n_2Input = document.getElementById('v_n_2');
    const encapsuladoInput = document.getElementById('encapsulado');
    const regimen_v_ccInput = document.getElementById('regimen_v_cc');
    const toleranciaInput = document.getElementById('tolerancia');
    const cantidadInput = document.getElementById('cantidad');
    const editQuantityModal = document.getElementById('editQuantityModal');
    const editItemId = document.getElementById('editItemId');
    const currentCantidad = document.getElementById('currentCantidad');
    const editCantidadInput = document.getElementById('editCantidad');
    const resultQuantity = document.getElementById('resultQuantity');
    const updateQuantityButton = document.getElementById('updateQuantityButton');
    const incrementButton = document.getElementById('incrementButton');
    const decrementButton = document.getElementById('decrementButton');
    const cancelEditQuantityBtn = document.getElementById('cancelEditQuantityBtn');
    const cancelEditAddBtn = document.getElementById('cancelEditAddBtn');

    let items = [];

    function fetchItems() {
        fetch('/api/items')
            .then(response => response.json())
            .then(data => {
                items = data;
                renderItems(data);
            });
    }

    function renderItems(items) {
        itemsTable.innerHTML = '';
        items.forEach(item => {
            const row = itemsTable.insertRow();
            row.insertCell(0).textContent = item.id;
            row.insertCell(1).textContent = item.ubicacion;
            row.insertCell(2).textContent = item.No_parte;
            row.insertCell(3).textContent = item.No_parte_2;
            row.insertCell(4).textContent = item.valor_nominal;
            row.insertCell(5).textContent = item.v_n_1;
            row.insertCell(6).textContent = item.v_n_2;
            row.insertCell(7).textContent = item.encapsulado;
            row.insertCell(8).textContent = item.regimen_v_cc;
            row.insertCell(9).textContent = item.tolerancia;
            row.insertCell(10).textContent = item.cantidad;

            const actionsCell = row.insertCell(11);
            const editButton = createButton('Editar', () => openModal(item));
            editButton.classList.add('edit');
            const editQuantityButton = createButton('Editar Cantidad', () => openEditQuantityModal(item));
            editQuantityButton.classList.add('editar');
            actionsCell.append(editButton, editQuantityButton);
        });
    }

    function createButton(text, onClick) {
        const button = document.createElement('button');
        button.textContent = text;
        button.addEventListener('click', onClick);
        return button;
    }

    function openModal(item = null) {
        if (item) {
            itemId.value = item.id;
            ubicacionInput.value = item.ubicacion;
            No_parteInput.value = item.No_parte;
            No_parte_2Input.value = item.No_parte_2;
            valor_nominalInput.value = item.valor_nominal;
            v_n_1Input.value = item.v_n_1;
            v_n_2Input.value = item.v_n_2;
            encapsuladoInput.value = item.encapsulado;
            regimen_v_ccInput.value = item.regimen_v_cc;
            toleranciaInput.value = item.tolerancia;
            cantidadInput.value = item.cantidad;
        } else {
            itemForm.reset();
            itemId.value = '';
        }
        document.getElementById('modalTitle').textContent = item ? 'Editar ' : 'Agregar ';
        modal.style.display = 'block';
    }

    function closeModal() {
        modal.style.display = 'none';
        editQuantityModal.style.display = 'none';
    }

    function openEditQuantityModal(item) {
        editItemId.textContent = item.id;
        currentCantidad.textContent = item.cantidad;
        editCantidadInput.value = '';
        resultQuantity.textContent = '0';
        editQuantityModal.style.display = 'block';
    }

    itemForm.addEventListener('submit', (event) => {
        event.preventDefault();
        const itemData = {
            ubicacion: ubicacionInput.value,
            No_parte: No_parteInput.value,
            No_parte_2: No_parte_2Input.value,
            valor_nominal: valor_nominalInput.value,
            v_n_1: v_n_1Input.value,
            v_n_2: v_n_2Input.value,
            encapsulado: encapsuladoInput.value,
            regimen_v_cc: regimen_v_ccInput.value,
            tolerancia: toleranciaInput.value,
            cantidad: cantidadInput.value,
        };

        const method = itemId.value ? 'PUT' : 'POST';
        const url = itemId.value ? `/api/items/${itemId.value}` : '/api/items';

        fetch(url, {
            method: method,
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify(itemData),
        })
        .then(response => {
            if (response.ok) {
                closeModal();
                fetchItems();
            } else {
                alert('Error al guardar el item');
            }
        });
    });

    incrementButton.addEventListener('click', () => {
        const currentQty = parseInt(currentCantidad.textContent);
        const changeQty = parseInt(editCantidadInput.value) || 0;
        resultQuantity.textContent = currentQty + changeQty;
    });

    decrementButton.addEventListener('click', () => {
        const currentQty = parseInt(currentCantidad.textContent);
        const changeQty = parseInt(editCantidadInput.value) || 0;
        resultQuantity.textContent = currentQty - changeQty;
    });

    updateQuantityButton.addEventListener('click', () => {
        const newQuantity = parseInt(resultQuantity.textContent);
        const itemData = { cantidad: newQuantity };

        fetch(`/api/items/${editItemId.textContent}`, {
            method: 'PUT',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify(itemData),
        })
        .then(response => {
            if (response.ok) {
                closeModal();
                fetchItems();
            } else {
                alert('Error al actualizar la cantidad');
            }
        });
    });

    cancelEditQuantityBtn.addEventListener('click', closeModal);
    cancelEditAddBtn.addEventListener('click', closeModal);

    closeModalButtons.forEach(button => button.addEventListener('click', closeModal));

    window.addEventListener('click', (event) => {
        if (event.target === modal || event.target === editQuantityModal) {
            closeModal();
        }
    });

    addButton.addEventListener('click', () => openModal());

    fetchItems();
});