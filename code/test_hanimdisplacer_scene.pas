program test_scene;
{$I castleconf.inc}
uses SysUtils, CastleVectors, X3DFields, X3DNodes, CastleSceneCore, HAnimDisplacerSupport;
var
  Scene: TCastleSceneCore; Root: TX3DRootNode; H: THAnimJointNode;
  D: THAnimDisplacerNode; Gpu: THAnimDisplacerGPU; W: TSFFloat;
begin
  D := THAnimDisplacerNode.Create;
  D.NameField := 'smile';
  D.ModifyCoordIndex([1]); D.ModifyDisplacements([Vector3(0,1,0)]); D.ModifyWeight(0.25);
  H := THAnimJointNode.Create; H.NameField := 'root'; H.FdDisplacers.Add(D);
  Root := TX3DRootNode.Create; Root.AddChildren(H);
  Gpu := THAnimDisplacerGPU.Create(D, 'hanim_d0', 3);
  Root.AddChildren(Gpu.Effect);
  Scene := TCastleSceneCore.Create(nil);
  Scene.Load(Root, True);
  Scene.ProcessEvents := True;
  W := Gpu.Effect.Field('hanim_d0_weight') as TSFFloat;
  D.Weight := 0.8;
  Writeln('live scene, uniform follows: ', W.Value:0:2, ' (expect 0.80)');
  D.ModifyCoordIndex([2]); D.ModifyDisplacements([Vector3(0,0,7)]);
  Writeln('live scene, attribute z2=', Gpu.Attribute.FdValue.Items[8]:0:1, ' y1=', Gpu.Attribute.FdValue.Items[4]:0:1, ' (expect 7.0, 0.0)');
  Scene.Free;
end.
