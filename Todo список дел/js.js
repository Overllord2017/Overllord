window.onload = function(){
	


	var todoList = [];
	if (localStorage.getItem('todo')!=undefined) {
		todoList = JSON.parse(localStorage.getItem('todo')); //Преобразует в массив
		out();
	}

	document.getElementById('add').onclick = function(){
		var d = document.getElementById('in').value;
		//{todo: Добавить дело, check: false}
		var temp = {};
		temp.todo = d;
		temp.check = false;
		var i = todoList.length;
		todoList[i] = temp;
		console.log(todoList);
		out();
		localStorage.setItem('todo', JSON.stringify(todoList)); // Преобразование массива в строку в формате JSON
	}

	function out(){
		var out='';
		for (var key in todoList) {
						if (todoList[key].check == true) {
				out += '<input type="checkbox" checked>';
			}
			else {
				out += '<input type="checkbox" checked>';
			}
			out += todoList[key].todo + '<br>'; //список дел сформировался
		}
		document.getElementById('out').innerHTML = out;
	}
}
