<template>
  <div id="app">
    <div id="nav">
        <Layout>
              <Header :style="{color:'white',fontSize:'20px',}">移动边缘计算仿真平台</Header>
        </Layout>
    </div>
    <router-view/>
  </div>
</template>

<style lang="scss">
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
}

#nav {
}
</style>
