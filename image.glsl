// Sunset waves
// Change a number. Watch it move.
void mainImage( out vec4 fragColor, in vec2 fragCoord )
{
  vec2 uv = fragCoord / iResolution.xy;
  float gry0=sin(13.*(uv.x+sin(3.*iTime/5.+sin(iTime/5.))))*cos(13.*(uv.y+sin(2.*iTime/5.+sin(3.*iTime/5.))))+sin(13.*(uv.y+sin(2.*iTime/5.+sin(3.*iTime/5.))))*cos(iTime*2.)+sin(iTime*2.)*cos(13.*(uv.x+sin(3.*iTime/5.+sin(iTime/5.))));
  float gry1=sin(17.*(uv.x+sin(3.*iTime/5.+sin(iTime/5.))))*cos(17.*(uv.y+sin(2.*iTime/5.+sin(3.*iTime/5.))))+sin(17.*(uv.y+sin(2.*iTime/5.+sin(3.*iTime/5.))))*cos(iTime*5.)+sin(iTime*5.)*cos(17.*(uv.x+sin(3.*iTime/5.+sin(iTime/5.))));
  float gry2=sin(23.*(uv.x+sin(3.*iTime/5.+sin(iTime/5.))))*cos(23.*(uv.y+sin(2.*iTime/5.+sin(3.*iTime/5.))))+sin(23.*(uv.y+sin(2.*iTime/5.+sin(3.*iTime/5.))))*cos(iTime*11.)+sin(iTime*11.)*cos(23.*(uv.x+sin(3.*iTime/5.+sin(iTime/5.))));
  float r=1.-abs(gry0/1.5);
  float b=1.-abs(gry1/1.5);
  float g=1.-abs(gry2/1.5);
  float timer = iTime-gry0/5.;
  float timeg = iTime-gry1/7.;
  float timeb = iTime-gry2/11.;
  float gry0f=sin(13.*(uv.x+sin(3.*iTime/5.+sin(iTime/5.))))*cos(13.*(uv.y+sin(2.*iTime/5.+sin(3.*iTime/5.))))+sin(13.*(uv.y+sin(2.*iTime/5.+sin(3.*iTime/5.))))*cos(timer*2.)+sin(timer*2.)*cos(13.*(uv.x+sin(3.*iTime/5.+sin(iTime/5.))));
  float gry1f=sin(17.*(uv.x+sin(3.*iTime/5.+sin(iTime/5.))))*cos(17.*(uv.y+sin(2.*iTime/5.+sin(3.*iTime/5.))))+sin(17.*(uv.y+sin(2.*iTime/5.+sin(3.*iTime/5.))))*cos(timeg*5.)+sin(timeg*5.)*cos(17.*(uv.x+sin(3.*iTime/5.+sin(iTime/5.))));
  float gry2f=sin(23.*(uv.x+sin(3.*iTime/5.+sin(iTime/5.))))*cos(23.*(uv.y+sin(2.*iTime/5.+sin(3.*iTime/5.))))+sin(23.*(uv.y+sin(2.*iTime/5.+sin(3.*iTime/5.))))*cos(timeb*11.)+sin(timeb*11.)*cos(23.*(uv.x+sin(3.*iTime/5.+sin(iTime/5.))));
  float rf=1.-abs(gry0f/1.5);
  float bf=1.-abs(gry1f/1.5);
  float gf=1.-abs(gry2f/1.5);
  fragColor=vec4(rf,gf,bf,1.0);
}
