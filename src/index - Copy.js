const { engine } = require ('express-handlebars');
const path= require('path');
const morgan= require('morgan');
const Web3 =require('web3');
const express = require('express')  ;
const app = express()  // trả về 1 đối tượng để có thể xây dựng web site; sử dụng xuôn suốt
const port = 3501  // run website ở cổng nào 
app.use(morgan('combined')); // hiển thị request khi trên trình duyệt yêu cầu.

// Model
// cực kỳ quan trọng kết nối tất cả cho những thằng dùng model 
const db = require('./config/db')  // config thưu mục chứa db 
// connect to db 
db.connect()  

// static file 
app.use(express.static(path.join(__dirname,'public'))); 

// handlebars
app.engine('hbs',engine({  // html sơ khai ; file động 
  extname:'.hbs'
}));    // config đuôi file là hbs
app.set('view engine', 'hbs');

app.set('views',path.join(__dirname,'resources','views')) ;

// route điều hướng action dựa vào request 
const route= require('./resources/routes'); // kết nối với route cha bên kia 
route(app);



app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`)
})
