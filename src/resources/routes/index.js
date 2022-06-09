const HomeRouter=require('./home');  // import thằng route con; ở trong cùng 1 
function route(app){  // tạo hàm
// làm như này để phân nhánh tốt hơn 
app.use('/',HomeRouter); // set request user; gọi đến route con ; gọi đến 1 hàm 
  // trong thằng này còn nhiều action con nữa 
}

module.exports=route; // export thằng route đó ra ngoài 
