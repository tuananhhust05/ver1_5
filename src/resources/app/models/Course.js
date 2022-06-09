const mongoose =require('mongoose');
const Schema=mongoose.Schema;


const Course= new Schema({  // khống thấy id=> lưu ý chỗ này
    name:{type:String,maxlength:255},
    description:{type:String,maxlength:600},
    image:{type:String,maxlength:255},
    // default là cài mặc định khi không có gì thì hiện 
    createAt:{type:Date,default:Date.now}, // thời gian tạo 
    updateAt:{type:Date,default:Date.now},// thời gian cập nhật 
})
// model trả ra cần trùng tên; thằng mongoose nó down xuống nó tự viết thường thêm số nhiều và tìm tới bảng 
// nếu chưa có bảng thì nó tạo cho luôn 
module.exports= mongoose.model('course',Course) // xuất ra dữ liệu dạng models
