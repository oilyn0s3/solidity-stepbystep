// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

// There are also structs in solidity which help us create custom data types
// Structs are a collection of variables that can consists of different  data types
// Here we'll create a todo list using struct

contract Todos{
    
    // defining todo truct
    struct Todo {
        string task;
        bool completed;

    }

    Todo[] public todoList; // an array of 'Todo' struct

    function addTask(string memory _task) public {

        // There are 3 ways of initializing a struct
        // #1 calling it like a fucntion 
        todoList.push(Todo(_task, false));

        // #2 by using key-value mapping 
        todoList.push(Todo({task: _task, completed: false}));

        // #3 by 1st initializing an empty struct and then updating it
        Todo memory tempTodo;
        tempTodo.task = _task; // completed is initialized to default value i.e. false

        todoList.push(tempTodo);

    }
    // Solidity automatically created a getter for 'todos' so
    // you don't actually need this function.
    function getTodo(uint _taskNumber) public view returns (string memory task, bool completed) {
        Todo storage tempTodo = todoList[_taskNumber];
        return (tempTodo.task, tempTodo.completed);
    }

    // updating a particular task
    function updateTask(uint _taskNumber, string memory _newTask) public {
        /*
            This todo variable will directly reference that particular task 
            stored in storage without making any copy.
        */
        Todo storage tempTodo = todoList[_taskNumber];
        tempTodo.task = _newTask;
    }

    // updating the task status i.e. completed

    function updateStatus(uint _taskNumber) public {
        Todo storage tempTodo = todoList[_taskNumber];
        tempTodo.completed = !tempTodo.completed;
    }
}