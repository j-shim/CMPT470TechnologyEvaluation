<template>
  <div id="app">
    <div id="nav">
      <router-link class="navItem" to="/">TodoList</router-link> |
      <router-link class="navItem" to="/newapp">NewApp</router-link> | 
      <router-link class="navItem" to="/about">About</router-link>
    </div>
    <router-view/>
  </div>
</template>

<style scoped>
  * {
    font-family: "Roboto", sans-serif;
  }

  #nav {
    margin: 20px 5%;
    text-align: right;
  }

  .navItem {
    margin: 0px 20px;
    text-decoration: none;
    color: black;
    transition: transform 0.2s ease 0.3s;
  }

  .navItem:hover {
    color: rgb(95, 95, 95);
  }
</style>
