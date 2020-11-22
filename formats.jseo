
loader [origin] 
{ -i ${entry} },
loader [mp3] 
{./video -y ${jseo.origin} -vn -ac 2 -ar 44100 ${entry} },

loader [gsm]
{./video -y ${jseo.origin} -vn -ac 1 -ar 8000 ${entry}},

loader [mp4]
{./video -y ${jseo.origin} -f mp4 ${entry} },

module [gif] 
{./video -y ${jseo.origin} ${jseo.JSON("{"+code+"}", jseo.clip)?"":""} ${jseo.clip.start?"-ss "+jseo.clip.start:""} ${jseo.clip.duration?"-t "+jseo.clip.duration:""} ${jseo.clip.end?"-to "+jseo.clip.end:""} -filter_complex "[0:v] fps=15" -an ${name}.gif },

module [clip] 
{./video -y ${jseo.origin} ${jseo.JSON("{"+code+"}", jseo.clip)?"":""} ${jseo.clip.start?"-ss "+jseo.clip.start:""} ${jseo.clip.duration?"-t "+jseo.clip.duration:""} ${jseo.clip.end?"-to "+jseo.clip.end:""} ${name} },


origin [loop]
{loop = " -stream_loop -1 "+this+"  -t " + each ;},

loader [audio]
{./video -y ${jseo.origin} -i ${entry} -shortest -map 0:v:0 -map 1:a:0 -f mp4 ${jseo.out} },
loader [video]
{./video -y ${jseo.origin} -i ${entry} -shortest -map 0:a:0 -map 1:v:0 -f mp4 ${jseo.out} },

module [tube]
{./youtube ${code} -o ${name}},

"video"
[run]{std.popen( each ,"r");}
[call]
{
  var cmd=(each+"").split(" ")
  var trim=[];
  
  cmd.forEach({},
  function(each){if(this!="")
    trim.add(this);});
    
  var c=os.exec(trim); 
  os.waitpid(c,0);
},


