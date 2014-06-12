xof 0302txt 0032

// Direct3D X file written by ModelConverterX
// martes, 20 de diciembre de 2011

template Header {
   <3D82AB43-62DA-11cf-AB39-0020AF71E433>
   WORD major;
   WORD minor;
   DWORD flags;
}

template GuidToName {
   <7419dfe5-b73a-4d66-98d8-c082591dc9e7>
   STRING Guid;
   STRING Name;
}

template Vector {
   <3D82AB5E-62DA-11cf-AB39-0020AF71E433>
   FLOAT x;
   FLOAT y;
   FLOAT z;
}

template SkinWeight {
   <C3B5EDF9-7345-463d-96D7-6386E2EC4030>
   STRING boneRef;
   FLOAT weight;
}

template SkinWeightGroup {
   <E7B502DB-0C05-4288-A025-80762E19E0AB>
   DWORD nWeights;
   array SkinWeight skinWeights[nWeights];
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

template MeshTextureCoords {
   <F6F23F40-7686-11cf-8F52-0040333594A3>
   DWORD nTextureCoords;
   array Coords2d textureCoords[nTextureCoords];
}

template MeshSkinWeights {
   <C7E2131A-30F3-4eb9-AACC-E0AE11D8FE62>
   DWORD nVertices;
   array SkinWeightGroup skinWeights[nVertices];
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

template Mesh {
   <3D82AB44-62DA-11cf-AB39-0020AF71E433>
   DWORD nVertices;
   array Vector vertices[nVertices];
   DWORD nFaces;
   array MeshFace faces[nFaces];
   [...]
}

template BoneInfo {
   <1FF0AE59-4B0B-4dfe-88F2-91D58E395767>
   STRING boneName;
}

template AnimLinkName {
   <0057EC91-F96B-4f5e-9CFB-0E305F39DA1A>
   STRING linkName;
}

template IKChain {
   <2684B333-AAB2-45d9-87D8-6E2BB22616AD>
   STRING chainName;
   STRING startNode;
   STRING endNode;
}

template ConstraintInfo {
   <8713D495-C538-44dc-AE54-1097E7C93D13>
   Boolean bActive;
   Boolean bLimited;
   FLOAT fUpperLimit;
   FLOAT fLowerLimit;
}

template JointConstraint {
   <BE433CF1-BCC0-43f8-9FE5-DB0556414426>
   array ConstraintInfo Rotation[3];
   array ConstraintInfo Translation[3];
}

template FrameTransformMatrix {
   <F6F23F41-7686-11cf-8F52-0040333594A3>
   Matrix4x4 frameMatrix;
}

template Frame {
   <3D82AB46-62DA-11cf-AB39-0020AF71E433>
   [...]
}

template FloatKeys {
   <10DD46A9-775B-11cf-8F52-0040333594A3>
   DWORD nValues;
   array FLOAT values[nValues];
}

template TimedFloatKeys {
   <F406B180-7B3B-11cf-8F52-0040333594A3>
   DWORD time;
   FloatKeys tfkeys;
}

template AnimationKey {
   <10DD46A8-775B-11cf-8F52-0040333594A3>
   DWORD keyType;
   DWORD nKeys;
   array TimedFloatKeys keys[nKeys];
}

template AnimationOptions {
   <E2BF56C0-840F-11cf-8F52-0040333594A3>
   DWORD openclosed;
   DWORD positionquality;
}

template Animation {
   <3D82AB4F-62DA-11cf-AB39-0020AF71E433>
   [...]
}

template AnimationSet {
   <3D82AB50-62DA-11cf-AB39-0020AF71E433>
   [Animation]
}

template DiffuseTextureFileName {
   <E00200E2-D4AB-481a-9B85-E20F9AE07401>
   STRING filename;
}

template SpecularTextureFileName {
   <DF64E0D7-4FFA-4634-9DA0-3EF2FAA081CE>
   STRING filename;
}

template AmbientTextureFileName {
   <E00200E2-D4AB-481a-9B85-E20F9AE07402>
   STRING filename;
}

template EmissiveTextureFileName {
   <E00200E2-D4AB-481a-9B85-E20F9AE07403>
   STRING filename;
}

template ReflectionTextureFileName {
   <E00200E2-D4AB-481a-9B85-E20F9AE07404>
   STRING filename;
}

template ShininessTextureFileName {
   <E00200E2-D4AB-481a-9B85-E20F9AE07405>
   STRING filename;
}

template BumpTextureFileName {
   <E00200E2-D4AB-481a-9B85-E20F9AE07406>
   STRING filename;
}

template DisplacementTextureFileName {
   <E00200E2-D4AB-481a-9B85-E20F9AE07407>
   STRING filename;
}

template DetailTextureFileName {
   <C223DC28-5C0E-41bc-9706-A30E023EF118>
   STRING filename;
}

template FresnelTextureFileName {
   <C16742E5-974D-4576-870D-2047C79DF7A9>
   STRING filename;
}

template FS10Material {
   <16B4B490-C327-42e3-8A71-0FA35C817EA2>
   ColorRGBA FallbackDiffuse;
   ColorRGB  Specular;
   FLOAT     Power;
   FLOAT     DetailScale;
   FLOAT     BumpScale;
   FLOAT     EnvironmentLevelScale;
   Boolean   bUseGlobalEnv;
   Boolean   bModEnvInvDiffuseAlpha;
   Boolean   bModEnvSpecularMapAlpha;
  Boolean   bFresnelDiffuse; Boolean bFresnelSpecular; Boolean bFresnelEnvironment;
   Boolean   bUsePrecipitation;
   Boolean   bPrecipOffset;
   FLOAT     PrecipOffset;
   FLOAT     SpecMapPowerScale;
   STRING    SrcBlend;
   STRING    DstBlend;
   [...]
}

template AllowBloom {
   <D66E37C9-9DFE-4092-8565-C6E4C3498235>
   Boolean     AllowBloom;
}

template BloomData {
   <58ED1E67-0D18-44EF-B676-40BB20C1EE88>
   Boolean BloomCopy;
   Boolean BloomModAlpha;
}

template SpecularBloomFloor {
   <21195174-A31D-47ed-BE5A-04ACAD4C3544>
   FLOAT     SpecularBloomFloor;
}

template AmbientLightScale {
   <4CC76AEB-E84F-4688-AB49-E1DC4B9273C7>
   FLOAT     AmbientLightScale;
}

template EmissiveData {
   <A02EF480-3ED3-433d-A71D-5CAC4775757A>
   STRING   EmissiveBlend;
}

template AlphaData {
   <10DB69F3-E0EE-4fb3-8055-63E539EF5885>
   Boolean  ZTestAlpha;
   FLOAT    AlphaTestValue;
   STRING   AlphaTestFunction;
   Boolean  FinalAlphaWrite;
   FLOAT    FinalAlphaWriteValue;
}

template EnhancedParameters {
   <99CAD20D-DCC5-4ad4-ADAE-ED3CDE30CC02>
   Boolean  AssumeVerticalNormal;
   Boolean  ZWriteAlpha;
   Boolean  NoZWrite;
   Boolean  VolumeShadow;
   Boolean  NoShadow;
   Boolean  PrelitVertices;
}

template BaseMaterialSpecular {
   <E294ED4E-5C5A-4927-B19A-6A2D445FAF24>
   Boolean  AllowBaseMaterialSpecular;
}

template BaseMaterialSkin {
   <B640F860-9E28-4cab-AD46-CACCE2A418AC>
   Boolean  AllowSkinning;
}

template DoubleSidedMaterial {
   <B1C6C3B0-DD1A-417b-919A-B04BAD6AE06D>
   Boolean  DoubleSided;
}

template BlendConstantSetting {
   <48EA96C3-588E-451d-B4BB-0C746C8380D9>
   Boolean  BlendConstant;
}

template ForceTextureAddressWrapSetting {
   <046EE84C-7977-4a11-AA2B-C79FF5391EDD>
   Boolean  ForceTextureAddressWrap;
}

template ForceTextureAddressClampSetting {
   <DB108D57-A3A8-4b76-8CB0-8379CDDEC074>
   Boolean  ForceTextureAddressClamp;
}

template NoSpecularBloom {
   <BCE314D2-15DB-4ffd-9F6F-0763B2A4616F>
   Boolean  AllowSpecularBloom;
}

template EmissiveBloom {
   <5FF8D7A2-30B5-41bc-A891-28A427D78246>
   Boolean  AllowEmissiveBloom;
}

template BlendDiffuseByBaseAlpha {
   <A623FA7C-37CB-4d17-B702-854E0DBDB467>
   Boolean  BlendDiffByBaseAlpha;
}

template BlendDiffuseByInverseSpecularMapAlpha {
   <DAA68529-1C27-4182-9D97-E631A4759EA7>
   Boolean  BlendDiffuseByInvSpecAlpha;
}

template NNumberTexture {
   <E49E744A-CDBE-40c1-9C89-4A46BEB44D33>
   Boolean  IsNNumberTexture;
}

template PartData {
   <79B183BA-7E70-44d1-914A-23B304CA91E5>
   DWORD nByteCount;
   array BYTE XMLData[ nByteCount ];
}

Header {
	1;
	0;
	1;
}

GuidToName {
   "{1893991a-9de0-4f94-b27d-f5876be15ec8}";
   "leadInFlash_FS9";
}
Frame masterfrm {
FrameTransformMatrix {
   1.0, 0.0, 0.0, 0.0,
   0.0, 0.0, 1.0, 0.0,
   0.0, 1.0, 0.0, 0.0,
   0.0, 0.0, 0.0, 1.0;
}

Frame frm0 {
FrameTransformMatrix {
   1.000, 0.000, 0.000, 0.000,
   0.000, 1.000, 0.000, 0.000,
   0.000, 0.000, 1.000, 0.000,
   0.000, 0.000, 0.000, 1.000,
}

Frame frm1 {
FrameTransformMatrix {
   1.000, 0.000, 0.000, 0.000,
   0.000, 1.000, 0.000, 0.000,
   0.000, 0.000, 1.000, 0.000,
   0.000, 0.000, 0.000, 1.000,
}

}

Frame frm2 {
FrameTransformMatrix {
   1.000, 0.000, 0.000, 0.000,
   0.000, 1.000, 0.000, 0.000,
   0.000, 0.000, 1.000, 0.000,
   0.000, 0.000, 0.000, 1.000,
}

Frame frmattach2 {
FrameTransformMatrix {
   1.0, 0.0, 0.0, 0.0,
   0.0, 1.0, 0.0, 0.0,
   0.0, 0.0, 1.0, 0.0,
   0.000, 0.000, 0.000, 1.0;;
}
PartData{
137;
60, 63, 120, 109, 108, 32, 118, 101, 114, 115, 105, 111, 110, 61, 34, 49, 46, 48, 34, 32, 101, 110, 99, 111, 100, 105, 110, 103, 61, 34, 73, 83, 79, 45, 56, 56, 53, 57, 45, 49, 34, 32, 63, 62, 60, 70, 83, 77, 97, 107, 101, 77, 100, 108, 68, 97, 116, 97, 32, 118, 101, 114, 115, 105, 111, 110, 61, 34, 57, 46, 48, 34, 62, 60, 65, 116, 116, 97, 99, 104, 112, 111, 105, 110, 116, 32, 110, 97, 109, 101, 61, 34, 65, 116, 116, 97, 99, 104, 80, 97, 114, 116, 49, 56, 34, 62, 60, 47, 65, 116, 116, 97, 99, 104, 112, 111, 105, 110, 116, 62, 60, 47, 70, 83, 77, 97, 107, 101, 77, 100, 108, 68, 97, 116, 97, 62,  0;
}
Mesh AttachPart2 {
3;
0.00000; 1.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;;

1;
3; 0, 1, 2;;

MeshMaterialList {
1;
1;
0;
Material mat1026 {
  0.000; 0.000; 0.000; 1.000;;
  0.000000;
  0.000; 0.000; 0.000;;
  0.000; 0.000; 0.000;;
  FS10Material {
    0.000; 0.000; 0.000; 1.000;;
    0.000; 0.000; 0.000;;
    64.000;
    1.000; 1.000;
    1.000;
    0;
    0;
    0;
    0; 0; 0;
    0; 0; 0.000;
    64.000;
    "One"; "Zero";
    BlendDiffuseByBaseAlpha  {
      0;
    }
    BlendDiffuseByInverseSpecularMapAlpha  {
      0;
    }
    AllowBloom  {
      1;
    }
    SpecularBloomFloor  {
      0.900;
    }
    EmissiveData  {
      "AdditiveNightOnly";
    }
    AlphaData  {
      0;
      0.000;
      "Never";
      0;
      1.000;
    }
    EnhancedParameters  {
      0;
      0;
      0;
      0;
      0;
      0;
    }
    BaseMaterialSkin {
      0;
    }
    DoubleSidedMaterial {
      0;
    }
    BlendConstantSetting {
      0;
    }
    ForceTextureAddressWrapSetting {
      0;
    }
    ForceTextureAddressClampSetting {
      0;
    }
    BaseMaterialSpecular {
      1;
    }
    NoSpecularBloom {
      1;
    }
    EmissiveBloom {
      0;
    }
    AmbientLightScale  {
      1.000;
    }
  }
}
}

MeshNormals {
3;
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;;

1;
3; 0, 1, 2;;
}

}
}
}

}

}
