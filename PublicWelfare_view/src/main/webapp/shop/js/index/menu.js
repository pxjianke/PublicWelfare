/**
 * 菜单列表多嵌套集合
 * 王飞 2017-9-8
 */
$(function(){
    ajax.method('get','home/index.do',{"date":Math.random()*100},
    function(result){
       menu(result);
    },
    function(){

    });
    var menu = function(result){
        result.forEach(function(value,index) {
             var li = $('<li><a class="color6" href="#">'+value.text+'</a></li>');
             var li_div = $('<div class="megapanel"></div>');
             var row = $('<div class="row"></div>');
             li_div.append(row);
             var viewStr = view(value.nvaListTitle,li_div);
             viewStr.forEach(function(value,index) {
                 row.append(value);
             });
             li.append(li_div);
             $('#li_megamenu').append(li);
        });  
    }
    var view = function(result,element){
       var viewStr = [];
        result.forEach(function(value,index) {
             var col1 = $('<div class="col1"></div>');
             var h_nav = $('<div class="h_nav"></div>');
             col1.append(h_nav);
             var menuTitle = $('<h4></h4>');
             menuTitle.text(value.text);
             var ul = $('<ul></ul>');
             value.nvaListList.forEach(function(value,index){
                 
                 ul.append($('<li><a href="product.html">'+value.text+'</a></li>'));
             }) 
             h_nav.append(menuTitle);
             h_nav.append(ul);
             viewStr.push(col1);
        });
            return viewStr;
    }
    
})