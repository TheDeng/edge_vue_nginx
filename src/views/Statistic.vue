<template>
    <div class="container">  
        <diagram class="diagram" v-for="(item) in data " :id='item.id' :title="item.title" :series='item.series' :key="item.id"></diagram>
    </div>

</template>

<script>
import Diagram from "../components/Diagram";
export default {
  name: "statistic",
  components: {
    diagram: Diagram
  },
  data() {
    return {
      data: [
        {
          id: 0,
          title: "用户数VS请求准确率",
          series: [
            {
              name: "Normal",
              type: "line",
              stack: "总量",
              data: [120, 132, 101, 134, 90, 230]
            },
            {
              name: "Random",
              type: "line",
              stack: "总量",
              data: [220, 182, 191, 234, 290, 330]
            },
            {
              name: "Greedy",
              type: "line",
              stack: "总量",
              data: [150, 232, 201, 154, 190, 330]
            },
            {
              name: "Optimize",
              type: "line",
              stack: "总量",
              data: [320, 332, 301, 334, 390, 330]
            }
          ]
        },
        {
          id: 1,
          title: "用户数VS接收准确率",
          series: [
            {
              name: "Normal",
              type: "line",
              stack: "总量",
              data: [120, 132, 101, 134, 90, 230]
            },
            {
              name: "Random",
              type: "line",
              stack: "总量",
              data: [220, 182, 191, 234, 290, 330]
            },
            {
              name: "Greedy",
              type: "line",
              stack: "总量",
              data: [150, 232, 201, 154, 190, 330]
            },
            {
              name: "Optimize",
              type: "line",
              stack: "总量",
              data: [320, 332, 301, 334, 390, 330]
            }
          ]
        }
      ]
    };
  }
};
</script>

<style>
.container {
  display: flex;
  flex-direction: row;
  justify-content: center;
}
.diagram {
  display: flex;
}
</style>
