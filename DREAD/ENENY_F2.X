xof 0302txt 0064
template Header {
 <3D82AB43-62DA-11cf-AB39-0020AF71E433>
 WORD major;
 WORD minor;
 DWORD flags;
}

template Vector {
 <3D82AB5E-62DA-11cf-AB39-0020AF71E433>
 FLOAT x;
 FLOAT y;
 FLOAT z;
}

template Coords2d {
 <F6F23F44-7686-11cf-8F52-0040333594A3>
 FLOAT u;
 FLOAT v;
}

template Matrix4x4 {
 <F6F23F45-7686-11cf-8F52-0040333594A3>
 array FLOAT matrix[16];
}

template ColorRGBA {
 <35FF44E0-6C7C-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
 FLOAT alpha;
}

template ColorRGB {
 <D3E16E81-7835-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
}

template IndexedColor {
 <1630B820-7842-11cf-8F52-0040333594A3>
 DWORD index;
 ColorRGBA indexColor;
}

template Boolean {
 <4885AE61-78E8-11cf-8F52-0040333594A3>
 WORD truefalse;
}

template Boolean2d {
 <4885AE63-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template MaterialWrap {
 <4885AE60-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template TextureFilename {
 <A42790E1-7810-11cf-8F52-0040333594A3>
 STRING filename;
}

template Material {
 <3D82AB4D-62DA-11cf-AB39-0020AF71E433>
 ColorRGBA faceColor;
 FLOAT power;
 ColorRGB specularColor;
 ColorRGB emissiveColor;
 [...]
}

template MeshFace {
 <3D82AB5F-62DA-11cf-AB39-0020AF71E433>
 DWORD nFaceVertexIndices;
 array DWORD faceVertexIndices[nFaceVertexIndices];
}

template MeshFaceWraps {
 <4885AE62-78E8-11cf-8F52-0040333594A3>
 DWORD nFaceWrapValues;
 Boolean2d faceWrapValues;
}

template MeshTextureCoords {
 <F6F23F40-7686-11cf-8F52-0040333594A3>
 DWORD nTextureCoords;
 array Coords2d textureCoords[nTextureCoords];
}

template MeshMaterialList {
 <F6F23F42-7686-11cf-8F52-0040333594A3>
 DWORD nMaterials;
 DWORD nFaceIndexes;
 array DWORD faceIndexes[nFaceIndexes];
 [Material]
}

template MeshNormals {
 <F6F23F43-7686-11cf-8F52-0040333594A3>
 DWORD nNormals;
 array Vector normals[nNormals];
 DWORD nFaceNormals;
 array MeshFace faceNormals[nFaceNormals];
}

template MeshVertexColors {
 <1630B821-7842-11cf-8F52-0040333594A3>
 DWORD nVertexColors;
 array IndexedColor vertexColors[nVertexColors];
}

template Mesh {
 <3D82AB44-62DA-11cf-AB39-0020AF71E433>
 DWORD nVertices;
 array Vector vertices[nVertices];
 DWORD nFaces;
 array MeshFace faces[nFaces];
 [...]
}

Header {
 1;
 0;
 1;
}

Mesh {
 33;
 -4.500000;2.000000;5.500000;,
 4.500000;2.000000;5.500000;,
 -3.100000;0.000000;-7.000000;,
 3.100000;0.000000;-7.000000;,
 2.500000;2.000000;-6.000000;,
 -2.500000;2.000000;-6.000000;,
 -2.500000;3.000000;-0.500000;,
 2.500000;3.000000;-0.500000;,
 0.000000;1.465028;15.311291;,
 0.000000;2.000000;-11.500000;,
 0.000000;3.850000;-5.440000;,
 2.500000;0.000000;-11.000000;,
 -2.500000;0.000000;-11.000000;,
 4.000000;2.000000;-4.500000;,
 -4.000000;2.000000;-4.500000;,
 -4.500000;2.000000;0.000000;,
 4.500000;2.000000;0.000000;,
 0.000037;-0.001605;13.670570;,
 -6.000000;0.000000;0.000000;,
 6.000000;0.000000;0.000000;,
 -5.000000;0.000000;-6.000000;,
 5.000000;0.000000;-6.000000;,
 0.000101;0.000705;-16.129433;,
 4.815287;0.031215;8.770588;,
 -4.815287;0.031215;8.770588;,
 5.215230;0.038653;6.670588;,
 -5.215230;0.038653;6.670588;,
 36.534855;-3.383914;17.430214;,
 -36.534855;-3.383914;17.430214;,
 -39.601147;-3.383612;16.430218;,
 39.601147;-3.383612;16.430218;,
 -39.601154;-3.383307;15.030218;,
 39.601154;-3.383307;15.030218;;

 55;
 3;11,21,3;,
 3;22,11,9;,
 3;10,8,17;,
 3;1,8,10;,
 3;17,8,23;,
 3;10,11,1;,
 3;11,10,9;,
 3;22,25,27;,
 3;21,30,27;,
 3;19,25,1;,
 3;21,19,13;,
 3;16,1,7;,
 3;4,13,7;,
 3;3,21,4;,
 3;1,25,23;,
 3;12,2,20;,
 3;22,9,12;,
 3;0,10,8;,
 3;17,24,8;,
 3;10,0,12;,
 3;12,9,10;,
 3;22,29,26;,
 3;20,18,28;,
 3;18,15,0;,
 3;20,14,18;,
 3;15,6,0;,
 3;5,6,14;,
 3;2,5,20;,
 3;0,24,26;,
 3;8,1,23;,
 3;11,25,1;,
 3;30,32,22;,
 3;17,23,25;,
 3;27,30,22;,
 3;22,17,25;,
 3;27,25,19;,
 3;21,32,30;,
 3;27,19,21;,
 3;1,16,19;,
 3;19,16,13;,
 3;13,16,7;,
 3;21,13,4;,
 3;24,0,8;,
 3;0,26,12;,
 3;24,17,22;,
 3;29,28,26;,
 3;26,24,22;,
 3;22,31,29;,
 3;29,31,20;,
 3;18,26,28;,
 3;28,29,20;,
 3;0,26,18;,
 3;14,15,18;,
 3;6,15,14;,
 3;5,14,20;;

 MeshMaterialList {
  1;
  1;
  0;;
  Material {
   1.000000;1.000000;1.000000;1.000000;;
   0.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
 }
 MeshTextureCoords {
  33;
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;;
 }
}
