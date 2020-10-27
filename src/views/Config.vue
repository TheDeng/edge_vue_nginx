<template>
    <div :style="{margin:'0 auto',marginTop:'100px'}">
        <h1 :style="{marginBottom:'10px'}">实验参数配置</h1>

    <Form ref="formValidate" :model="formValidate" :rules="ruleValidate" :label-width="400" :style="{width:'1200px'}" >
        <FormItem label="最小用户数量" prop="min_user_num">
            <Input v-model="formValidate.min_user_num" placeholder="Enter the min user number" />
        </FormItem>
         <FormItem label="最大用户数量" prop="max_user_num">
            <Input v-model="formValidate.max_user_num" placeholder="Enter the max user number" />
        </FormItem>

        <FormItem label="最小服务器数量" prop="min_server_num">
            <Input v-model="formValidate.min_server_num" placeholder="Enter the min server number"/>
        </FormItem>

          <FormItem label="最大服务器数量" prop="max_server_num">
            <Input v-model="formValidate.max_server_num" placeholder="Enter the max server number"/>
        </FormItem>
          <FormItem label="最小覆盖范围" prop="min_coverage">
            <Input v-model="formValidate.min_coverage" placeholder="Enter the min coverage" />
        </FormItem>
        <FormItem label="最大覆盖范围" prop="max_coverage">
            <Input v-model="formValidate.max_coverage" placeholder="Enter the max coverage"/>
        </FormItem>
          <FormItem label="最小资源数" prop="min_resource">
            <Input v-model="formValidate.min_resource" placeholder="Enter the min resource" />
        </FormItem>
        <FormItem label="最大资源数" prop="max_resource">
            <Input v-model="formValidate.max_resource" placeholder="Enter the max resource"/>
        </FormItem>
       
        <FormItem label="实验重复次数" prop="repeat_num">
            <Input v-model="formValidate.repeat_num" placeholder="Enter the repeat number"/>
        </FormItem>

         <FormItem>
            <Button type="primary" @click="handleSubmit('formValidate')">提交实验</Button>
            <Button type="primary" @click="handleReset('formValidate')" style="margin-left: 8px">重置参数</Button>
        </FormItem>
    </Form>
      
    

        </div>
</template>
<script>
import Res from "./Res";
export default {
  components: {
    Res
  },
  data() {
    return {
      compo: "res",
      formValidate: {
        min_user_num: 0,
        max_user_num: 0,
        min_server_num: 0,
        max_server_num: 0,
        min_coverage: 0,
        max_coverage: 0,
        min_resource: 0,
        max_resource: 0,
        repeat_num: 0
      },
      ruleValidate: {
        min_user_num: [
          {
            required: true,
            message: "The  min user num  cannot be zero",
            trigger: "blur"
          }
        ],
        min_server_num: [
          {
            required: true,
            message: "The min server num cannot be zero",
            trigger: "blur"
          }
        ],

        max_user_num: [
          {
            required: true,
            message: "The max user num  cannot be zero",
            trigger: "blur"
          }
        ],
        max_server_num: [
          {
            required: true,
            message: "The max server num cannot be zero",
            trigger: "blur"
          }
        ],
        min_coverage: [
          {
            required: true,
            message: "The min coverage  cannot be zero",
            trigger: "blur"
          }
        ],
        max_coverage: [
          {
            required: true,
            message: "The max coverage  cannot be zero",
            trigger: "blur"
          }
        ],

        min_resource: [
          {
            required: true,
            message: "The min resource  cannot be zero",
            trigger: "blur"
          }
        ],
        max_resource: [
          {
            required: true,
            message: "The max resource  cannot be zero",
            trigger: "blur"
          }
        ],
        repeat_num: [
          {
            required: true,
            message: "The repeat num  cannot be zero",
            trigger: "blur"
          }
        ]
      }
    };
  },
  methods: {
    handleSubmit(name) {
      this.$refs[name].validate(valid => {
        if (valid) {
          this.$Message.success("Success!");
        } else {
          this.$Message.error("Fail!");
        }
      });
    },
    handleReset(name) {
      this.$refs[name].resetFields();
    }
  }
};
</script>
