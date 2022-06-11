const Course =require('../models/Course'); // khai báo mpdel=> thao tác với database 
const {Client} = require('pg')

const client = new Client({
    host: "localhost",
    user: "postgres",
    port: 5432,
    password: "Tuananh050901",
    database: "manage_ver1_lms"
})
client.connect();  // phải connect db 

class HomeController { 
    // hiển thị khóa học.
    //[GET] 
    async home(req,res,next){  // tạo phương thức trả về view 
      
      res.render('home');    // handlebar không cho hiển thị nhưng ta có thể lấy ra dùng 
    }

   

  
  
    async marketplacever1(req,res,next){
      res.render('market/marketplacever1',{layout:null});
    }
    
    // My order
    async myorder(req,res,next){
      res.render('market/myorder',{layout:null});
    }

    async detail(req,res,next){
      var a=req.params.slug;
      // lấy data của khóa học từ db 
      let json_db=await client.query(`Select * from public."infomation_cource " where link_access='`+a+`'`);
      const json= json_db.rows[0].data_cource;// lấy data 
      
      // lấy data quản lý 
      let json_db_manage= await client.query(`Select * from public.manage_information_cource where link_access='`+a+`'`);
      const json_manage=json_db_manage.rows[0].information_manage;
      console.log(json);

      let course= await client.query(`Select * from list_nft where link_access='`+a+`'`);
      var data_postgre_array= course.rows;
      const data_postgre=data_postgre_array[0];
      const data_postgre_string = JSON.stringify(data_postgre);
      // stringtify trước khi truyền
      //console.log(data_postgre_string);
      client.end;
      res.render('market/detail',{layout:null,json:json,data_postgre_string:data_postgre_string,json_manage:json_manage});
    }
  
 
}
module.exports=new HomeController;