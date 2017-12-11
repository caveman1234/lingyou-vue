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
            <div class="center-title-one">
              <span>{{navstitle.englishtitle}}</span>
              <span>{{navstitle.chinatitle}}</span>
            </div>
            <div>Garment accessores industry</div>
          </div>
          <div class="right-center-content">
            {{centerChinese}} 
          </div>
          <div class="right-center-img">
            {{centerEnglish}} 
          </div>
        </div>
        <div class="right-activity">
          <div class="activity-title">
            <span>ACTIVITY</span>
            <span>活动</span>
          </div>
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
          <div class="foot-select-arrow">
            <span>|</span>
            <span>V</span>
          </div>
        </div>
        <div class="home-foot-nav">联系我们
          <span>|</span>
        </div>
        <div class="home-foot-nav">版权申明
          <span>|</span>
        </div>
        <div class="home-foot-nav">网站地图
          <span>|</span>
        </div>
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
      centerChinese: '零优汽车服务平台，于2017年开始搭建，准备建立一个链接全成都地区汽车服务平台，打造后车服务新模式，为汽车后服务市场建立新的行业运营模式. . . . . .',
      centerEnglish: 'Ling you auto service platform and began to build in 2017, set out to build a link to the chengdu area auto service platform, and build a new model, the car service for automobile service market after new business operation mode......',
      navs: [{ navTitle: '服务平台', englishtitle: 'APPAREL', chinatitle: '服务平台', navclass: 'nav-item-click' },
      { navTitle: '新型建材', englishtitle: 'APPAREL', chinatitle: '新型建材', navclass: '' },
      { navTitle: '房 地 产', englishtitle: 'APPAREL', chinatitle: '房 地 产', navclass: '' },
      { navTitle: '水电开发', englishtitle: 'APPAREL', chinatitle: '水电开发', navclass: '' },
      { navTitle: '金融投资', englishtitle: 'APPAREL', chinatitle: '金融投资', navclass: '' }],
      navstitle: { englishtitle: 'APPAREL', chinatitle: '服务平台' },
      homelist: [{ listtitle: '新闻中心', listtag: 'NEWS', listclass: 'left-list-show' },
      { listtitle: '零优文化', listtag: 'LINGYOU CULTURE', listclass: 'left-list-hide' },
      { listtitle: '加入我们', listtag: 'HUMAN RESOURCES', listclass: 'left-list-hide' }]
    }
  },
  methods: {
    clickFun(nav, index) {
      this.navstitle.englishtitle = nav.englishtitle;
      this.navstitle.chinatitle = nav.chinatitle;
      this.navs.forEach(function(item, i) {
        if (i == index) {
          item.navclass = 'nav-item-click';
        }
        else {
          item.navclass = '';
        }
      })
      debugger
      switch (index) {
        case 0:
          this.centerChinese = "零优汽车服务平台，于2017年开始搭建，准备建立一个链接全成都地区汽车服务平台，打造后车服务新模式，为汽车后服务市场建立新的行业运营模式. . . . . .";
          this.centerEnglish = "Ling you auto service platform and began to build in 2017, set out to build a link to the chengdu area auto service platform, and build a new model, the car service for automobile service market after new business operation mode......";
          break;
        case 1 :
          this.centerChinese ="零忧在做后车服务项目的同时，也兼顾做了一些建材方面的东西，这样让我们的公司有自己的主要产业外，还要兼顾其他产业的发展。。。";
          this.centerEnglish = "New building materials: ling you after doing car service project at the same time, also made some material things, so that our company has its own major industry, but other aspects of the development of...";
          break;
        case 2:
          this.centerChinese="零忧涉及的产业比较广泛，当然房地产也少不了，随着成都中心城市的建设，越来越多的”蓉漂”来到了成都，他们也想拥有一个属于自己的家，他们把目光放在了一些楼盘上。。。";
          this.centerEnglish ='Ling you involving industry more extensive, and of course real estate also fill less, as the center of chengdu city construction, more and more "drift" rong came to chengdu, they also want to have a home of their own, they focus on some of the buildings on the...';
          break;
        case 3:
          this.centerChinese="";
          this.centerEnglish ="";
          break;
        case 4:
          this.centerChinese='零忧始终坚持"汇聚金融力量、助推转型升级"的光荣使命，大力弘扬"敦本尚实"的企业文化，坚持"战略引领、稳中求进"的工作总基调';
          this.centerEnglish ='Ling you always adhere to the "financial strength, transformation and upgrading of booster" glorious mission, vigorously promote ", this is real "corporate culture, adhere to the" strategic guide and maintaining stability "total working tone';
          break;
      }
    },
    leftclickFun(index) {
      this.homelist.forEach(function(item, i) {
        if (i == index) {
          item.listclass = 'left-list-show';
        }
        else {
          item.listclass = 'left-list-hide';
        }
      })
    }
  },
  mounted: function() {
    var item = document.getElementsByClassName('home-nav-item');
    for (var i = 0; i < item.length; i++) {

    }
  }
}
</script>
<style lang="scss" scoped>
@import './home.scss';
</style>
