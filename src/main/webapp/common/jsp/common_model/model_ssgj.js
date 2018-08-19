
  function reload(){
    
  var code=document.getElementById("jscode");
  if(!code) return;
  document.body.removeChild(code);
  code=document.createElement("script");
  code.src="http://hq.sinajs.cn/list=sh600019,sh600581,sh600845,sz000717,sh601968";
  code.id="jscode";
  code.charset="utf-8";
  document.body.appendChild(code);
  elements=hq_str_sh600019.split(",");
  if (elements[1]==0)
  { 
  document.getElementById("sh600019_1").value=("-"); 
  document.getElementById("sh600019_2").value=("-");
  }
  else 
  if (elements[3]-elements[2]<0)
  {
  document.getElementById("sh600019_1").style.color="green"; 
  document.getElementById("sh600019_1").value=elements[3]; 
  document.getElementById("sh600019_2").style.color="green"; 
  document.getElementById("sh600019_2").value=(((elements[3]-elements[2])/elements[2]*100).toFixed(2)+"%");
  }
  else
  {
  document.getElementById("sh600019_1").style.color="red"; 
  document.getElementById("sh600019_1").value=elements[3]; 
  document.getElementById("sh600019_2").style.color="red"; 
  document.getElementById("sh600019_2").value=(((elements[3]-elements[2])/elements[2]*100).toFixed(2)+"%");
  }

 
  
  elements=hq_str_sh600581.split(",");
  if (elements[1]==0)
  { 
  document.getElementById("sh600581_1").value=("-"); 
  document.getElementById("sh600581_2").value=("-");
  }
  else  
  if (elements[3]-elements[2]<0)
  {
  document.getElementById("sh600581_1").style.color="green"; 
  document.getElementById("sh600581_1").value=elements[3]; 
  document.getElementById("sh600581_2").style.color="green"; 
  document.getElementById("sh600581_2").value=(((elements[3]-elements[2])/elements[2]*100).toFixed(2)+"%");
  }
  else
  {
  document.getElementById("sh600581_1").style.color="red"; 
  document.getElementById("sh600581_1").value=elements[3]; 
  document.getElementById("sh600581_2").style.color="red"; 
  document.getElementById("sh600581_2").value=(((elements[3]-elements[2])/elements[2]*100).toFixed(2)+"%");
  }

  elements=hq_str_sh600845.split(",");
  if (elements[1]==0)  
  { 
  document.getElementById("sh600845_1").value=("-"); 
  document.getElementById("sh600845_2").value=("-");
  }
  else  
  if (elements[3]-elements[2]<0)
  {
  document.getElementById("sh600845_1").style.color="green"; 
  document.getElementById("sh600845_1").value=elements[3]; 
  document.getElementById("sh600845_2").style.color="green"; 
  document.getElementById("sh600845_2").value=(((elements[3]-elements[2])/elements[2]*100).toFixed(2)+"%");
  }
  else
  {
  document.getElementById("sh600845_1").style.color="red"; 
  document.getElementById("sh600845_1").value=elements[3]; 
  document.getElementById("sh600845_2").style.color="red"; 
  document.getElementById("sh600845_2").value=(((elements[3]-elements[2])/elements[2]*100).toFixed(2)+"%");
  }

  elements=hq_str_sz000717.split(",");
  if (elements[1]==0)  
  { 
  document.getElementById("sz000717_1").value=("-"); 
  document.getElementById("sz000717_2").value=("-");
  }
  else  
  if (elements[3]-elements[2]<0)
  {
  document.getElementById("sz000717_1").style.color="green"; 
  document.getElementById("sz000717_1").value=elements[3]; 
  document.getElementById("sz000717_2").style.color="green"; 
  document.getElementById("sz000717_2").value=(((elements[3]-elements[2])/elements[2]*100).toFixed(2)+"%");
  }
  else
  {
  document.getElementById("sz000717_1").style.color="red"; 
  document.getElementById("sz000717_1").value=elements[3]; 
  document.getElementById("sz000717_2").style.color="red"; 
  document.getElementById("sz000717_2").value=(((elements[3]-elements[2])/elements[2]*100).toFixed(2)+"%");
  }

  elements=hq_str_sh601968.split(",");
  if (elements[1]==0)  
  { 
  document.getElementById("sh601968_1").value=("-"); 
  document.getElementById("sh601968_2").value=("-");
  }



  else  
  if (elements[3]-elements[2]<0)
  {
  document.getElementById("sh601968_1").style.color="green"; 
  document.getElementById("sh601968_1").value=elements[3]; 
  document.getElementById("sh601968_2").style.color="green"; 
  document.getElementById("sh601968_2").value=(((elements[3]-elements[2])/elements[2]*100).toFixed(2)+"%");
  }
  else
  {
  document.getElementById("sh601968_1").style.color="red"; 
  document.getElementById("sh601968_1").value=elements[3]; 
  document.getElementById("sh601968_2").style.color="red"; 
  document.getElementById("sh601968_2").value=(((elements[3]-elements[2])/elements[2]*100).toFixed(2)+"%");
  }

  }
  reload();
  setInterval(reload,3000);//每两秒钟更新一次 