<template>
  <div>
      <form @submit="addTodo">
          <input class="enter-field" type="text" name="title" v-model="title" placeholder="Add Todo...">
          <input class="submit-button" type="submit" value="Submit">
      </form>
  </div>
</template>

<script>
import { v4 as uuidv4 } from 'uuid';

export default {
    name: 'AddTodo',
    data() {
        return {
            title: ''
        }
    },
    methods: {
        addTodo(e) {
            e.preventDefault();
            const newTodo = {
                id: uuidv4(),
                title: this.title,
                completed: false
            }

            this.$emit('add-todo', newTodo);
            this.title = '';
        }
    }
}
</script>

<style scoped>
    @import url('https://fonts.googleapis.com/css2?family=Roboto&display=swap');

    * {
        font-family: "Roboto", sans-serif;
    }

    .enter-field {
        height: 20px;
        margin: 0px 20px;
    }

    .submit-button {
        border: 1px solid;
        border-radius: 5px;
        padding: 5px 10px;
        font-size: 15px;
    }

    .submit-button:hover {
        background-color: grey;
        color: white;
    }
</style>