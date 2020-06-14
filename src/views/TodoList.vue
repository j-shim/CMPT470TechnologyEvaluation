<template>
  <div id="todolist">
      <Header />
      <AddTodo v-on:add-todo="addTodo"/>
      <Todos v-bind:todos="todos" v-on:del-todo="deleteTodo"/>
  </div>
</template>

<script>

import Header from "../components/layout/Header"
import Todos from "../components/Todos"
import AddTodo from "../components/AddTodo"

export default {
  name: 'TodoList',
  components: {
    Header,
    Todos,
    AddTodo
  },
  data() {
    return {
      todos: [
        {
          id: 1,
          title: 'Item One',
          completed: false,
        },
        {
          id: 2,
          title: 'Item Two',
          completed: false,
        },
        {
          id: 3,
          title: 'Item Three',
          completed: false
        }
      ]
    }
  },
  methods: {
    deleteTodo(id) {
      this.todos = this.todos.filter(todo => todo.id !== id)
    },

    addTodo(newTodo) {
      this.todos.push(newTodo);
    }
  }
}
</script>

<style scoped>
  @import url('https://fonts.googleapis.com/css2?family=Roboto&display=swap');

  * {
      font-family: "Roboto", sans-serif;
  }

  #todolist {
    padding: 10px 12%;
  }
</style>
