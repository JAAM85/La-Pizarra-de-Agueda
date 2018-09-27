// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require moment
//= require popper
//= require bootstrap-sprockets
//= require bootstrap-datetimepicker
//= require_tree .

function reload_trabajos(date){
  console.log(date);
  $('#tablaTrabajos').html("");
  var url = "/reload_trabajos";

  $.ajax({                        
     type: "POST",                 
     url: url,                     
     data: {"date": date}, 
     success: function(data)             
     {
       $('#tablaTrabajos').html(data);               
     }
 });
} 

function edit_tema(tema){

  $('#tema').html("");
  var url = "/edit_tema";

  $.ajax({                        
     type: "POST",                 
     url: url,                     
     data: {"tema": tema}, 
     success: function(data)             
     {
       $('#tema').html(data);               
     },
     error:function(data)  
     {
       console.log(data);
     }
 });
} 

function edit_trabajo(t){

  $('#trabajo').html("");
  var url = "/edit_trabajo";

  $.ajax({                        
     type: "POST",                 
     url: url,                     
     data: {"trabajo": t}, 
     success: function(data)             
     {
       $('#trabajo').html(data);               
     },
     error:function(data)  
     {
       console.log(data);
     }
 });
} 

function edit_control(c){

  $('#control').html("");
  var url = "/edit_control";

  $.ajax({                        
     type: "POST",                 
     url: url,                     
     data: {"control": c}, 
     success: function(data)             
     {
       $('#control').html(data);               
     },
     error:function(data)  
     {
       console.log(data);
     }
 });
} 

function edit_actividad(actividad){

  $('#actividad').html("");
  var url = "/edit_actividad";

  $.ajax({                        
     type: "POST",                 
     url: url,                     
     data: {"actividad": actividad}, 
     success: function(data)             
     {
       $('#actividad').html(data);               
     },
     error:function(data)  
     {
       console.log(data);
     }
 });
}

function delete_contenido(contenido, id){

  var url = "/delete_"+contenido;

  $.ajax({                        
     type: "POST",                 
     url: url,                     
     data: {"id": id}, 
     success: function(data)             
     {
       window.location.reload();              
     },
     error:function(data)  
     {
       console.log(data);
     }
 });
}
