
<template>
    <div class="layout">
        <Sider :style="{position: 'fixed', height: '100vh', left: 0, overflow: 'auto'}">
            <Menu active-name="1-1" theme="dark" width="auto" :open-names="['1']">
                <Submenu name="1">
                    <template slot="title">
                        <Icon type="ios-navigate"></Icon>
                        服务预部署
                    </template>
                    <MenuItem name="1-1"><span @click="goToMap">实验环境</span></MenuItem>
                    <MenuItem name="1-2"><span @click="goToExp">仿真实验</span></MenuItem>
                    <MenuItem name="1-3"><span @click="goToSta">数据统计</span></MenuItem>
                </Submenu>
              
            </Menu>
        </Sider>
        <Layout :style="{marginLeft: '200px'}">
           
            <Content :style="{padding: '0 16px 16px'}">
              
                <Card>
                    <div style="minHeight: 1000px">
                        <component :is="compo"></component>
                    </div>
                </Card>
            </Content>
        </Layout>
    </div>
</template>
<script>
import Home from "./Home";
import Statistic from "./Statistic";
export default {
  name: "Main",
  components: {
    Home,
    Statistic
  },
  data() {
    return {
      compo: "home"
    };
  },
  methods: {
    goToMap() {
      this.compo = "home";
    },
    goToExp() {
      console.log("exp");
    },
    goToSta() {
      this.compo = "statistic";
    }
  }
};
</script>
<style scoped>
.layout {
  background: #f5f7f9;
  position: relative;
  border-radius: 4px;
  overflow: hidden;
}
.layout-header-bar {
  background: #fff;
  box-shadow: 0 1px 1px rgba(0, 0, 0, 0.1);
}
</style>