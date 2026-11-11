// Sunset waves
// Change a number. Watch it move.
void mainImage( out vec4 fragColor, in vec2 fragCoord )
{
  vec2 uv = fragCoord / iResolution.xy;
  float gry=sin(3.*uv.x)*cos(3.*uv.y)+sin(3.*uv.y)*cos(iTime)+sin(iTime)*cos(3.*uv.x);
  float r=float(gry<.25 && gry>-.25);
  fragColor=vec4(r,0,0,0);
}
