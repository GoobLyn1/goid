// Sunset waves
// Change a number. Watch it move.
void mainImage( out vec4 fragColor, in vec2 fragCoord )
{
  vec2 uv = fragCoord / iResolution.xy;
  float gry=sin(uv.x)*cos(uv.y)+sin(uv.y)*cos(iTime)+sin(iTime)*cos(uv.x);
  float r=float(gry>.5 && gry<.5);
  fragColor=vec4(r,0,0,0);
}
