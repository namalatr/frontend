<template>
    <div class="vue-tempalte">
        <form>
            <h3>Log In</h3>
            <div class="form-group">
                <label>Email address</label>
                <input type="text" class="form-control form-control-lg" v-model="email" />
            </div>
            <div class="form-group">
                <label>Password</label>
                <input type="password" class="form-control form-control-lg" v-model="password" />
            </div>
            <button type="submit" class="btn btn-dark btn-lg btn-block" v-on:click="login">Login In</button>             
        </form>
    </div>
</template>

<script>    
    // import axios from 'axios';
    export default {
        data() {
            return {
                email:"root",
                password:"root123"
            }
        },
        methods : {
            login : function(){
                console.log("this is login");
                // alert("this is login")
                // const payload = {
                //     username: "root",
                //     password: "root123"
                // }
                // alert("this is payload")
                // axios.post("/api/token/",payload)
                // .then((res)=>{
                //     alert("succ");
                //     console.log(res)
                // })
                // .catch((e)=>{
                //     alert("error")
                //     console.log(e);
                // })                
            }
        }
    }
   
</script>