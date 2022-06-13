const Course =require('../models/Course'); // khai báo mpdel=> thao tác với database 
const {Client} = require('pg')
let account_login;

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
      let course= await client.query(`Select * from list_nft`);
      var data_postgre_array= course.rows;
      const data_postgre=data_postgre_array[0];
      const data_postgre_string = JSON.stringify(data_postgre);
      // stringtify trước khi truyền
      //console.log(data_postgre_string);
      client.end;
      res.render('market/marketplacever1',{layout:null,data_postgre_string:data_postgre_string});
    }
    
    // take account 
    async take_account(req,res,next){
      account_login= req.body.acc;
      res.json("Xác thực thành công!")
    }


    // My order
    // phải thông qua trang chính mới take đc data 
    async myorder(req,res,next){
      let data_order=await client.query(`Select * from public.myorder where address_user='`+account_login+`'`);
      const data_order_array= data_order.rows;
      for(var i=0;i<data_order_array.length;i++){
        data_order_array[i].account=account_login;
      }
      res.render('market/myorder',{layout:null,data_order_array:data_order_array});
    }
    async delete_order(req,res,next){
      // xóa dữ liệu
      let order=await client.query(`DELETE FROM public.myorder
                                    WHERE link_course='`+req.params.slug+`' AND address_user='`+req.params.account+`';`);
      console.log(req.params.slug);
      console.log(req.params.account); // câu truy vấn có vấn đề 
      res.redirect('/myorder');
    }

    async detail(req,res,next){
      var a=req.params.slug;
      
      // lấy data của khóa học từ db 
      let json_db=await client.query(`Select * from public."infomation_cource " where link_access='`+a+`'`);
      const json= json_db.rows[0].data_cource;// lấy data 
      
      // lấy data quản lý 
      let json_db_manage= await client.query(`Select * from public.manage_information_cource where link_access='`+a+`'`);
      const json_manage=json_db_manage.rows[0].information_manage;
      

      let course= await client.query(`Select * from list_nft where link_access='`+a+`'`);
      var data_postgre_array= course.rows;
      const data_postgre=data_postgre_array[0];
      const data_postgre_string = JSON.stringify(data_postgre);
      // stringtify trước khi truyền
      //console.log(data_postgre_string);
      client.end;
      res.render('market/detail',{layout:null,json:json,data_postgre_string:data_postgre_string,json_manage:json_manage});
    }
   

    // Chức năng giỏ hàng
    async register_product(req,res,next){
     // theo nguyên tắc gọi đến action thì nó sẽ chạy từ đầu controller => không cần connect trong action 
     //thêm dữ liệu vào bảng 
     console.log(req.body); // cài middleware để sử dụng truyền data thông qua req.body 
       // phòng cường độ kết nối không đảm bảo, ta chia làm 2 case 
      if((req.body.account!=null)&&(req.body.link!=null)&&(req.body.image!=null)&&(req.body.name_product!=null)&&(req.body.name_author!=null)&&(req.body.price!=null))
        {
          let add =await client.query(`INSERT INTO public.myorder(
                                        link_course, address_user, name_product, name_author, link_image, price)
                                        VALUES ('${req.body.link}', '${req.body.account}', '${req.body.name_product}', '${req.body.name_author}', '${req.body.image}', '${req.body.price}')`);
          client.end;

          res.json('Thêm thành công, bạn đăng ký mua để truy cập vào khóa học nhé!');
        }
      else{
          client.end;
          res.json('Thêm thất bại');
      }
    }
}
module.exports=new HomeController;