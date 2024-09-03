// Selecciona elementos del DOM
var addBtn = document.querySelector("#add-btn");
var modal = document.querySelector("#register-modal");
var closeBtn = document.querySelector("#close-modal");
var cancelBtn = document.querySelector("#cancel-btn");

// Función para abrir el modal
addBtn.onclick = function() {
    modal.style.display = 'block';
}

// Función para cerrar el modal
function closeModal() {
    modal.style.display = 'none';
}

// Añade los event listeners para cerrar el modal
closeBtn.addEventListener("click", closeModal);
cancelBtn.addEventListener("click", closeModal);

// Función para cerrar el modal cuando se hace clic fuera del contenido del modal
window.onclick = function(event) {
    if (event.target == modal) {
        closeModal();
    }
}