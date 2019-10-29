function register(){
    let fn = document.getElementById("fname").value;
    let ln = document.getElementById("lname").value;
    let e  = document.getElementById("email").value;
    let ec = document.getElementById("email-con").value;
    let p  = document.getElementById("pass").value;
    let pc = document.getElementById("pass-con").value;
    let l1 = document.getElementById("label_1");
    let l2 = document.getElementById("label_2");
    let l3 = document.getElementById("label_3");
    let l4 = document.getElementById("label_4");
    let l5 = document.getElementById("label_5");
    let l6 = document.getElementById("label_6");
    l1.innerHTML= fn ? "" : "First Name cannot be left empty"; 
    l2.innerHTML= ln ? "" : "Last Name cannot be left empty";
    l3.innerHTML= e  ? "" : "Email cannot be left empty";
    l4.innerHTML= ec ? "" : "Email cannot be left empty";
    l5.innerHTML= p  ? "" : "Password cannot be left empty";
    l6.innerHTML= pc ? "" : "Password cannot be left empty";
    if (e||ec){
        l3.innerHTML= e==ec ? "" : "Emails must match";
        l4.innerHTML= e==ec ? "" : "Emails must match";
    }
    if (p||pc){
        l5.innerHTML= p==pc ? "" : "Passwords must match";
        l6.innerHTML= p==pc ? "" : "Passwords must match";
    }
    if (fn&&ln&&e&&ec&&p&&pc&&p==pc&&e==ec) window.location.href = "index.html";
}

function login(){
    let e=document.getElementById("login_email").value;
    let p=document.getElementById("login_pass").value;
    let l1=document.getElementById("label_1");
    let l2=document.getElementById("label_2");
    
    l1.innerHTML=e ? "" : "Email cannot be left empty";
    l2.innerHTML=p ? "" : "Password cannot be left empty";
    
    if (e&&p&&validate(e,p,"login")) window.location.href = "index.html";
}

function validate(e,p,status){
    //check if e is in database
    //check if p matches the password associated to email e
    // if both match return true, else false
    return true;
}

function search(){
    var a = document.getElementById("searchquery").value;
    
    window.location = "search.html";
    

}



function update(){
    let fn = document.getElementById("fname").value;
    let ln = document.getElementById("lname").value;
    let e  = document.getElementById("email").value;
    let p  = document.getElementById("pass").value;
    let ad = document.getElementById("address").value;
    let ci = document.getElementById("city").value;
    let st = document.getElementById("state").value;
    let zi = document.getElementById("zip").value;
    let pc = document.getElementById("pass-current").value;
    let ec = document.getElementById("email-current").value;
    let l1 = document.getElementById("label_1");
    let l2 = document.getElementById("label_2");


    l1.innerHTML= ec ? "" : "Email cannot be left empty"; 
    l2.innerHTML= pc ? "" : "Password cannot be left empty";

    // ADD SOMETHING THAT CHECKS THE VALIDITY OF EC PC

    if(pc&&ec&&validate(ec,pc,"update")) window.location.href = "profile.html";

}
