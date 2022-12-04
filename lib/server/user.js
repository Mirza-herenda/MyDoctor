const mongoose=require("mongoose");

const UserSchema=mongoose.Schema({
    address:{
        type:String,
        default:""
    },
     name:{
        type:String,
        require:true,
        trim:true
     },
     password:{
        type:String,
        require:true,
        validate:{
            validator:(value)=>{
               return value.length>6;
    
            },
            message:"please enter longer password"
            }

     },
     email:{
        type:String,
        require:true,
        trim:true,
        validate:{
        validator:(value)=>{
            const reg=/^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;
            return value.match(reg);

        },
        message:"please enter valid email"
        }
     }
})

const User=mongoose.model("User",UserSchema);
module.exports=User;