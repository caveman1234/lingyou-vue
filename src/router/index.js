import Vue from 'vue'
import Router from 'vue-router'
import Main from '@/components/Main/Main'


Vue.use(Router)
import event1 from '@/components/bigevent/event1/event1';
import event2 from '@/components/bigevent/event2/event2';
export default new Router({
    routes: [{
        path: '/',
        name: 'Main',
        component: Main,
        children: [{
                path: '',
                name: 'home',
                component: resolve => require(['@/components/home/home'], resolve)
            },
            {
                path: '/introduction',
                name: 'introduction',
                component: resolve => require(['@/components/introduction/introduction'], resolve)
            },
            {
                path: '/bigevent',
                name: 'bigevent',
                component: resolve => require(['@/components/bigevent/bigevent'], resolve)
            },
            {
                path: '/news',
                name: 'news',
                component: resolve => require(['@/components/news/news'], resolve)
            },
            {
                path: '/carindustry',
                name: 'carindustry',
                component: resolve => require(['@/components/carindustry/carindustry'], resolve)
            },
            {
                path: '/buildingindustry',
                name: 'buildingindustry',
                component: resolve => require(['@/components/buildingindustry/buildingindustry'], resolve)
            },
            {
                path: '/citizen',
                name: 'citizen',
                component: resolve => require(['@/components/citizen/citizen'], resolve)
            },
            {
                path: '/joinus',
                name: 'joinus',
                component: resolve => require(['@/components/joinus/joinus'], resolve)
            },
            {
                path: '/contactus',
                name: 'contactus',
                component: resolve => require(['@/components/contactus/contactus'], resolve)
            }
        ]
    }]
})