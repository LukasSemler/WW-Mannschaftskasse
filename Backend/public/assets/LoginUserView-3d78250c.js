import{u,w as m,k as c,o as w,c as f,e,l as n,v as a,d as p,_ as g,m as x,p as b}from"./index-db5a2bbd.js";const h={class:"flex min-h-full flex-1 flex-col justify-center px-6 py-12 lg:px-8"},v=e("div",{class:"sm:mx-auto sm:w-full sm:max-w-sm"},[e("img",{class:"mx-auto h-24 w-auto",src:g,alt:"Handball Westwien"}),e("h2",{class:"mt-10 text-center text-2xl font-bold leading-9 tracking-tight text-gray-900"}," Anmelden ")],-1),y={class:"mt-10 sm:mx-auto sm:w-full sm:max-w-sm"},_={class:"space-y-6",action:"#",method:"POST"},k=e("label",{for:"email",class:"block text-sm font-medium leading-6 text-gray-900"},"Email",-1),D={class:"mt-2"},G=e("div",{class:"flex items-center justify-between"},[e("label",{for:"password",class:"block text-sm font-medium leading-6 text-gray-900"},"Passwort")],-1),j={class:"mt-2"},O={__name:"LoginUserView",setup(B){const l=u(),r=m(),s=c({email:"",password:""});async function d(i){if(i.preventDefault(),s.email!==""&&s.password!==""&&s.email.length>0&&s.password.length>0){const{data:t}=await x.post("/login",{email:s.email,password:s.password});if(t){if(r.setAktivenUser(t),console.log(t),!("indexedDB"in window))return;await b("WW-Mannschaftskasse",1,{upgrade(o,V,I,S){o.createObjectStore("Zahlungen_ObjectStore",{keyPath:"zahlung_ID",autoIncrement:!0}).createIndex("spielerID","spielerID",{unique:!1})}}),l.push("/")}else console.log("Error")}else console.log("Error")}return(i,t)=>(w(),f("div",h,[v,e("div",y,[e("form",_,[e("div",null,[k,e("div",D,[n(e("input",{"onUpdate:modelValue":t[0]||(t[0]=o=>s.email=o),id:"email",name:"email",type:"email",autocomplete:"email",class:"pl-2 block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-wwGreen sm:text-sm sm:leading-6"},null,512),[[a,s.email]])])]),e("div",null,[G,e("div",j,[n(e("input",{"onUpdate:modelValue":t[1]||(t[1]=o=>s.password=o),id:"password",name:"password",type:"password",autocomplete:"current-password",class:"pl-2 block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-wwGreen sm:text-sm sm:leading-6"},null,512),[[a,s.password]])])]),e("div",null,[e("button",{onClick:d,type:"submit",class:"flex w-full justify-center rounded-md bg-wwGreen px-3 py-1.5 text-sm font-semibold leading-6 text-white shadow-sm hover:bg-wwDarkGreen focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-wwGreen"}," Sign in ")])]),e("button",{onClick:t[2]||(t[2]=o=>p(l).go(-1)),class:"mt-3 flex w-full justify-center rounded-md bg-wwGray px-3 py-1.5 text-sm font-semibold leading-6 text-white shadow-sm hover:bg-wwDarkGray focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-wwGreen"}," Back ")])]))}};export{O as default};
