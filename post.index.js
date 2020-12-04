// DOM
const button = document.getElementById("add-btn");
const lists = document.getElementById("lists")

// メソッド
function addList(user){
  const list = document.createElement("li");
  list.innerText = user.name;
  lists.appendChild(list);
};

async function getUsers(){
  const response = await fetch("https://jsonplaceholder.typicode.com/users");
  const users = await response.json();
  return users;
}

async function listUsers(){
  const users = await getUsers();
  users.forEach(addList);
};

// イベント
window.addEventListener("load", listUsers);
button.addEventListener("click", listUsers);
