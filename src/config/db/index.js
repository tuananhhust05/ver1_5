const mongoose = require('mongoose'); //tạo kết nối với database 

async function connect(){
    try{ // cấu trúc luồn async await ; fix cố định 
        await mongoose.connect('mongodb://localhost:27017/F8_education_dev',
       {useNewUrlParser:true,
        useUnifiedTopology:true
    });
    console.log('connect succeessfully');
    }
    catch(error){
        console.log('connect failed')
    }
}
module.exports={connect};  // export ra 