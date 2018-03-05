
            function chkcontrol(j) {
                var total = 0;
                for (var i = 0; i < document.form1.insert.length; i++) {
                    if (document.form1.insert[i].checked) {
                        total = total + 1;
                    }
                    if (total > 1){
                        alert("Please Select only one")
                        document.form1.insert[j].checked = false;
                        return false;
                    }
                }
            }