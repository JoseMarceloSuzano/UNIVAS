function addTask() {
    const tarefa = document.getElementById('tarefa-digitada');
    const list = document.getElementById('list');
    
    let newElement = document.createElement('li');
    newElement.innerHTML = `
        <span>${tarefa.value}</span>
        <input type="text" style="display:none;">
        <button onclick="deleteTask(this)" class="button-deletar">🗑️</button>
        <button onclick="markComplete(this)" class="button-completar">✅</button>
        <button onclick="editElement(this)" class="button-editar">✏️</button>
        <button onclick="confirmEdit(this)" style="display:none;" class="button-confirmar">OK</button>
    `;
    
    list.appendChild(newElement);
    tarefa.value = '';
}

function deleteTask(button) {
    const list = document.getElementById('list');
    list.removeChild(button.parentElement);
}

function markComplete(button) {
    let taskElement = button.parentElement;
    taskElement.style.color = "red";
}

function editElement(button) {
    let taskElement = button.parentElement;
    let taskText = taskElement.querySelector('span');
    let editInput = taskElement.querySelector('input');
    let confirmButton = taskElement.querySelector('.button-confirmar');
    let deleteButton = taskElement.querySelector('.button-deletar');

    taskText.style.display = 'none';
    editInput.style.display = 'inline-block';
    confirmButton.style.display = 'inline-block';
    deleteButton.style.display = 'none';
    button.style.display = 'none'; 
}

function confirmEdit(button) {
    let taskElement = button.parentElement;
    let taskText = taskElement.querySelector('span');
    let editInput = taskElement.querySelector('input');
    let confirmButton = taskElement.querySelector('.button-confirmar');
    let deleteButton = taskElement.querySelector('.button-deletar');
    let editButton = taskElement.querySelector('.button-editar');

    taskText.innerText = editInput.value;
    taskText.style.display = 'inline';
    editInput.style.display = 'none';
    confirmButton.style.display = 'none';
    deleteButton.style.display = 'inline-block';
    editButton.style.display = 'inline-block';
}
