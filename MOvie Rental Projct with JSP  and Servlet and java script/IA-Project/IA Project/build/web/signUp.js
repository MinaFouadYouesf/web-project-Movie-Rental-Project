


function checkform(form)
{
    var pass = document.getElementsByName("password");
    var Cpass = document.getElementsByName("confirmpassword");
    var accountNumber = document.getElementsByName("accountnum");
    if (pass !== Cpass)
    {
        alert("confirm password")
        return false;
    }
    if (!/[0-9]/.test(pass) && !/[a-b]/.test(pass) && !/[A-B]/.test(pass))
    {
        alert(" you must enter integer and small character and capital character ");
        return false;

    }

    if (!/[0-9]/.test(accountNumber))
    {
        alert(" the Account Number must be integer ");
        return false;

    }

}


