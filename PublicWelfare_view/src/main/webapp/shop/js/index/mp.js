/**
 * 王飞
 * 品牌栏
 */
$(function(){
    ajax.method('get','mp/index.do',{"date":Math.random()*100},
    function(result){
       mp.data(result);
    },
    function(){

    });

    ajax.method('get','tm/index.do',{"date":Math.random()*100},
    function(result){
      //mp.tm(result);
       
       
    },
    function(){

    });
});
var mp = {
    data:function(result){
        var info = $('#fashion-info');
        result.forEach(function(value,index){
            var div = $('<div class="col-md-4 fashion-grids"></div>');
            var figure = $('<figure class="effect-bubba"></figure>');
            var img = $('<img/>');
            img.attr('src',value.url);
            img.attr('alt',value.name);
            
            var figcaption = $('<figcaption></figcaption>');
            var h4 = $('<h4></h4>');
            h4.text(value.name);
            var p = $('<p class="cart"><a href="https://www.baidu.com/">'+value.title+'</a></p>');
             figure.append(img);
            figcaption.append(h4);
            figcaption.append(p);
            figure.append(figcaption);
           
            div.append(figure);
            info.append(div);
            if((index+1) % 3 ==0){
                var clearTop = $('<div class="collection-section"></div>');
                //<div class="collection-section"><div class="container"> <h3 class="tittle fea">FEATURED COLLECTIONS</h3><div class="fashion-info"></div></div></div>'
                info.append($('<div class="clearfix"></div>'));
                info.append(clearTop);
            }
        });
    },
    tm:function(result){
        var i = $('<i class="glyphicon glyphicon-tag"></i>');
        var ul = $('<ul class="selectors_wrapper" id="selectors_wrapper"></ul>');
        var content = ('<div class="standard_content"><div class="standard active" data-selector="2"><h1>1111</h1></div></div>');
        result.forEach(function(value,index){
            var li = $('<li data-selector="'+value.id+'" class="selector">'+value.name+'</li>')
            ul.append(li);
            $('#standards').append(ul);
           
            li.on('mouseover',function(e){
               $(this).addClass('selector active');
            });
            li.on('mouseout',function(e){
               $(this).removeClass('selector active');
               $(this).addClass('selector');
            });
        });
         $('#standards').append(content);
    }
}