const Course =require('../models/Course'); // khai báo mpdel=> thao tác với database 



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
      var a="blockchaincourse.json";
      // json đóng vai trò như database
      const json= require('../models/'+a);
      res.render('market/detail',{layout:null,json:json});
    }

 
}
module.exports=new HomeController;