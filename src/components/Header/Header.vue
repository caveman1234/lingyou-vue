<template>
  <div class="header">
    <div class="img">
      <img src="../../assets/log.png" alt="img">
    </div>

    <ul>
      <li v-for="(item,index) in headerList" :key="item.title" @mouseover="titleMouseover(index)" @mouseout="titleMouseout(index)" :class="[item.hasClass?'itemBlue':'']" @click.stop="itemClick(index)">
        {{item.title}}
        <template v-if="item.children">
          <div class="dropDown">
            <div v-for="(list,index1) in item.children" :key="list.title" class="dropDownItem" @click.stop="childClick(index,index1)">
              <template v-if="list.visiable">{{list.title}}</template>
            </div>
          </div>
        </template>

      </li>
    </ul>
    <div class="right">
      <div class="top">
        <input type="text" placeholder="搜索新闻：" />
        <span>GO</span>
      </div>
      <div class="bottom">WELCOME TO LINGYOU</div>
    </div>

  </div>
</template>
<script>

export default {
  data() {
    return {
      headerList

    }
  },
  methods: {
    titleMouseover(index) {
      /* 控制下拉框显示 */
      let currentItem = this.headerList[index];
      if (currentItem.children) {
        currentItem.children.forEach(function(v) {
          v.visiable = true;
        });
      }
      /* title的class变化 */
      this.headerList = this.headerList.map(function(v, i) {
        if (index == i) {
          v.hasClass = true;
        } else {
          v.hasClass = false;
        }
        return v;
      })
    },
    titleMouseout(index) {
      /* 控制下拉框显示 */
      let currentItem = this.headerList[index];
      if (currentItem.children) {
        currentItem.children.forEach(function(v) {
          v.visiable = false;
        });
      }
      /* title的class变化 */
      this.headerList.forEach(function(v, i) {
        if (v.clicked) {
          v.hasClass = true;
        } else {
          v.hasClass = false;
        }
      })
    },
    itemClick(index) {
      this.headerList.forEach(function(v, i) {
        if (index == i) {
          v.clicked = true;
        } else {
          v.clicked = false;
        }
      })
      let currentItem = this.headerList[index]
      let route = currentItem.route;
      this.$router.push({ name: route, params: { title: currentItem.title } });
      console.log(route, currentItem.title)
    },
    childClick(index, index1) {
      this.headerList.forEach(function(v, i) {
        if (index == i) {
          v.clicked = true;
        } else {
          v.clicked = false;
        }
      })
      let currentItem = this.headerList[index].children[index1];
      let route = currentItem.route;
      this.$router.push({ name: route, params: { title: currentItem.title } });
      console.log(route, currentItem.title)
    }
  },
  mounted() {
    
  }
}
let headerList = [
  { title: '首页', route: 'home', hasClass: true, clicked: true },
  { title: '关于我们', route: 'introduction', hasClass: false, clicked: false, children: [{ title: '公司简介', visiable: false, route: 'introduction' }, { title: '大事记', visiable: false, route: 'bigevent' }] },
  { title: '新闻资讯', route: 'news', hasClass: false, clicked: false },
  { title: '公司产业', route: 'carindustry', hasClass: false, clicked: false, children: [{ title: '车辆产业', visiable: false, route: 'carindustry' }, { title: '建材产业', visiable: false, route: 'buildingindustry' }] },
  { title: '企业公民', route: 'citizen', hasClass: false, clicked: false },
  { title: '加入我们', route: 'joinus', hasClass: false, clicked: false },
  { title: '联系我们', route: 'contactus', hasClass: false, clicked: false }
];
</script>
<style lang="scss" scoped>
@import './header.scss'
</style>


