//función para cierre de sesión 
function logout() {
    window.location.href = 'index.html';
}

//obtiene los datos de los id
document.addEventListener('DOMContentLoaded', () => {
    const userTable = document.getElementById('userTable').getElementsByTagName('tbody')[0];
    const addUserBtn = document.getElementById('addUserBtn');
    const userModal = document.getElementById('userModal');
    const deleteUserModal = document.getElementById('deleteUserModal');
    const warningModal = document.getElementById('warningModal');
    const closeUserModalBtn = document.querySelector('#userModal .close');
    const closeDeleteModalBtn = document.querySelector('#deleteUserModal .close');
    const closeWarningModalBtn = document.querySelector('#warningModal .close');
    const userForm = document.getElementById('userForm');
    const userId = document.getElementById('userId');
    const usernameInput = document.getElementById('username');
    const emailInput = document.getElementById('email');
    const passwordInput = document.getElementById('password');
    const roleInput = document.getElementById('role');
    const confirmDeleteBtn = document.getElementById('confirmDeleteBtn');
    const cancelDeleteBtn = document.getElementById('cancelDeleteBtn');
    const cancelWarningBtn = document.getElementById('closeWarningModalBtn');
    const cancelUserBtn = document.getElementById('cancelUserBtn');
    
    let users = [];
    let userIdToDelete = null;
    
    // Obtener el usuario actual de la sesión
    function fetchCurrentUser() {
        return fetch('/api/session')
            .then(response => response.json());
    }

    // Obtener todos los usuarios
    function fetchUsers() {
        fetch('/api/users')
            .then(response => response.json())
            .then(data => {
                users = data;
                renderUsers(data);
            });
    }

    // Renderizar usuarios en la tabla
    function renderUsers(users) {
        userTable.innerHTML = '';
        users.forEach(user => {
            const row = userTable.insertRow();
            row.insertCell(0).textContent = user.id;
            row.insertCell(1).textContent = user.username;
            row.insertCell(2).textContent = user.email;
            row.insertCell(3).textContent = user.password; 
            row.insertCell(4).textContent = user.role;
            
            const actionsCell = row.insertCell(5);
            const editButton = document.createElement('button');
            editButton.textContent = 'Editar';
            editButton.classList.add('edit');
            editButton.addEventListener('click', () => openUserModal(user));
            actionsCell.appendChild(editButton);
            
            const deleteButton = document.createElement('button');
            deleteButton.textContent = 'Eliminar';
            deleteButton.classList.add('delete');
            deleteButton.addEventListener('click', () => openDeleteUserModal(user.id));
            actionsCell.appendChild(deleteButton);
        });
    }

    // Abrir modal para editar/añadir usuario
    function openUserModal(user = {}) {
        userId.value = user.id || '';
        usernameInput.value = user.username || '';
        emailInput.value = user.email || '';
        passwordInput.value = ''; 
        roleInput.value = user.role || '';
        userModal.style.display = 'block';
    }

    // Cerrar modal para editar/añadir usuario
    function closeUserModal() {
        userModal.style.display = 'none';
    }

    // Abrir modal para eliminar usuario
    function openDeleteUserModal(id) {
        userIdToDelete = id;
        deleteUserModal.style.display = 'block';
    }

    // Cerrar modal para eliminar usuario
    function closeDeleteUserModal() {
        deleteUserModal.style.display = 'none';
        userIdToDelete = null;
    }

    // Mostrar modal de advertencia
    function showWarningModal(message) {
        const warningMessage = document.getElementById('warningMessage');
        warningMessage.textContent = message;
        warningModal.style.display = 'block';
    }

    // Cerrar modal de advertencia
    function closeWarningModal() {
        warningModal.style.display = 'none';
    }

    // Guardar usuario (añadir/editar)
    function saveUser(event) {
        event.preventDefault();
        const id = userId.value;
        const method = id ? 'PUT' : 'POST';
        const endpoint = id ? `/api/users/${id}` : '/api/users';
        
        fetch(endpoint, {
            method: method,
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({
                username: usernameInput.value,
                email: emailInput.value,
                password: passwordInput.value || undefined, 
                role: roleInput.value,
            })
        }).then(() => {
            fetchUsers();
            closeUserModal();
        });
    }

    // Eliminar usuario
    function deleteUser() {
        if (userIdToDelete) {
            fetch(`/api/users/${userIdToDelete}`, {
                method: 'DELETE'
            })
            .then(response => response.json())
            .then(data => {
                if (data.error) {
                    showWarningModal(data.error);
                } else {
                    fetchUsers();
                    closeDeleteUserModal();
                }
            });
        }
    }

    // Filtrar usuarios en la tabla
    function filterTable() {
        const input = document.getElementById('searchInput');
        const filter = input.value.toLowerCase();
        const criteria = filter.split(' ');
        const table = document.getElementById('userTable');
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

    // Event listeners
    addUserBtn.addEventListener('click', () => openUserModal());
    closeUserModalBtn.addEventListener('click', closeUserModal);
    cancelUserBtn.addEventListener('click', (event) => {
        event.preventDefault();
        closeUserModal();
    });
    closeDeleteModalBtn.addEventListener('click', closeDeleteUserModal);
    cancelDeleteBtn.addEventListener('click', (event) => {
        event.preventDefault();
        closeDeleteUserModal();
    });
    confirmDeleteBtn.addEventListener('click', deleteUser);
    cancelWarningBtn.addEventListener('click', closeWarningModal);
    closeWarningModalBtn.addEventListener('click', closeWarningModal);
    userForm.addEventListener('submit', saveUser);
    document.getElementById('searchBtn').addEventListener('click', filterTable);

    // Inicializar usuarios
    fetchUsers();
});