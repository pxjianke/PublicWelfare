var ajax = {
    method:function(type,url,data,success,error){
        url = '/PublicWelfare_controller/' + url;
        $.ajax({
            type: type,  
            url: url, 
            data: data,//JSON.stringify(data)
            async : true,  
            dataType:"json",   
            success:success,  
            error:error
        })
    }
}