//use path module
const path = require('path');
//use express module
const express = require('express');
//use bodyParser middleware
const bodyParser = require('body-parser');
//use mysql database
//const cors = require('cors');
const mysql = require('mysql');
const app = express();
var connect = require('connect');
var serveStatic = require('serve-static');
var conn = require("./database");

 
app.use(bodyParser.json());
 
//route for homepage
app.get('/all-users',(req, res) => {
  let sql = "SELECT * FROM users";
  let query = conn.query(sql, (err, results) => {
    console.log("successfull");
    if(err) throw err;
    res.send(results);
    //app.listen(3000); 
   
  });
});
 

app.get('/all-users-card',(req, res) => {
  let sql = "SELECT * FROM users_carddetails";
  let query = conn.query(sql, (err, results) => {
    console.log("successfull");
    if(err) throw err;
    res.send(results);
   
  });
});

app.post('/email-check',(req, res) => {
  let sql = "SELECT email_id FROM users where ? IN (email_id,mobile_no)";
  let query = conn.query(sql,[req.body.email_id],(err, results) => {
    console.log("query",sql);
    if(err) throw err;
    res.send(results);   
  });
});

app.post('/insert-user',(req, res) => {
  let sql = "SELECT email_id FROM users where email_id=?";
  let query = conn.query(sql,[req.body.email_id],(err, results) => {
    if(err) throw err;
    if(results.length == 0){
      let data = {email_id: req.body.email_id,mobile_no: req.body.mobile_no,password: req.body.password};
      let sql = "INSERT INTO users SET ?";
      let query = conn.query(sql, data,(err, results) => {
        console.log("err",err);
        if(err) throw err;
        res.send(results);
       // app.listen(3000); 
      });
    }else{
      res.send({"insertId":'already_exist'});
    }
  });
 
});


app.post('/insert-plan',(req, res) => {
  let data = [req.body.plan, req.body.id];
  let sql = "UPDATE users SET plan = ? WHERE id = ?";
  let query = conn.query(sql, data,(err, results) => {
    if(err) throw err;
    res.send(results);
   // app.listen(3000); 
  });
});
 

//route for insert data
app.post('/insert-user-carddetails',(req, res) => {
  let data = {name: req.body.name,card_number: req.body.card_number,cvv:req.body.cvv};
  let sql = "INSERT INTO users_carddetails SET ?";
  let query = conn.query(sql, data,(err, results) => {
    if(err) throw err;
      res.send(results);
    //res.send('inserted successfully');
  });
});
 
//route for update data
app.post('/update',(req, res) => {
  let sql = "UPDATE product SET product_name='"+req.body.product_name+"', product_price='"+req.body.product_price+"' WHERE product_id="+req.body.id;
  let query = conn.query(sql, (err, results) => {
    if(err) throw err;
    res.redirect('/');
  });
});
 
//route for delete data
app.post('/delete',(req, res) => {
  let sql = "DELETE FROM product WHERE product_id="+req.body.product_id+"";
  let query = conn.query(sql, (err, results) => {
    if(err) throw err;
      res.redirect('/');
  });
});
 
//server listening
app.listen(8000, () => {
  console.log('Server is running at port 8000');
});
/*app.listen(3000, () => {
  console.log('Server is running at port 3000');
});*/

