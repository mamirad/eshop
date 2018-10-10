 $(document).ready(function()
 {
 	 $("#cource_classname").change(function()
      {


 	 var classname = $("#cource_classname option:selected").text();
 	 if(classname=="Select a Class")
 	 {
 	 	
       $( "#cource_sectionname" ).html("<option>Select section</option>");

 	 }

  
     var params = '{"field1"=>"value1", "field2"=>"value2"}';

        // #establishclasses is name of controller and append_sections name of function in cources controller

      $.get('/cources/append_sections?classname='+classname, params, function(data)
      {

      
       $( "#cource_sectionname" ).html("<option>Select section</option>");

      $.each(data,function(key,value)
       {
//$( "#cource_sectionname" ).html("<option>Select section</option>");

        $( "#cource_sectionname" ).append("<option value='"+value.sectionname+"'>"+value.sectionname+"</option>");

        });


        });

    });






   $("#cource_sectionname").change(function()
      {
   var sectionname = $("#cource_sectionname option:selected").text();
   var classname = $("#cource_classname option:selected").text();
  



   if(classname=="Select a Class" || sectionname=="Select a section")
 	 {
 	 	
       $( "#cource_shiftname" ).html("<option>Select shift</option>");

 	 }



     var params = '{"field1"=>"value1", "field2"=>"value2"}';

        // #establishclasses is name of controller and append_sections name of function in cources controller

      $.get('/cources/append_shifts?classname='+classname+'&sectionname='+sectionname, params, function(data)
      {
      
       $( "#cource_shiftname" ).html("<option>Select shift</option>");

      $.each(data,function(key,value)
       {

        $( "#cource_shiftname" ).append("<option value='"+value+"'>"+value+"</option>");
exit();
        });


        });

    });






 });