<template>
    <div class="home">
      <div class="home-center">
        <div class="margin">
          <div class="home-left">
            <div class="home-left-item" :class="item.listclass" v-for="(item,index) in homelist" @click="leftclickFun(index)" :key="index">
              <div class="left-list-title">
                <span class="list-title">{{item.listtitle}}</span>
                <span>{{item.listtag}}</span>
                <!--<span class="list-more">>> MORE</span>-->
              </div>
              <div class="left-list-contenthide">
                <div class="left-list-center">
                  <img src="../../assets/home-leftimg.png">
                  <div class="list-center-content">
                    <div class="center-content-title">天府一街店 正式开业</div>
                    <div class="center-content-detail">零优车辆服务站于2017年8月8日在天府一街新店开业...</div>
                  </div>
                </div>
                <div class="left-list-ul">
                  <ul>
                    <li> > 天府一街店 正式开业... [2017-8-15]</li>
                    <li> > 天府一街店 正式开业... [2017-8-15]</li>
                    <li> > 天府一街店 正式开业... [2017-8-15]</li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="home-right">
          <div class="right-nav">
            <div v-for="(item,index) in navs" class="home-nav-item" :class="item.navclass" @click="clickFun(item,index)" :key="index">{{item.navTitle}}</div>
            <!--<div class="home-nav-item">新型建材</div>-->
            <!--<div class="home-nav-item">房 地 产</div>-->
            <!--<div class="home-nav-item">水电开发</div>-->
            <!--<div class="home-nav-item">金融投资</div>-->
          </div>
          <div class="right-center">
            <div class="right-center-title">
              <div class="center-title-one"><span>{{navstitle.englishtitle}}</span><span>{{navstitle.chinatitle}}</span></div>
              <div>Garment accessores industry</div>
            </div>
            <div class="right-center-content">
              零优汽车服务平台，于2017年开始搭建，准备建立一个链接全成都地区汽车服务平台，打造后车服务新模式，为汽车后服务市场建立新的行业运营模式. . . . . .
            </div>
            <div class="right-center-img">
              <img src="../../assets/home-centerimg.png" alt="">
            </div>
          </div>
          <div class="right-activity">
            <div class="activity-title"><span>ACTIVITY</span><span>活动</span></div>
            <div class="activity-ul">
              <ul>
                <li>>> 开业活动</li>
                <li>>> 开业活动</li>
                <li>>> 开业活动</li>
                <li class="activity-more">>> MORE</li>
              </ul>
            </div>
            <div class="activity-img">
              <img src="../../assets/activityimg.png">
            </div>
          </div>
        </div>
        <div class="home-foot">
          <div class="home-foot-select">
            <div class="foot-select-input">友情链接</div>
            <div class="foot-select-arrow"> <span>|</span> <span>V</span></div>
          </div>
          <div class="home-foot-nav">联系我们 <span>|</span></div>
          <div class="home-foot-nav">版权申明 <span>|</span></div>
          <div class="home-foot-nav">网站地图 <span>|</span></div>
        </div>
      </div>
    </div>
</template>
<script>
import common from '@/components/common/common';
export default {
    components: { common },
    data() {
        return {
          navs:[{navTitle:'服务平台',englishtitle:'APPAREL',chinatitle:'服务平台',navclass:'nav-item-click'},
            {navTitle:'新型建材',englishtitle:'APPAREL',chinatitle:'新型建材',navclass:''},
            {navTitle:'房 地 产',englishtitle:'APPAREL',chinatitle:'房 地 产',navclass:''},
            {navTitle:'水电开发',englishtitle:'APPAREL',chinatitle:'水电开发',navclass:''},
            {navTitle:'金融投资',englishtitle:'APPAREL',chinatitle:'金融投资',navclass:''}],
          navstitle:{englishtitle:'APPAREL',chinatitle:'服务平台'},
          homelist:[{listtitle:'新闻中心',listtag:'NEWS',listclass:'left-list-show'},
            {listtitle:'零优文化',listtag:'LINGYOU CULTURE',listclass:'left-list-hide'},
            {listtitle:'加入我们',listtag:'HUMAN RESOURCES',listclass:'left-list-hide'}]
        }
    },
    methods:{
      clickFun(nav,index) {
        this.navstitle.englishtitle=nav.englishtitle;
        this.navstitle.chinatitle=nav.chinatitle;
        this.navs.forEach(function (item,i) {
          if(i==index){
              item.navclass='nav-item-click';
          }
          else{
            item.navclass='';
          }
        })
      },
      leftclickFun(index){
        this.homelist.forEach(function (item,i) {
          if(i==index){
            item.listclass='left-list-show';
          }
          else{
            item.listclass='left-list-hide';
          }
        })
      }
    },
    mounted: function () {
      var item=document.getElementsByClassName('home-nav-item');
      for(var i=0;i< item.length;i++){

      }
    }
}
</script>
<style lang="scss" scoped>
@import './home.scss';
</style>
