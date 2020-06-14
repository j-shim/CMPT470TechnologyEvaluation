<template>
  <div class="about">
    <h1>About Vue</h1>
    <p>
      This is the demo website for CMPT 470 Technology Evaluation project. The technology 
      that we chose to evaluate is Vue.js.
    </p>
    <h2>What is Vue.js?</h2>
    <p>
      Vue.js is a powerful JavaScript front-end framework that is used for creating
      interactive web interfaces. It focuses on the view layer and essentially makes 
      creating dynamic webpages a lot easier. 
      <br/>
      <br/>
      It is easy to pick up as long as the developer is comfortable with JavaScript.
      <br/>
    </p>
    <h2>Some of the features of Vue include: </h2>
    <ul class="feature-list">
      <li>
        <h3 class="feature">Virtual DOM</h3>
        <p>
          Vue uses Virtual DOM, just like other front-end frameworks such as React, Ember, etc. How a 
          Virtual DOM works is that a replica of the actual DOM is created and changes to the DOM will 
          instead be applied there. This is advantageous because it increases performances as changes do 
          not have to be applied to the whole actual DOM.
        </p>
      </li>
      <li>
        <h3 class="feature">Data Binding</h3>
        <p>
          Vue has a feature called Data binding which is a more efficient way of assigning and modifying 
          values to HTML attributes, applying styles to an element, and assigning classes with the help 
          of Vue.js's binding directive called v-bind.
        </p>
      </li>
      <li>
        <h3 class="feature">Components</h3>
        <p>
          What's different between Vue.js and traditional vanilla HTML is that Vue.js emphasizes the idea 
          of using components for webpages. Components help create custom elements and promotes reusuability 
          as it can be reused in other parts of the webpage.
        </p>
      </li>
    </ul>
    <br/>
    <p>To read more about Vue, please visit <a href="https://vuejs.org/">Vue's documentation page</a></p>
  </div>
</template>

<style scoped>
  @import url('https://fonts.googleapis.com/css2?family=Roboto&display=swap');

  * {
      font-family: "Roboto", sans-serif;
  }

  .about {
      padding: 10px 12%;
  }

  h2 {
      margin: 10px 0px;
  }

  .feature-list {
      list-style: none;
  }

  .feature {
      font-style: bold;
  }
</style>
