// Sunset waves
// Change a number. Watch it move.
void mainImage( out vec4 fragColor, in vec2 fragCoord )
{
  vec2 uv = fragCoord / iResolution.xy;
  float gry0=sin(13.*uv.x)*cos(13.*uv.y)+sin(13.*uv.y)*cos(iTime*2.)+sin(iTime*2.)*cos(13.*uv.x);
  float gry1=sin(17.*uv.x)*cos(17.*uv.y)+sin(17.*uv.y)*cos(iTime*5.)+sin(iTime*5.)*cos(17.*uv.x);
  float gry2=sin(23.*uv.x)*cos(23.*uv.y)+sin(23.*uv.y)*cos(iTime*11.)+sin(iTime*11.)*cos(23.*uv.x);
  float r=1.-abs(gry0/1.5);
  float b=1.-abs(gry1/1.5);
  float g=1.-abs(gry2/1.5);
  float timer = iTime-gry0/13.;
  float timeg = iTime-gry1/13.;
  float timeb = iTime-gry2/13.;
  float gry0f=sin(13.*uv.x)*cos(13.*uv.y)+sin(13.*uv.y)*cos(timer*2.)+sin(timer*2.)*cos(13.*uv.x);
  float gry1f=sin(17.*uv.x)*cos(17.*uv.y)+sin(17.*uv.y)*cos(timeg*5.)+sin(timeg*5.)*cos(17.*uv.x);
  float gry2f=sin(23.*uv.x)*cos(23.*uv.y)+sin(23.*uv.y)*cos(timeb*11.)+sin(timeb*11.)*cos(23.*uv.x);
  float rf=1.-abs(gry0f/1.5);
  float bf=1.-abs(gry1f/1.5);
  float gf=1.-abs(gry2f/1.5);
  fragColor=vec4(rf,gf,bf,1.0);
}
