<template>
  <div>
    <div class="jumbotron">
      <div class="container">
        <h2>Eliminate all X's!</h2>
        <p class="text-secondary">
        <em>Click a button to flip it and other adjacent ones</em>
        </p>
      </div>
      <div class="container">
        <!-- Note: :key directive below is not used but eslint error (and failing to compile) occurs if removed -->
        <div class="row" v-for="idArray in idArrays" :key="idArray[0]">
          <button v-for="id in idArray" :key="id" v-bind:id="id" type="button" class="btn btn-outline-danger btn-lg" v-on:click="clicked(id)">X</button>
        </div>
        <div id="puzzle-done" class="text-success">
          <br />
        </div>
        <div class="row">
          <button id="puzzle-reset" type="button" class="btn btn-outline-success btn-lg" v-on:click="reset()">Start Again!</button>
        </div>
      </div>
    </div>

    <div class="container">
      <h2>Vue Directives: Binding</h2>
      <br>
      <h6>{{ screenshotTitle }}</h6>
      <img src="../assets/vue-directives.png" alt="Screenshot of NewApp.vue">
      <br>
      <br>
      <br>
      <p>
        In the screenshot above, <code>v-for</code> is a Vue directive for iterating over <code>idArrays</code>, where each item is aliased as <code>idArray</code>.
        Note that another <code>v-for=&quot;id in idArray&quot;</code> directive is used inside the first <code>v-for</code> directive.
      </p>
      <br>
      <p>
        In addition to looping through arrays, we can also bind element attributes.
        Note also that <code>v-bind:id</code> is a Vue directive to dynamically bind a value (id in this case) to the id attribute of the button element.
      </p>
      <br>
      <p>
        There is also a Vue directive for event binding, which is shown as <code>v-on:click</code> above.
        This means that on clicking the button, <code>clicked(id)</code> will be invoked.
      </p>
      <br>
      <p>
        Finally, we can give the screenshot a title using <code>v-model</code> two-way binding between form input and app state: <input v-model="screenshotTitle">
      </p>
    </div>
  </div>
</template>

<script>
  export default {
    name: 'NewApp',
    data() {
      return {
        idArrays: [['puzzle-0', 'puzzle-1', 'puzzle-2', 'puzzle-3'],
                   ['puzzle-4', 'puzzle-5', 'puzzle-6', 'puzzle-7'],
                   ['puzzle-8', 'puzzle-9', 'puzzle-10', 'puzzle-11'],
                   ['puzzle-12', 'puzzle-13', 'puzzle-14', 'puzzle-15']],
        dimension: 4,
        dimByDim: Math.pow(4, 2),

        screenshotTitle: ''
      }
    },
    methods: {
      clicked(id) {
        const idAsNum = id.split('-')[1]
        var i, j
        for (i = Number(idAsNum) - this.dimension - 1; i < Number(idAsNum) + this.dimension; i+=this.dimension) {
          for (j = i; j < i + 3; j++) {
            if (j >= this.dimByDim || j < 0)
              continue
            if (j == i && j % this.dimension == this.dimension - 1)
              continue
            if (j == i + 2 && j % this.dimension == 0)
              continue
            if (j % this.dimension == Number(idAsNum) % this.dimension || Math.abs(j - Number(idAsNum)) == 1)
              this.flipIt(j)
          }
        }
        if (this.isSuccessful())
          document.getElementById("puzzle-done").innerHTML = "Congratulations! You finished the game successfully!"
      },
      flipIt(id) {
        const el = document.getElementById(`puzzle-${id}`)
        if (el.innerHTML == "X") {
          el.innerHTML = "O"
          el.classList.remove("btn-outline-danger")
          el.classList.add("btn-success")
        } else {
          el.innerHTML = "X"
          el.classList.remove("btn-success")
          el.classList.add("btn-outline-danger")
        }
      },
      reset() {
        var i
        for (i = 0; i < this.dimByDim; i++) {
          const el = document.getElementById(`puzzle-${i}`)
          el.innerHTML = "X"
          el.classList.remove("btn-success")
          el.classList.add("btn-outline-danger")
        }
        document.getElementById("puzzle-reset").innerHTML = "Start Again!"
        document.getElementById("puzzle-done").innerHTML = "<br />"
      },
      isSuccessful() {
        var i
        for (i = 0; i < this.dimByDim; i++) {
          if (document.getElementById(`puzzle-${i}`).innerHTML == "X")
            return false
        }
        return true
      }
    }
}
</script>

<style scoped>
  .btn {
    min-width: 60px;
    min-height: 60px;
  }
</style>