<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:89c0fb70-0977-7777-a076-5906f9d8630f(jetbrains.mps.make.facets)">
  <persistence version="9" />
  <languages>
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="1" />
    <use id="a247e09e-2435-45ba-b8d2-07e93feba96a" name="jetbrains.mps.baseLanguage.tuples" version="0" />
    <use id="696c1165-4a59-463b-bc5d-902caab85dd0" name="jetbrains.mps.make.facet" version="0" />
    <use id="95f8a3e6-f994-4ca0-a65e-763c9bae2d3b" name="jetbrains.mps.make.script" version="0" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="8" />
  </languages>
  <imports>
    <import index="fyhk" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps(MPS.Core/)" />
    <import index="et5u" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.messages(MPS.Core/)" />
    <import index="fn29" ref="r:6ba2667b-185e-45cd-ac65-e4b9d66da28e(jetbrains.mps.smodel.resources)" />
    <import index="uskx" ref="r:b63b6f93-e29a-4718-8cc3-affacae32340(jetbrains.mps.lang.resources.plugin)" />
    <import index="vqh0" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.make(MPS.Core/)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="tpcq" ref="r:00000000-0000-4000-0000-011c89590286(jetbrains.mps.lang.core.plugin)" />
    <import index="yo81" ref="r:4ea5a78b-cb8a-4831-b227-f7860a22491d(jetbrains.mps.make.resources)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="iqmz" ref="r:6bc4612e-813e-4efa-8244-77b9a4da8b36(jetbrains.mps.internal.make.runtime.java)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="3qmy" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.classloading(MPS.Core/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="3ju5" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.vfs(MPS.Core/)" />
    <import index="ud0o" ref="r:71895ceb-c89d-4545-aa38-89d1cd891f17(jetbrains.mps.make.facet)" />
    <import index="wyuk" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.components(MPS.Core/)" />
    <import index="rk9m" ref="r:f8580193-afc4-4673-a635-d4757ca591cf(jetbrains.mps.internal.make.runtime.util)" />
    <import index="1kj4" ref="r:0bcaf439-5bc6-429b-a457-4e0d9746449f(jetbrains.mps.make.delta)" />
    <import index="l46t" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.compiler(MPS.Core/)" />
    <import index="q7tw" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:org.apache.log4j(MPS.Core/)" />
    <import index="vndm" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.language(MPS.Core/)" />
    <import index="hfuk" ref="r:b25dd364-bc3f-4a66-97d1-262009610c5e(jetbrains.mps.make)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="i7ke" ref="r:6a51d398-9e61-4cf1-8ca1-72244a902483(de.nikostotz.mps.annotationprocessorfacet.compiler)" />
    <import index="yyf4" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.util(MPS.OpenAPI/)" implicit="true" />
  </imports>
  <registry>
    <language id="a247e09e-2435-45ba-b8d2-07e93feba96a" name="jetbrains.mps.baseLanguage.tuples">
      <concept id="1239360506533" name="jetbrains.mps.baseLanguage.tuples.structure.NamedTupleDeclaration" flags="ng" index="2fD8I5">
        <child id="1239529553065" name="component" index="2pHZQ9" />
      </concept>
      <concept id="1239462176079" name="jetbrains.mps.baseLanguage.tuples.structure.NamedTupleComponentDeclaration" flags="ng" index="2lGYhJ">
        <property id="1240400839614" name="final" index="3dDGau" />
        <child id="1239462974287" name="type" index="2lK19J" />
      </concept>
      <concept id="1239531918181" name="jetbrains.mps.baseLanguage.tuples.structure.NamedTupleType" flags="in" index="2pR195" />
      <concept id="1239576519914" name="jetbrains.mps.baseLanguage.tuples.structure.NamedTupleComponentAccessOperation" flags="nn" index="2sxana">
        <reference id="1239576542472" name="component" index="2sxfKC" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="1153952380246" name="jetbrains.mps.baseLanguage.structure.TryStatement" flags="nn" index="2GUZhq">
        <child id="1153952416686" name="body" index="2GV8ay" />
        <child id="1153952429843" name="finallyBody" index="2GVbov" />
      </concept>
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1164879751025" name="jetbrains.mps.baseLanguage.structure.TryCatchStatement" flags="nn" index="SfApY">
        <child id="1164879758292" name="body" index="SfCbr" />
        <child id="1164903496223" name="catchClause" index="TEbGg" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1164903280175" name="jetbrains.mps.baseLanguage.structure.CatchClause" flags="nn" index="TDmWw">
        <child id="1164903359218" name="catchBody" index="TDEfX" />
        <child id="1164903359217" name="throwable" index="TDEfY" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1164991038168" name="jetbrains.mps.baseLanguage.structure.ThrowStatement" flags="nn" index="YS8fn">
        <child id="1164991057263" name="throwable" index="YScLw" />
      </concept>
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg">
        <property id="8606350594693632173" name="isTransient" index="eg7rD" />
        <property id="1240249534625" name="isVolatile" index="34CwA1" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1109279763828" name="jetbrains.mps.baseLanguage.structure.TypeVariableDeclaration" flags="ng" index="16euLQ">
        <child id="1214996921760" name="bound" index="3ztrMU" />
      </concept>
      <concept id="1109279851642" name="jetbrains.mps.baseLanguage.structure.GenericDeclaration" flags="ng" index="16eOlS">
        <child id="1109279881614" name="typeVariableDeclaration" index="16eVyc" />
      </concept>
      <concept id="1109283449304" name="jetbrains.mps.baseLanguage.structure.TypeVariableReference" flags="in" index="16syzq">
        <reference id="1109283546497" name="typeVariableDeclaration" index="16sUi3" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <property id="4276006055363816570" name="isSynchronized" index="od$2w" />
        <property id="1181808852946" name="isFinal" index="DiZV1" />
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_">
        <property id="1178608670077" name="isAbstract" index="1EzhhJ" />
      </concept>
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
        <child id="1206060520071" name="elsifClauses" index="3eNLev" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1206060495898" name="jetbrains.mps.baseLanguage.structure.ElsifClause" flags="ng" index="3eNFk2">
        <child id="1206060619838" name="condition" index="3eO9$A" />
        <child id="1206060644605" name="statementList" index="3eOfB_" />
      </concept>
      <concept id="1081506762703" name="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" flags="nn" index="3eOSWO" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1171903916106" name="jetbrains.mps.baseLanguage.structure.UpperBoundType" flags="in" index="3qUE_q">
        <child id="1171903916107" name="bound" index="3qUE_r" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199542442495" name="jetbrains.mps.baseLanguage.closures.structure.FunctionType" flags="in" index="1ajhzC">
        <child id="1199542457201" name="resultType" index="1ajl9A" />
        <child id="1199542501692" name="parameterType" index="1ajw0F" />
      </concept>
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <property id="890797661671409019" name="forceMultiLine" index="3yWfEV" />
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="696c1165-4a59-463b-bc5d-902caab85dd0" name="jetbrains.mps.make.facet">
      <concept id="3344436107830227889" name="jetbrains.mps.make.facet.structure.ForeignParametersComponentExpression" flags="nn" index="2bn25q" />
      <concept id="3344436107830227888" name="jetbrains.mps.make.facet.structure.ForeignParametersExpression" flags="nn" index="2bn25r">
        <reference id="3344436107830227902" name="target" index="2bn25l" />
      </concept>
      <concept id="1919086248986845077" name="jetbrains.mps.make.facet.structure.NamedFacetReference" flags="ng" index="2e$Q_j" />
      <concept id="7178445679340358576" name="jetbrains.mps.make.facet.structure.FacetReferenceExpression" flags="nn" index="2n6ZRZ">
        <child id="7178445679340358578" name="reference" index="2n6ZRX" />
      </concept>
      <concept id="1894767564088417428" name="jetbrains.mps.make.facet.structure.FacetJavaClassExpression" flags="ng" index="2v9SQr">
        <reference id="1894767564088417695" name="facet" index="2v9SMg" />
      </concept>
      <concept id="6418371274763029565" name="jetbrains.mps.make.facet.structure.TargetDeclaration" flags="ng" index="15KeUm">
        <property id="1675547159918562088" name="resourcesPolicy" index="2w7fpF" />
        <property id="7219266275016360389" name="optional" index="3xojQC" />
        <property id="184542595914096177" name="weight" index="1xVfUM" />
        <child id="2360002718792633290" name="job" index="ElM8M" />
        <child id="6418371274763146553" name="dependency" index="15LFui" />
        <child id="7320828025189219295" name="parameters" index="1aI7mi" />
        <child id="119022571401949665" name="output" index="3D36I4" />
        <child id="119022571401949664" name="input" index="3D36I5" />
      </concept>
      <concept id="6418371274763029523" name="jetbrains.mps.make.facet.structure.FacetDeclaration" flags="ng" index="15KeUS">
        <child id="6418371274763146558" name="targetDeclaration" index="15LFul" />
        <child id="6447445394688422657" name="optional" index="1Mm5TG" />
        <child id="6447445394688422656" name="required" index="1Mm5TH" />
      </concept>
      <concept id="6418371274763029600" name="jetbrains.mps.make.facet.structure.TargetDependency" flags="ng" index="15KeVb">
        <property id="8351679702044326377" name="qualifier" index="3HPxAp" />
        <reference id="6418371274763029603" name="dependsOn" index="15KeV8" />
      </concept>
      <concept id="7320828025189345662" name="jetbrains.mps.make.facet.structure.ParametersDeclaration" flags="ng" index="1aIAsN" />
      <concept id="7320828025189375155" name="jetbrains.mps.make.facet.structure.LocalParametersComponentExpression" flags="nn" index="1aIXbY" />
      <concept id="7320828025189375154" name="jetbrains.mps.make.facet.structure.LocalParametersExpression" flags="nn" index="1aIXbZ" />
      <concept id="119022571402207412" name="jetbrains.mps.make.facet.structure.ResourceClassifierType" flags="in" index="3D27Fh" />
      <concept id="119022571401949652" name="jetbrains.mps.make.facet.structure.ResourceTypeDeclaration" flags="ng" index="3D36IL">
        <child id="119022571401949655" name="resourceType" index="3D36IM" />
      </concept>
      <concept id="8351679702044320297" name="jetbrains.mps.make.facet.structure.RelatedFacetReference" flags="ng" index="3HPw9p" />
      <concept id="6447445394688422642" name="jetbrains.mps.make.facet.structure.FacetReference" flags="ng" index="1Mm5Yv">
        <reference id="6447445394688422643" name="facet" index="1Mm5Yu" />
      </concept>
    </language>
    <language id="95f8a3e6-f994-4ca0-a65e-763c9bae2d3b" name="jetbrains.mps.make.script">
      <concept id="505095865854384109" name="jetbrains.mps.make.script.structure.JobDeclaration" flags="ng" index="2aLE7I">
        <child id="505095865854384110" name="job" index="2aLE7H" />
        <child id="1977954644795396329" name="config" index="bFwIG" />
      </concept>
      <concept id="1977954644795375332" name="jetbrains.mps.make.script.structure.ConfigDefinition" flags="in" index="bFUmx" />
      <concept id="7044091413522263180" name="jetbrains.mps.make.script.structure.GetMakeSessionExpression" flags="ng" index="2_BwXt" />
      <concept id="2360002718792446594" name="jetbrains.mps.make.script.structure.ResourceType" flags="in" index="El1HU" />
      <concept id="2360002718792625579" name="jetbrains.mps.make.script.structure.JobDefinition" flags="in" index="ElOhj" />
      <concept id="2360002718792625580" name="jetbrains.mps.make.script.structure.InputResourcesParameter" flags="nn" index="ElOhk" />
      <concept id="2360002718792622184" name="jetbrains.mps.make.script.structure.OutputResources" flags="nn" index="ElOAg">
        <child id="2360002718792622193" name="resource" index="ElOA9" />
      </concept>
      <concept id="4671800353872995469" name="jetbrains.mps.make.script.structure.ConceptFunctionParameter_progressMonitor" flags="nn" index="EWnkA" />
      <concept id="3668957831723333672" name="jetbrains.mps.make.script.structure.ReportFeedbackStatement" flags="nn" index="1daRAt">
        <property id="3668957831723333678" name="feedback" index="1daRAr" />
        <child id="3668957831723336680" name="message" index="1daK9t" />
      </concept>
      <concept id="187226666892683650" name="jetbrains.mps.make.script.structure.BeginWorkStatement" flags="ng" index="1u1O0F">
        <property id="682890046602602769" name="workName" index="h7ZnK" />
        <child id="187226666892740071" name="ofTotal" index="1u1ALe" />
        <child id="187226666892740070" name="expected" index="1u1ALf" />
      </concept>
      <concept id="187226666892683652" name="jetbrains.mps.make.script.structure.AdvanceWorkStatement" flags="nn" index="1u1O0H">
        <reference id="682890046602395482" name="workStatement" index="h6aeV" />
        <child id="187226666892735700" name="amount" index="1u1xPX" />
      </concept>
      <concept id="187226666892683655" name="jetbrains.mps.make.script.structure.FinishWorkStatement" flags="nn" index="1u1O0I">
        <reference id="682890046602397405" name="workStatement" index="h6dCW" />
      </concept>
      <concept id="3297237684108627658" name="jetbrains.mps.make.script.structure.AllWorkLeftExpression" flags="nn" index="1C$qFY" />
      <concept id="7077360340906447917" name="jetbrains.mps.make.script.structure.ResultStatement" flags="nn" index="3D7k6m">
        <property id="7077360340906447918" name="result" index="3D7k6l" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1226511727824" name="jetbrains.mps.baseLanguage.collections.structure.SetType" flags="in" index="2hMVRd">
        <child id="1226511765987" name="elementType" index="2hN53Y" />
      </concept>
      <concept id="1226516258405" name="jetbrains.mps.baseLanguage.collections.structure.HashSetCreator" flags="nn" index="2i4dXS" />
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1151702311717" name="jetbrains.mps.baseLanguage.collections.structure.ToListOperation" flags="nn" index="ANE8D" />
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
      <concept id="1235566554328" name="jetbrains.mps.baseLanguage.collections.structure.AnyOperation" flags="nn" index="2HwmR7" />
      <concept id="1235573135402" name="jetbrains.mps.baseLanguage.collections.structure.SingletonSequenceCreator" flags="nn" index="2HTt$P">
        <child id="1235573175711" name="elementType" index="2HTBi0" />
        <child id="1235573187520" name="singletonValue" index="2HTEbv" />
      </concept>
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
        <child id="1237731803878" name="copyFrom" index="I$8f6" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1201792049884" name="jetbrains.mps.baseLanguage.collections.structure.TranslateOperation" flags="nn" index="3goQfb" />
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="1184963466173" name="jetbrains.mps.baseLanguage.collections.structure.ToArrayOperation" flags="nn" index="3_kTaI" />
      <concept id="1178894719932" name="jetbrains.mps.baseLanguage.collections.structure.DistinctOperation" flags="nn" index="1VAtEI" />
    </language>
  </registry>
  <node concept="15KeUS" id="5L5h3brvDPx">
    <property role="TrG5h" value="JavaCompile" />
    <node concept="3HPw9p" id="1LBAI7gBDkJ" role="1Mm5TG">
      <ref role="1Mm5Yu" to="uskx:5L5h3brvIWT" resolve="Binaries" />
    </node>
    <node concept="15KeUm" id="5L5h3brvDPy" role="15LFul">
      <property role="1xVfUM" value="300" />
      <property role="TrG5h" value="compile" />
      <node concept="15KeVb" id="5L5h3brvDPz" role="15LFui">
        <property role="3HPxAp" value="AFTER" />
        <ref role="15KeV8" to="tpcq:5L5h3brvDHA" resolve="textGen" />
      </node>
      <node concept="15KeVb" id="4rjqh41ORT8" role="15LFui">
        <property role="3HPxAp" value="AFTER" />
        <ref role="15KeV8" to="uskx:5L5h3brvIWU" resolve="copyBinaries" />
      </node>
      <node concept="15KeVb" id="5L5h3brvDP$" role="15LFui">
        <ref role="15KeV8" node="taepSZ9rBr" resolve="make" />
      </node>
      <node concept="2aLE7I" id="5L5h3brvDP_" role="ElM8M">
        <node concept="ElOhj" id="5L5h3brvDPA" role="2aLE7H">
          <node concept="3clFbS" id="5L5h3brvDPB" role="2VODD2">
            <node concept="3clFbJ" id="5uk1WWiP3hD" role="3cqZAp">
              <node concept="2OqwBi" id="5uk1WWiP3hI" role="3clFbw">
                <node concept="10M0yZ" id="5uk1WWiP3hH" role="2Oq$k0">
                  <ref role="1PxDUh" to="wyt6:~Boolean" resolve="Boolean" />
                  <ref role="3cqZAo" to="wyt6:~Boolean.TRUE" resolve="TRUE" />
                </node>
                <node concept="liA8E" id="5uk1WWiP3hM" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Boolean.equals(java.lang.Object):boolean" resolve="equals" />
                  <node concept="1aIXbY" id="5uk1WWiP3hN" role="37wK5m">
                    <node concept="1aIXbZ" id="5uk1WWiP3hO" role="2Oq$k0" />
                    <node concept="2sxana" id="5uk1WWiP3hP" role="2OqNvi">
                      <ref role="2sxfKC" node="5uk1WWiP3h_" resolve="skipCompilation" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="5uk1WWiP3hE" role="3clFbx">
                <node concept="ElOAg" id="5uk1WWiP5gg" role="3cqZAp">
                  <node concept="ElOhk" id="5uk1WWiP5gi" role="ElOA9" />
                </node>
                <node concept="3D7k6m" id="5uk1WWiP3hQ" role="3cqZAp">
                  <property role="3D7k6l" value="SUCCESS" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5L5h3brvDPC" role="3cqZAp">
              <node concept="37vLTI" id="5L5h3brvDPD" role="3clFbG">
                <node concept="3clFbT" id="5L5h3brvDPE" role="37vLTx">
                  <property role="3clFbU" value="false" />
                </node>
                <node concept="1aIXbY" id="5L5h3brvDPF" role="37vLTJ">
                  <node concept="1aIXbZ" id="5L5h3brvDPG" role="2Oq$k0" />
                  <node concept="2sxana" id="5L5h3brvDPH" role="2OqNvi">
                    <ref role="2sxfKC" node="5L5h3brvDSo" resolve="compiledAnything" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="3W4A8dypiCv" role="3cqZAp">
              <node concept="3cpWsn" id="3W4A8dypiCw" role="3cpWs9">
                <property role="TrG5h" value="toCompile" />
                <node concept="2ShNRf" id="3NKhsqqxXaz" role="33vP2m">
                  <node concept="2i4dXS" id="3NKhsqqxXin" role="2ShVmc">
                    <node concept="3uibUv" id="3NKhsqqy09G" role="HW$YZ">
                      <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                    </node>
                    <node concept="2OqwBi" id="3W4A8dypiFk" role="I$8f6">
                      <node concept="2OqwBi" id="3W4A8dypiEn" role="2Oq$k0">
                        <node concept="2OqwBi" id="3W4A8dypiCU" role="2Oq$k0">
                          <node concept="ElOhk" id="3W4A8dypiC_" role="2Oq$k0" />
                          <node concept="3$u5V9" id="3W4A8dypiD0" role="2OqNvi">
                            <node concept="1bVj0M" id="3W4A8dypiD1" role="23t8la">
                              <node concept="3clFbS" id="3W4A8dypiD2" role="1bW5cS">
                                <node concept="3clFbF" id="3W4A8dypiDx" role="3cqZAp">
                                  <node concept="2OqwBi" id="3W4A8dypiDy" role="3clFbG">
                                    <node concept="37vLTw" id="2BHiRxglnno" role="2Oq$k0">
                                      <ref role="3cqZAo" node="3W4A8dypiD3" resolve="it" />
                                    </node>
                                    <node concept="2sxana" id="3W4A8dypiDB" role="2OqNvi">
                                      <ref role="2sxfKC" to="fn29:1Xl3kQ1uadw" resolve="module" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="Rh6nW" id="3W4A8dypiD3" role="1bW2Oz">
                                <property role="TrG5h" value="it" />
                                <node concept="2jxLKc" id="3W4A8dypiD4" role="1tU5fm" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3zZkjj" id="3W4A8dypiEs" role="2OqNvi">
                          <node concept="1bVj0M" id="3W4A8dypiEt" role="23t8la">
                            <node concept="3clFbS" id="3W4A8dypiEu" role="1bW5cS">
                              <node concept="3clFbF" id="4SLw4v09$3p" role="3cqZAp">
                                <node concept="2YIFZM" id="4SLw4v09_rU" role="3clFbG">
                                  <ref role="37wK5l" to="z1c3:~SModuleOperations.isCompileInMps(org.jetbrains.mps.openapi.module.SModule):boolean" resolve="isCompileInMps" />
                                  <ref role="1Pybhc" to="z1c3:~SModuleOperations" resolve="SModuleOperations" />
                                  <node concept="37vLTw" id="4SLw4v09AOs" role="37wK5m">
                                    <ref role="3cqZAo" node="3W4A8dypiEv" resolve="it" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="Rh6nW" id="3W4A8dypiEv" role="1bW2Oz">
                              <property role="TrG5h" value="it" />
                              <node concept="2jxLKc" id="3W4A8dypiEw" role="1tU5fm" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="1VAtEI" id="3W4A8dypiFq" role="2OqNvi" />
                    </node>
                  </node>
                </node>
                <node concept="2hMVRd" id="3NKhsqqx8se" role="1tU5fm">
                  <node concept="3uibUv" id="3NKhsqqxfzm" role="2hN53Y">
                    <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="5L5h3brvDQa" role="3cqZAp">
              <node concept="3clFbS" id="5L5h3brvDQb" role="3clFbx">
                <node concept="3D7k6m" id="5L5h3brvDQc" role="3cqZAp">
                  <property role="3D7k6l" value="SUCCESS" />
                </node>
              </node>
              <node concept="2OqwBi" id="5eo3iW6uLhL" role="3clFbw">
                <node concept="37vLTw" id="3GM_nagTzJD" role="2Oq$k0">
                  <ref role="3cqZAo" node="3W4A8dypiCw" resolve="toCompile" />
                </node>
                <node concept="1v1jN8" id="5eo3iW6uLhM" role="2OqNvi" />
              </node>
            </node>
            <node concept="3SKdUt" id="3D3uKT_Q5W_" role="3cqZAp">
              <node concept="3SKdUq" id="3D3uKT_Q5WB" role="3SKWNk">
                <property role="3SKdUp" value="XXX it's odd to use dedicated ErrorsLoggingHandler provided ModuleMaker reports errors to log itself (in addition to IMessageHandler, see MessageSender). Do I need ELH here?" />
              </node>
            </node>
            <node concept="3cpWs8" id="3k48dctEXQc" role="3cqZAp">
              <node concept="3cpWsn" id="3k48dctEXQd" role="3cpWs9">
                <property role="TrG5h" value="msgHandler" />
                <node concept="3uibUv" id="3k48dctEXQe" role="1tU5fm">
                  <ref role="3uigEE" to="et5u:~IMessageHandler" resolve="IMessageHandler" />
                </node>
                <node concept="2OqwBi" id="3D3uKT_PbAT" role="33vP2m">
                  <node concept="2ShNRf" id="3k48dctF0X4" role="2Oq$k0">
                    <node concept="1pGfFk" id="3k48dctF1iu" role="2ShVmc">
                      <ref role="37wK5l" to="vqh0:~ErrorsLoggingHandler.&lt;init&gt;(org.apache.log4j.Logger)" resolve="ErrorsLoggingHandler" />
                      <node concept="2YIFZM" id="3k48dctF1Ll" role="37wK5m">
                        <ref role="37wK5l" to="q7tw:~LogManager.getLogger(java.lang.String):org.apache.log4j.Logger" resolve="getLogger" />
                        <ref role="1Pybhc" to="q7tw:~LogManager" resolve="LogManager" />
                        <node concept="2OqwBi" id="3k48dctF3ok" role="37wK5m">
                          <node concept="2n6ZRZ" id="3k48dctF3dw" role="2Oq$k0">
                            <node concept="2e$Q_j" id="3k48dctF3dx" role="2n6ZRX">
                              <ref role="1Mm5Yu" node="5L5h3brvDPx" resolve="JavaCompile" />
                            </node>
                          </node>
                          <node concept="liA8E" id="2SVpevUn6Od" role="2OqNvi">
                            <ref role="37wK5l" to="rk9m:hxx6lM0OuF" resolve="getName" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="3D3uKT_Pc0d" role="2OqNvi">
                    <ref role="37wK5l" to="et5u:~IMessageHandler.compose(jetbrains.mps.messages.IMessageHandler):jetbrains.mps.messages.IMessageHandler" resolve="compose" />
                    <node concept="2OqwBi" id="3D3uKT_PcHT" role="37wK5m">
                      <node concept="2_BwXt" id="3D3uKT_PckY" role="2Oq$k0" />
                      <node concept="liA8E" id="3D3uKT_Pd5V" role="2OqNvi">
                        <ref role="37wK5l" to="hfuk:7yGn3z4N4Nw" resolve="getMessageHandler" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="5L5h3brvDQT" role="3cqZAp">
              <node concept="3cpWsn" id="5L5h3brvDQU" role="3cpWs9">
                <property role="TrG5h" value="cr" />
                <node concept="3uibUv" id="5L5h3brvDQV" role="1tU5fm">
                  <ref role="3uigEE" to="vqh0:~MPSCompilationResult" resolve="MPSCompilationResult" />
                </node>
                <node concept="2OqwBi" id="1LzZ23MdlyY" role="33vP2m">
                  <node concept="2ShNRf" id="1LzZ23Md6si" role="2Oq$k0">
                    <node concept="1pGfFk" id="1LzZ23Md7y3" role="2ShVmc">
                      <ref role="37wK5l" to="w1kc:~ModelAccessHelper.&lt;init&gt;(org.jetbrains.mps.openapi.module.ModelAccess)" resolve="ModelAccessHelper" />
                      <node concept="2OqwBi" id="1LzZ23MdkQo" role="37wK5m">
                        <node concept="2OqwBi" id="1LzZ23MdkEM" role="2Oq$k0">
                          <node concept="2_BwXt" id="1LzZ23Mdk_W" role="2Oq$k0" />
                          <node concept="liA8E" id="1LzZ23MdkIK" role="2OqNvi">
                            <ref role="37wK5l" to="hfuk:2BjwmTxTf34" resolve="getProject" />
                          </node>
                        </node>
                        <node concept="liA8E" id="1LzZ23MdkY3" role="2OqNvi">
                          <ref role="37wK5l" to="z1c3:~Project.getModelAccess():org.jetbrains.mps.openapi.module.ModelAccess" resolve="getModelAccess" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="1LzZ23MdlZU" role="2OqNvi">
                    <ref role="37wK5l" to="w1kc:~ModelAccessHelper.runReadAction(jetbrains.mps.util.Computable):java.lang.Object" resolve="runReadAction" />
                    <node concept="1bVj0M" id="1LzZ23Mdm4x" role="37wK5m">
                      <node concept="3clFbS" id="1LzZ23Mdm4y" role="1bW5cS">
                        <node concept="3clFbF" id="1LzZ23Mdm7l" role="3cqZAp">
                          <node concept="2OqwBi" id="1LzZ23Mdm7n" role="3clFbG">
                            <node concept="2ShNRf" id="1LzZ23Mdm7o" role="2Oq$k0">
                              <node concept="1pGfFk" id="1LzZ23Mdm7p" role="2ShVmc">
                                <ref role="37wK5l" to="vqh0:~ModuleMaker.&lt;init&gt;(jetbrains.mps.messages.IMessageHandler)" resolve="ModuleMaker" />
                                <node concept="37vLTw" id="1LzZ23Mdm7q" role="37wK5m">
                                  <ref role="3cqZAo" node="3k48dctEXQd" resolve="msgHandler" />
                                </node>
                              </node>
                            </node>
                            <node concept="liA8E" id="1LzZ23Mdm7s" role="2OqNvi">
                              <ref role="37wK5l" to="vqh0:~ModuleMaker.make(java.util.Collection,org.jetbrains.mps.openapi.util.ProgressMonitor,jetbrains.mps.compiler.JavaCompilerOptions):jetbrains.mps.make.MPSCompilationResult" resolve="make" />
                              <node concept="37vLTw" id="1LzZ23Mdm7t" role="37wK5m">
                                <ref role="3cqZAo" node="3W4A8dypiCw" resolve="toCompile" />
                              </node>
                              <node concept="EWnkA" id="1LzZ23Mdm7u" role="37wK5m" />
                              <node concept="1aIXbY" id="1LzZ23Mdm7v" role="37wK5m">
                                <node concept="1aIXbZ" id="1LzZ23Mdm7w" role="2Oq$k0" />
                                <node concept="2sxana" id="1LzZ23Mdm7x" role="2OqNvi">
                                  <ref role="2sxfKC" node="bvkaYAFSqh" resolve="options" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5L5h3brvDRe" role="3cqZAp">
              <node concept="37vLTI" id="5L5h3brvDRf" role="3clFbG">
                <node concept="1aIXbY" id="5L5h3brvDRg" role="37vLTJ">
                  <node concept="1aIXbZ" id="5L5h3brvDRh" role="2Oq$k0" />
                  <node concept="2sxana" id="5L5h3brvDRi" role="2OqNvi">
                    <ref role="2sxfKC" node="5L5h3brvDSo" resolve="compiledAnything" />
                  </node>
                </node>
                <node concept="22lmx$" id="5L5h3brvDRj" role="37vLTx">
                  <node concept="1aIXbY" id="5L5h3brvDRk" role="3uHU7B">
                    <node concept="1aIXbZ" id="5L5h3brvDRl" role="2Oq$k0" />
                    <node concept="2sxana" id="5L5h3brvDRm" role="2OqNvi">
                      <ref role="2sxfKC" node="5L5h3brvDSo" resolve="compiledAnything" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="5L5h3brvDRn" role="3uHU7w">
                    <node concept="37vLTw" id="3GM_nagTBCN" role="2Oq$k0">
                      <ref role="3cqZAo" node="5L5h3brvDQU" resolve="cr" />
                    </node>
                    <node concept="liA8E" id="5L5h3brvDRp" role="2OqNvi">
                      <ref role="37wK5l" to="vqh0:~MPSCompilationResult.isCompiledAnything():boolean" resolve="isCompiledAnything" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="5L5h3brvDRA" role="3cqZAp">
              <node concept="3clFbS" id="5L5h3brvDRB" role="3clFbx">
                <node concept="3clFbJ" id="5L5h3brvDRE" role="3cqZAp">
                  <node concept="3clFbS" id="5L5h3brvDRF" role="3clFbx">
                    <node concept="1daRAt" id="5L5h3brvDRG" role="3cqZAp">
                      <property role="1daRAr" value="ERROR" />
                      <node concept="37vLTw" id="3GM_nagTA2m" role="1daK9t">
                        <ref role="3cqZAo" node="5L5h3brvDQU" resolve="cr" />
                      </node>
                    </node>
                  </node>
                  <node concept="3eOSWO" id="5L5h3brvDRI" role="3clFbw">
                    <node concept="3cmrfG" id="5L5h3brvDRJ" role="3uHU7w">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="2OqwBi" id="5L5h3brvDRK" role="3uHU7B">
                      <node concept="37vLTw" id="3GM_nagT_rX" role="2Oq$k0">
                        <ref role="3cqZAo" node="5L5h3brvDQU" resolve="cr" />
                      </node>
                      <node concept="liA8E" id="5L5h3brvDRM" role="2OqNvi">
                        <ref role="37wK5l" to="vqh0:~MPSCompilationResult.getErrorsCount():int" resolve="getErrorsCount" />
                      </node>
                    </node>
                  </node>
                  <node concept="3eNFk2" id="5L5h3brvDRN" role="3eNLev">
                    <node concept="3eOSWO" id="5L5h3brvDRO" role="3eO9$A">
                      <node concept="3cmrfG" id="5L5h3brvDRP" role="3uHU7w">
                        <property role="3cmrfH" value="0" />
                      </node>
                      <node concept="2OqwBi" id="5L5h3brvDRQ" role="3uHU7B">
                        <node concept="37vLTw" id="3GM_nagTAG6" role="2Oq$k0">
                          <ref role="3cqZAo" node="5L5h3brvDQU" resolve="cr" />
                        </node>
                        <node concept="liA8E" id="5L5h3brvDRS" role="2OqNvi">
                          <ref role="37wK5l" to="vqh0:~MPSCompilationResult.getWarningsCount():int" resolve="getWarningsCount" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbS" id="5L5h3brvDRT" role="3eOfB_">
                      <node concept="1daRAt" id="5L5h3brvDRU" role="3cqZAp">
                        <property role="1daRAr" value="WARNING" />
                        <node concept="37vLTw" id="3GM_nagTxZX" role="1daK9t">
                          <ref role="3cqZAo" node="5L5h3brvDQU" resolve="cr" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="9aQIb" id="5L5h3brvDRW" role="9aQIa">
                    <node concept="3clFbS" id="5L5h3brvDRX" role="9aQI4">
                      <node concept="1daRAt" id="5L5h3brvDRY" role="3cqZAp">
                        <property role="1daRAr" value="INFO" />
                        <node concept="37vLTw" id="3GM_nagTt_g" role="1daK9t">
                          <ref role="3cqZAo" node="5L5h3brvDQU" resolve="cr" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3D7k6m" id="5L5h3brvDS3" role="3cqZAp">
                  <property role="3D7k6l" value="FAILURE" />
                </node>
              </node>
              <node concept="3fqX7Q" id="5L5h3brvDS8" role="3clFbw">
                <node concept="2OqwBi" id="5L5h3brvDS9" role="3fr31v">
                  <node concept="37vLTw" id="3GM_nagTve1" role="2Oq$k0">
                    <ref role="3cqZAo" node="5L5h3brvDQU" resolve="cr" />
                  </node>
                  <node concept="liA8E" id="5L5h3brvDSb" role="2OqNvi">
                    <ref role="37wK5l" to="vqh0:~MPSCompilationResult.isOk():boolean" resolve="isOk" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="3W4A8dypiCr" role="3cqZAp" />
            <node concept="2Gpval" id="5L5h3brvDQj" role="3cqZAp">
              <node concept="2GrKxI" id="5L5h3brvDQk" role="2Gsz3X">
                <property role="TrG5h" value="tres" />
              </node>
              <node concept="ElOhk" id="5L5h3brvDQl" role="2GsD0m" />
              <node concept="3clFbS" id="5L5h3brvDQm" role="2LFqv$">
                <node concept="3clFbJ" id="5L5h3brvDQt" role="3cqZAp">
                  <node concept="3clFbS" id="5L5h3brvDQu" role="3clFbx">
                    <node concept="3D7k6m" id="5L5h3brvDQv" role="3cqZAp">
                      <property role="3D7k6l" value="FAILURE" />
                    </node>
                  </node>
                  <node concept="3clFbC" id="5L5h3brvDQw" role="3clFbw">
                    <node concept="10Nm6u" id="5L5h3brvDQx" role="3uHU7w" />
                    <node concept="2OqwBi" id="5L5h3brvDQy" role="3uHU7B">
                      <node concept="2GrUjf" id="4g8ToP4rk4X" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="5L5h3brvDQk" resolve="tres" />
                      </node>
                      <node concept="2sxana" id="5L5h3brvDQ$" role="2OqNvi">
                        <ref role="2sxfKC" to="fn29:1Xl3kQ1uadw" resolve="module" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="3NKhsqqvFfJ" role="3cqZAp">
                  <node concept="2OqwBi" id="5$SFEs5s1ox" role="3clFbw">
                    <node concept="liA8E" id="5$SFEs5s6hu" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~Set.contains(java.lang.Object):boolean" resolve="contains" />
                      <node concept="2OqwBi" id="5$SFEs5s8eW" role="37wK5m">
                        <node concept="2sxana" id="5$SFEs5scWL" role="2OqNvi">
                          <ref role="2sxfKC" to="fn29:1Xl3kQ1uadw" resolve="module" />
                        </node>
                        <node concept="2GrUjf" id="5$SFEs5s6hw" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="5L5h3brvDQk" resolve="tres" />
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="5$SFEs5rKIh" role="2Oq$k0">
                      <node concept="liA8E" id="5$SFEs5rMMF" role="2OqNvi">
                        <ref role="37wK5l" to="vqh0:~MPSCompilationResult.getChangedModules():java.util.Set" resolve="getChangedModules" />
                      </node>
                      <node concept="37vLTw" id="5$SFEs5rKEd" role="2Oq$k0">
                        <ref role="3cqZAo" node="5L5h3brvDQU" resolve="cr" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="3NKhsqqvFfL" role="3clFbx">
                    <node concept="ElOAg" id="5L5h3brvDSe" role="3cqZAp">
                      <node concept="2ShNRf" id="5L5h3brvDSf" role="ElOA9">
                        <node concept="2HTt$P" id="5L5h3brvDSg" role="2ShVmc">
                          <node concept="2GrUjf" id="4g8ToP4rU_7" role="2HTEbv">
                            <ref role="2Gs0qQ" node="5L5h3brvDQk" resolve="tres" />
                          </node>
                          <node concept="El1HU" id="5L5h3brvDSh" role="2HTBi0" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3D36IL" id="5L5h3brvDSk" role="3D36I5">
        <node concept="3D27Fh" id="4g8ToP4ozb_" role="3D36IM">
          <ref role="3uigEE" to="fn29:1Xl3kQ1uadv" resolve="TResource" />
        </node>
      </node>
      <node concept="1aIAsN" id="5L5h3brvDSm" role="1aI7mi">
        <property role="TrG5h" value="Parameters" />
        <node concept="3Tm1VV" id="5L5h3brvDSn" role="1B3o_S" />
        <node concept="2lGYhJ" id="5L5h3brvDSo" role="2pHZQ9">
          <property role="3dDGau" value="false" />
          <property role="TrG5h" value="compiledAnything" />
          <node concept="3uibUv" id="5L5h3brvDSp" role="2lK19J">
            <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
          </node>
        </node>
        <node concept="2lGYhJ" id="5uk1WWiP3h_" role="2pHZQ9">
          <property role="3dDGau" value="false" />
          <property role="TrG5h" value="skipCompilation" />
          <node concept="3uibUv" id="5uk1WWiP3hB" role="2lK19J">
            <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
          </node>
        </node>
        <node concept="2lGYhJ" id="bvkaYAFSqh" role="2pHZQ9">
          <property role="3dDGau" value="false" />
          <property role="TrG5h" value="options" />
          <node concept="3uibUv" id="6wfBxMgonSR" role="2lK19J">
            <ref role="3uigEE" to="i7ke:6wfBxMgonRU" resolve="JavaCompilerOptions" />
          </node>
        </node>
      </node>
      <node concept="3D36IL" id="5$SFEs5xsfx" role="3D36I4">
        <node concept="3D27Fh" id="5$SFEs5xWYt" role="3D36IM">
          <ref role="3uigEE" to="fn29:1Xl3kQ1uadv" resolve="TResource" />
        </node>
      </node>
    </node>
    <node concept="15KeUm" id="5L5h3brvDSq" role="15LFul">
      <property role="1xVfUM" value="100" />
      <property role="TrG5h" value="auxCompile" />
      <node concept="15KeVb" id="5L5h3brvDSr" role="15LFui">
        <property role="3HPxAp" value="AFTER" />
        <ref role="15KeV8" to="tpcq:5L5h3brvDHA" resolve="textGen" />
      </node>
      <node concept="15KeVb" id="5L5h3brvDSs" role="15LFui">
        <ref role="15KeV8" node="taepSZ9rBr" resolve="make" />
      </node>
      <node concept="2aLE7I" id="5L5h3brvDSt" role="ElM8M">
        <node concept="ElOhj" id="5L5h3brvDSu" role="2aLE7H">
          <node concept="3clFbS" id="5L5h3brvDSv" role="2VODD2">
            <node concept="3SKdUt" id="1LzZ23Me8SV" role="3cqZAp">
              <node concept="3SKdUq" id="1LzZ23Me8SX" role="3SKWNk">
                <property role="3SKdUp" value="FIXME project property is no longer needed (we take project from make session), remove after 2017.2" />
              </node>
            </node>
            <node concept="3clFbJ" id="3WNrFYxBpCa" role="3cqZAp">
              <node concept="2OqwBi" id="3WNrFYxBpCf" role="3clFbw">
                <node concept="10M0yZ" id="3WNrFYxBpCg" role="2Oq$k0">
                  <ref role="1PxDUh" to="wyt6:~Boolean" resolve="Boolean" />
                  <ref role="3cqZAo" to="wyt6:~Boolean.TRUE" resolve="TRUE" />
                </node>
                <node concept="liA8E" id="3WNrFYxBpCh" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Boolean.equals(java.lang.Object):boolean" resolve="equals" />
                  <node concept="2bn25q" id="3WNrFYxBpCn" role="37wK5m">
                    <node concept="2bn25r" id="3WNrFYxBpCo" role="2Oq$k0">
                      <ref role="2bn25l" node="5L5h3brvDPy" resolve="compile" />
                    </node>
                    <node concept="2sxana" id="3WNrFYxBpCp" role="2OqNvi">
                      <ref role="2sxfKC" node="5uk1WWiP3h_" resolve="skipCompilation" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="3WNrFYxBpCb" role="3clFbx">
                <node concept="ElOAg" id="3WNrFYxBpCc" role="3cqZAp">
                  <node concept="ElOhk" id="3WNrFYxBpCd" role="ElOA9" />
                </node>
                <node concept="3D7k6m" id="3WNrFYxBpCe" role="3cqZAp">
                  <property role="3D7k6l" value="SUCCESS" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="5L5h3brvDT2" role="3cqZAp">
              <node concept="3clFbS" id="5L5h3brvDT3" role="3clFbx">
                <node concept="3D7k6m" id="5L5h3brvDT4" role="3cqZAp">
                  <property role="3D7k6l" value="SUCCESS" />
                </node>
              </node>
              <node concept="1Wc70l" id="5L5h3brvDT5" role="3clFbw">
                <node concept="1aIXbY" id="5L5h3brvDT6" role="3uHU7w">
                  <node concept="1aIXbZ" id="5L5h3brvDT7" role="2Oq$k0" />
                  <node concept="2sxana" id="5L5h3brvDT8" role="2OqNvi">
                    <ref role="2sxfKC" node="5L5h3brvDVM" resolve="skipAuxCompile" />
                  </node>
                </node>
                <node concept="3y3z36" id="5L5h3brvDT9" role="3uHU7B">
                  <node concept="1aIXbY" id="5L5h3brvDTa" role="3uHU7B">
                    <node concept="1aIXbZ" id="5L5h3brvDTb" role="2Oq$k0" />
                    <node concept="2sxana" id="5L5h3brvDTc" role="2OqNvi">
                      <ref role="2sxfKC" node="5L5h3brvDVM" resolve="skipAuxCompile" />
                    </node>
                  </node>
                  <node concept="10Nm6u" id="5L5h3brvDTd" role="3uHU7w" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="61Cu8BBAFOk" role="3cqZAp">
              <node concept="2OqwBi" id="61Cu8BBAH5y" role="3clFbw">
                <node concept="ElOhk" id="4g8ToP4t7RM" role="2Oq$k0" />
                <node concept="2HwmR7" id="61Cu8BBAHzS" role="2OqNvi">
                  <node concept="1bVj0M" id="61Cu8BBAHzU" role="23t8la">
                    <node concept="3clFbS" id="61Cu8BBAHzV" role="1bW5cS">
                      <node concept="3clFbF" id="61Cu8BBAHSx" role="3cqZAp">
                        <node concept="3clFbC" id="61Cu8BBAJMt" role="3clFbG">
                          <node concept="2OqwBi" id="61Cu8BBEgJX" role="3uHU7B">
                            <node concept="2sxana" id="61Cu8BBEhQR" role="2OqNvi">
                              <ref role="2sxfKC" to="fn29:1Xl3kQ1uadw" resolve="module" />
                            </node>
                            <node concept="37vLTw" id="61Cu8BBAHSw" role="2Oq$k0">
                              <ref role="3cqZAo" node="61Cu8BBAHzW" resolve="it" />
                            </node>
                          </node>
                          <node concept="10Nm6u" id="61Cu8BBAK5M" role="3uHU7w" />
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="61Cu8BBAHzW" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="61Cu8BBAHzX" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="61Cu8BBAFOm" role="3clFbx">
                <node concept="3D7k6m" id="61Cu8BBALhU" role="3cqZAp">
                  <property role="3D7k6l" value="FAILURE" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="4g8ToP4t8yu" role="3cqZAp" />
            <node concept="3SKdUt" id="61Cu8BBxKvp" role="3cqZAp">
              <node concept="3SKdUq" id="61Cu8BBxLcM" role="3SKWNk">
                <property role="3SKdUp" value="collect modules to compile" />
              </node>
            </node>
            <node concept="3cpWs8" id="61Cu8BBDRYO" role="3cqZAp">
              <node concept="3cpWsn" id="61Cu8BBDRYR" role="3cpWs9">
                <property role="TrG5h" value="toCompile" />
                <node concept="A3Dl8" id="61Cu8BBDRYL" role="1tU5fm">
                  <node concept="2pR195" id="61Cu8BBDSwt" role="A3Ik2">
                    <ref role="3uigEE" to="fn29:1Xl3kQ1uadv" resolve="TResource" />
                  </node>
                </node>
                <node concept="2OqwBi" id="4g8ToP4t8pk" role="33vP2m">
                  <node concept="ElOhk" id="4g8ToP4t8pl" role="2Oq$k0" />
                  <node concept="3zZkjj" id="4g8ToP4t8pm" role="2OqNvi">
                    <node concept="1bVj0M" id="4g8ToP4t8pn" role="23t8la">
                      <node concept="3clFbS" id="4g8ToP4t8po" role="1bW5cS">
                        <node concept="3clFbF" id="4SLw4v0awq6" role="3cqZAp">
                          <node concept="2YIFZM" id="4SLw4v0ax$W" role="3clFbG">
                            <ref role="37wK5l" to="z1c3:~SModuleOperations.isCompileInIdea(org.jetbrains.mps.openapi.module.SModule):boolean" resolve="isCompileInIdea" />
                            <ref role="1Pybhc" to="z1c3:~SModuleOperations" resolve="SModuleOperations" />
                            <node concept="2OqwBi" id="4SLw4v0aAfn" role="37wK5m">
                              <node concept="2sxana" id="4SLw4v0aGSl" role="2OqNvi">
                                <ref role="2sxfKC" to="fn29:1Xl3kQ1uadw" resolve="module" />
                              </node>
                              <node concept="37vLTw" id="4SLw4v0ayJB" role="2Oq$k0">
                                <ref role="3cqZAo" node="4g8ToP4t8pw" resolve="it" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="4g8ToP4t8pw" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="4g8ToP4t8px" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="61Cu8BBEMrD" role="3cqZAp" />
            <node concept="3SKdUt" id="61Cu8BBB0NV" role="3cqZAp">
              <node concept="3SKdUq" id="61Cu8BBB1sx" role="3SKWNk">
                <property role="3SKdUp" value="compile modules" />
              </node>
            </node>
            <node concept="3clFbJ" id="61Cu8BBB2wB" role="3cqZAp">
              <node concept="2OqwBi" id="61Cu8BBB3y4" role="3clFbw">
                <node concept="37vLTw" id="61Cu8BBEOzc" role="2Oq$k0">
                  <ref role="3cqZAo" node="61Cu8BBDRYR" resolve="toCompile" />
                </node>
                <node concept="1v1jN8" id="61Cu8BBB401" role="2OqNvi" />
              </node>
              <node concept="3clFbS" id="61Cu8BBB2wD" role="3clFbx">
                <node concept="3D7k6m" id="61Cu8BBB4iB" role="3cqZAp">
                  <property role="3D7k6l" value="SUCCESS" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="61Cu8BBB58u" role="3cqZAp">
              <node concept="2YIFZM" id="1jLye1tJXyL" role="3clFbw">
                <ref role="37wK5l" to="fyhk:~RuntimeFlags.isTestMode():boolean" resolve="isTestMode" />
                <ref role="1Pybhc" to="fyhk:~RuntimeFlags" resolve="RuntimeFlags" />
              </node>
              <node concept="3clFbS" id="61Cu8BBB58w" role="3clFbx">
                <node concept="3D7k6m" id="61Cu8BBB8mk" role="3cqZAp">
                  <property role="3D7k6l" value="FAILURE" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="61Cu8BBB1F3" role="3cqZAp" />
            <node concept="3cpWs8" id="5L5h3brvDTf" role="3cqZAp">
              <node concept="3cpWsn" id="5L5h3brvDTg" role="3cpWs9">
                <property role="TrG5h" value="compiler" />
                <node concept="3uibUv" id="5L5h3brvDTh" role="1tU5fm">
                  <ref role="3uigEE" to="iqmz:2_5NjuZKW3j" resolve="IdeaJavaCompiler" />
                </node>
                <node concept="2OqwBi" id="5L5h3brvDTi" role="33vP2m">
                  <node concept="liA8E" id="5L5h3brvDTm" role="2OqNvi">
                    <ref role="37wK5l" to="z1c3:~Project.getComponent(java.lang.Class):java.lang.Object" resolve="getComponent" />
                    <node concept="3VsKOn" id="5L5h3brvDTn" role="37wK5m">
                      <ref role="3VsUkX" to="iqmz:2_5NjuZKW3j" resolve="IdeaJavaCompiler" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="1LzZ23Me5Yr" role="2Oq$k0">
                    <node concept="2_BwXt" id="1LzZ23Me5L2" role="2Oq$k0" />
                    <node concept="liA8E" id="1LzZ23Me6aV" role="2OqNvi">
                      <ref role="37wK5l" to="hfuk:2BjwmTxTf34" resolve="getProject" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="5L5h3brvDTo" role="3cqZAp">
              <node concept="3clFbS" id="5L5h3brvDTp" role="3clFbx">
                <node concept="1daRAt" id="5L5h3brvDTq" role="3cqZAp">
                  <property role="1daRAr" value="ERROR" />
                  <node concept="Xl_RD" id="5L5h3brvDTr" role="1daK9t">
                    <property role="Xl_RC" value="IntelliJ IDEA is required for compilation" />
                  </node>
                </node>
                <node concept="3D7k6m" id="5L5h3brvDTs" role="3cqZAp">
                  <property role="3D7k6l" value="FAILURE" />
                </node>
              </node>
              <node concept="22lmx$" id="5L5h3brvDTt" role="3clFbw">
                <node concept="3fqX7Q" id="5L5h3brvDTu" role="3uHU7w">
                  <node concept="2OqwBi" id="5L5h3brvDTv" role="3fr31v">
                    <node concept="37vLTw" id="3GM_nagT$7C" role="2Oq$k0">
                      <ref role="3cqZAo" node="5L5h3brvDTg" resolve="compiler" />
                    </node>
                    <node concept="liA8E" id="5L5h3brvDTx" role="2OqNvi">
                      <ref role="37wK5l" to="iqmz:3RgaFyKP9hF" resolve="isValid" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="5L5h3brvDTy" role="3uHU7B">
                  <node concept="37vLTw" id="3GM_nagTrzv" role="3uHU7B">
                    <ref role="3cqZAo" node="5L5h3brvDTg" resolve="compiler" />
                  </node>
                  <node concept="10Nm6u" id="5L5h3brvDT$" role="3uHU7w" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="61Cu8BBBaSg" role="3cqZAp" />
            <node concept="1u1O0F" id="5L5h3brvDTA" role="3cqZAp">
              <property role="h7ZnK" value="Compiling in IntelliJ IDEA" />
              <node concept="1C$qFY" id="5L5h3brvDTC" role="1u1ALe" />
              <node concept="3cmrfG" id="6jpsBNaqJ09" role="1u1ALf">
                <property role="3cmrfH" value="1" />
              </node>
            </node>
            <node concept="3clFbH" id="61Cu8BBBd2U" role="3cqZAp" />
            <node concept="1u1O0H" id="61Cu8BBBoun" role="3cqZAp">
              <ref role="h6aeV" node="5L5h3brvDTA" />
              <node concept="3cmrfG" id="61Cu8BBBp_G" role="1u1xPX">
                <property role="3cmrfH" value="1" />
              </node>
            </node>
            <node concept="3cpWs8" id="5L5h3brvDUB" role="3cqZAp">
              <node concept="3cpWsn" id="5L5h3brvDUC" role="3cpWs9">
                <property role="TrG5h" value="cr" />
                <node concept="3uibUv" id="3E_ABgyy$bm" role="1tU5fm">
                  <ref role="3uigEE" to="vqh0:~CompilationResult" resolve="CompilationResult" />
                </node>
                <node concept="2OqwBi" id="37hNSOQ$Lm6" role="33vP2m">
                  <node concept="2ShNRf" id="37hNSOQ$JIp" role="2Oq$k0">
                    <node concept="1pGfFk" id="37hNSOQ$KcK" role="2ShVmc">
                      <ref role="37wK5l" to="w1kc:~ModelAccessHelper.&lt;init&gt;(org.jetbrains.mps.openapi.module.ModelAccess)" resolve="ModelAccessHelper" />
                      <node concept="2OqwBi" id="37hNSOQ$KVV" role="37wK5m">
                        <node concept="2OqwBi" id="37hNSOQ$Kw2" role="2Oq$k0">
                          <node concept="2_BwXt" id="37hNSOQ$KkV" role="2Oq$k0" />
                          <node concept="liA8E" id="37hNSOQ$KGs" role="2OqNvi">
                            <ref role="37wK5l" to="hfuk:2BjwmTxTf34" resolve="getProject" />
                          </node>
                        </node>
                        <node concept="liA8E" id="37hNSOQ$Lab" role="2OqNvi">
                          <ref role="37wK5l" to="z1c3:~Project.getModelAccess():org.jetbrains.mps.openapi.module.ModelAccess" resolve="getModelAccess" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="37hNSOQ$LzD" role="2OqNvi">
                    <ref role="37wK5l" to="w1kc:~ModelAccessHelper.runReadAction(jetbrains.mps.util.Computable):java.lang.Object" resolve="runReadAction" />
                    <node concept="1bVj0M" id="37hNSOQ$Maq" role="37wK5m">
                      <node concept="3clFbS" id="37hNSOQ$Mar" role="1bW5cS">
                        <node concept="3clFbF" id="37hNSOQ$Mme" role="3cqZAp">
                          <node concept="2OqwBi" id="5L5h3brvDUE" role="3clFbG">
                            <node concept="37vLTw" id="3GM_nagT_Cc" role="2Oq$k0">
                              <ref role="3cqZAo" node="5L5h3brvDTg" resolve="compiler" />
                            </node>
                            <node concept="liA8E" id="5L5h3brvDUI" role="2OqNvi">
                              <ref role="37wK5l" to="iqmz:42gV918qhxZ" resolve="compileModules" />
                              <node concept="2OqwBi" id="61Cu8BBBvml" role="37wK5m">
                                <node concept="2OqwBi" id="61Cu8BBEPSB" role="2Oq$k0">
                                  <node concept="3$u5V9" id="61Cu8BBEQFs" role="2OqNvi">
                                    <node concept="1bVj0M" id="61Cu8BBEQFu" role="23t8la">
                                      <node concept="3clFbS" id="61Cu8BBEQFv" role="1bW5cS">
                                        <node concept="3clFbF" id="61Cu8BBEQYx" role="3cqZAp">
                                          <node concept="2OqwBi" id="61Cu8BBERUV" role="3clFbG">
                                            <node concept="2sxana" id="61Cu8BBET0q" role="2OqNvi">
                                              <ref role="2sxfKC" to="fn29:1Xl3kQ1uadw" resolve="module" />
                                            </node>
                                            <node concept="37vLTw" id="61Cu8BBEQYw" role="2Oq$k0">
                                              <ref role="3cqZAo" node="61Cu8BBEQFw" resolve="it" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="Rh6nW" id="61Cu8BBEQFw" role="1bW2Oz">
                                        <property role="TrG5h" value="it" />
                                        <node concept="2jxLKc" id="61Cu8BBEQFx" role="1tU5fm" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="37vLTw" id="61Cu8BBEOYR" role="2Oq$k0">
                                    <ref role="3cqZAo" node="61Cu8BBDRYR" resolve="toCompile" />
                                  </node>
                                </node>
                                <node concept="3_kTaI" id="61Cu8BBBvNE" role="2OqNvi" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="5L5h3brvDV0" role="3cqZAp">
              <node concept="3clFbS" id="5L5h3brvDV1" role="3clFbx">
                <node concept="3clFbJ" id="5L5h3brvDV4" role="3cqZAp">
                  <node concept="3clFbS" id="5L5h3brvDV5" role="3clFbx">
                    <node concept="1daRAt" id="5L5h3brvDV6" role="3cqZAp">
                      <property role="1daRAr" value="ERROR" />
                      <node concept="37vLTw" id="3GM_nagTsN1" role="1daK9t">
                        <ref role="3cqZAo" node="5L5h3brvDUC" resolve="cr" />
                      </node>
                    </node>
                  </node>
                  <node concept="3eOSWO" id="5L5h3brvDV8" role="3clFbw">
                    <node concept="3cmrfG" id="5L5h3brvDV9" role="3uHU7w">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="2OqwBi" id="5L5h3brvDVa" role="3uHU7B">
                      <node concept="37vLTw" id="3GM_nagTBef" role="2Oq$k0">
                        <ref role="3cqZAo" node="5L5h3brvDUC" resolve="cr" />
                      </node>
                      <node concept="liA8E" id="5L5h3brvDVc" role="2OqNvi">
                        <ref role="37wK5l" to="vqh0:~CompilationResult.getErrorsCount():int" resolve="getErrorsCount" />
                      </node>
                    </node>
                  </node>
                  <node concept="3eNFk2" id="5L5h3brvDVd" role="3eNLev">
                    <node concept="3eOSWO" id="5L5h3brvDVe" role="3eO9$A">
                      <node concept="3cmrfG" id="5L5h3brvDVf" role="3uHU7w">
                        <property role="3cmrfH" value="0" />
                      </node>
                      <node concept="2OqwBi" id="5L5h3brvDVg" role="3uHU7B">
                        <node concept="37vLTw" id="3GM_nagTuCh" role="2Oq$k0">
                          <ref role="3cqZAo" node="5L5h3brvDUC" resolve="cr" />
                        </node>
                        <node concept="liA8E" id="5L5h3brvDVi" role="2OqNvi">
                          <ref role="37wK5l" to="vqh0:~CompilationResult.getWarningsCount():int" resolve="getWarningsCount" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbS" id="5L5h3brvDVj" role="3eOfB_">
                      <node concept="1daRAt" id="5L5h3brvDVk" role="3cqZAp">
                        <property role="1daRAr" value="WARNING" />
                        <node concept="37vLTw" id="3GM_nagTxIP" role="1daK9t">
                          <ref role="3cqZAo" node="5L5h3brvDUC" resolve="cr" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="9aQIb" id="5L5h3brvDVm" role="9aQIa">
                    <node concept="3clFbS" id="5L5h3brvDVn" role="9aQI4">
                      <node concept="1daRAt" id="5L5h3brvDVo" role="3cqZAp">
                        <property role="1daRAr" value="INFO" />
                        <node concept="37vLTw" id="3GM_nagT_pR" role="1daK9t">
                          <ref role="3cqZAo" node="5L5h3brvDUC" resolve="cr" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3D7k6m" id="5L5h3brvDVt" role="3cqZAp">
                  <property role="3D7k6l" value="FAILURE" />
                </node>
              </node>
              <node concept="3fqX7Q" id="5L5h3brvDVy" role="3clFbw">
                <node concept="2OqwBi" id="5L5h3brvDVz" role="3fr31v">
                  <node concept="37vLTw" id="3GM_nagTwAQ" role="2Oq$k0">
                    <ref role="3cqZAo" node="5L5h3brvDUC" resolve="cr" />
                  </node>
                  <node concept="liA8E" id="5L5h3brvDV_" role="2OqNvi">
                    <ref role="37wK5l" to="vqh0:~CompilationResult.isOk():boolean" resolve="isOk" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="61Cu8BBDueU" role="3cqZAp" />
            <node concept="1u1O0I" id="5L5h3brvDVH" role="3cqZAp">
              <ref role="h6dCW" node="5L5h3brvDTA" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3D36IL" id="5L5h3brvDVI" role="3D36I5">
        <node concept="3D27Fh" id="4g8ToP4oTPN" role="3D36IM">
          <ref role="3uigEE" to="fn29:1Xl3kQ1uadv" resolve="TResource" />
        </node>
      </node>
      <node concept="1aIAsN" id="5L5h3brvDVK" role="1aI7mi">
        <property role="TrG5h" value="Parameters" />
        <node concept="2lGYhJ" id="5L5h3brvz7R" role="2pHZQ9">
          <property role="3dDGau" value="false" />
          <property role="TrG5h" value="unused" />
          <node concept="3uibUv" id="2RryCQ0_aIr" role="2lK19J">
            <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
          </node>
        </node>
        <node concept="3Tm1VV" id="5L5h3brvDVL" role="1B3o_S" />
        <node concept="2lGYhJ" id="5L5h3brvDVM" role="2pHZQ9">
          <property role="3dDGau" value="false" />
          <property role="TrG5h" value="skipAuxCompile" />
          <node concept="3uibUv" id="5L5h3brvDVN" role="2lK19J">
            <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3HPw9p" id="5L5h3brvDYI" role="1Mm5TH">
      <ref role="1Mm5Yu" to="tpcq:5L5h3brvz7i" resolve="Generate" />
    </node>
    <node concept="3HPw9p" id="5L5h3brvDYJ" role="1Mm5TH">
      <ref role="1Mm5Yu" to="tpcq:5L5h3brvDH_" resolve="TextGen" />
    </node>
    <node concept="3HPw9p" id="5L5h3brvDYK" role="1Mm5TH">
      <ref role="1Mm5Yu" node="taepSZ9r$V" resolve="Make" />
    </node>
  </node>
  <node concept="15KeUS" id="5L5h3brvIVD">
    <property role="TrG5h" value="ReloadClasses" />
    <node concept="15KeUm" id="5L5h3brvIVE" role="15LFul">
      <property role="1xVfUM" value="300" />
      <property role="3xojQC" value="true" />
      <property role="TrG5h" value="reloadClasses" />
      <property role="2w7fpF" value="TRANSFORM" />
      <node concept="2aLE7I" id="5L5h3brvIVF" role="ElM8M">
        <node concept="ElOhj" id="5L5h3brvIVG" role="2aLE7H">
          <node concept="3clFbS" id="5L5h3brvIVH" role="2VODD2">
            <node concept="3cpWs8" id="1iBNvmC$N8x" role="3cqZAp">
              <node concept="3cpWsn" id="1iBNvmC$N8$" role="3cpWs9">
                <property role="TrG5h" value="toReload" />
                <node concept="2OqwBi" id="5$SFEs5sDhS" role="33vP2m">
                  <node concept="ANE8D" id="5$SFEs5sEgH" role="2OqNvi" />
                  <node concept="2OqwBi" id="3Iq0qml5Ztg" role="2Oq$k0">
                    <node concept="1VAtEI" id="5$SFEs5sBMw" role="2OqNvi" />
                    <node concept="2OqwBi" id="1iBNvmC$O$7" role="2Oq$k0">
                      <node concept="3$u5V9" id="1iBNvmC$QFm" role="2OqNvi">
                        <node concept="1bVj0M" id="1iBNvmC$QFo" role="23t8la">
                          <node concept="3clFbS" id="1iBNvmC$QFp" role="1bW5cS">
                            <node concept="3clFbF" id="1iBNvmC$QI9" role="3cqZAp">
                              <node concept="2OqwBi" id="1iBNvmC$RJl" role="3clFbG">
                                <node concept="2sxana" id="1iBNvmC$XHM" role="2OqNvi">
                                  <ref role="2sxfKC" to="fn29:1Xl3kQ1uadw" resolve="module" />
                                </node>
                                <node concept="37vLTw" id="1iBNvmC$QI8" role="2Oq$k0">
                                  <ref role="3cqZAo" node="1iBNvmC$QFq" resolve="it" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="Rh6nW" id="1iBNvmC$QFq" role="1bW2Oz">
                            <property role="TrG5h" value="it" />
                            <node concept="2jxLKc" id="1iBNvmC$QFr" role="1tU5fm" />
                          </node>
                        </node>
                      </node>
                      <node concept="ElOhk" id="1iBNvmC$NzC" role="2Oq$k0" />
                    </node>
                  </node>
                </node>
                <node concept="3uibUv" id="3Iq0qml6gOD" role="1tU5fm">
                  <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
                  <node concept="3qUE_q" id="3Iq0qmlaWEc" role="11_B2D">
                    <node concept="3uibUv" id="3Iq0qmlaXLy" role="3qUE_r">
                      <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="5$SFEs5zj4z" role="3cqZAp" />
            <node concept="1u1O0F" id="5L5h3brvIVX" role="3cqZAp">
              <property role="h7ZnK" value="Reloading classes" />
              <node concept="3cmrfG" id="5L5h3brvIVY" role="1u1ALf">
                <property role="3cmrfH" value="1" />
              </node>
              <node concept="1C$qFY" id="5L5h3brvIVZ" role="1u1ALe" />
            </node>
            <node concept="3SKdUt" id="1LzZ23MecgH" role="3cqZAp">
              <node concept="3SKdUq" id="1LzZ23MecgJ" role="3SKWNk">
                <property role="3SKdUp" value="FIXME pass progressMonitor down to reloadModules" />
              </node>
            </node>
            <node concept="3clFbF" id="1LzZ23Me9LX" role="3cqZAp">
              <node concept="2OqwBi" id="1LzZ23Meau3" role="3clFbG">
                <node concept="2OqwBi" id="1LzZ23Meaf5" role="2Oq$k0">
                  <node concept="2OqwBi" id="1LzZ23Mea4_" role="2Oq$k0">
                    <node concept="2_BwXt" id="1LzZ23Me9LV" role="2Oq$k0" />
                    <node concept="liA8E" id="1LzZ23Mea7C" role="2OqNvi">
                      <ref role="37wK5l" to="hfuk:2BjwmTxTf34" resolve="getProject" />
                    </node>
                  </node>
                  <node concept="liA8E" id="1LzZ23MeaqN" role="2OqNvi">
                    <ref role="37wK5l" to="z1c3:~Project.getModelAccess():org.jetbrains.mps.openapi.module.ModelAccess" resolve="getModelAccess" />
                  </node>
                </node>
                <node concept="liA8E" id="1LzZ23MeaAj" role="2OqNvi">
                  <ref role="37wK5l" to="lui2:~ModelAccess.runWriteAction(java.lang.Runnable):void" resolve="runWriteAction" />
                  <node concept="1bVj0M" id="3WTAIkgfXCG" role="37wK5m">
                    <property role="3yWfEV" value="true" />
                    <node concept="3clFbS" id="3WTAIkgfXCH" role="1bW5cS">
                      <node concept="3clFbF" id="5$SFEs5zo35" role="3cqZAp">
                        <node concept="2OqwBi" id="5$SFEs5zoH9" role="3clFbG">
                          <node concept="liA8E" id="5$SFEs5zpQg" role="2OqNvi">
                            <ref role="37wK5l" to="3qmy:~ClassLoaderManager.reloadModules(java.lang.Iterable):void" resolve="reloadModules" />
                            <node concept="37vLTw" id="4xf2wkFFw_0" role="37wK5m">
                              <ref role="3cqZAo" node="1iBNvmC$N8$" resolve="toReload" />
                            </node>
                          </node>
                          <node concept="2YIFZM" id="5$SFEs5zolX" role="2Oq$k0">
                            <ref role="37wK5l" to="3qmy:~ClassLoaderManager.getInstance():jetbrains.mps.classloading.ClassLoaderManager" resolve="getInstance" />
                            <ref role="1Pybhc" to="3qmy:~ClassLoaderManager" resolve="ClassLoaderManager" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1u1O0H" id="5L5h3brvIWc" role="3cqZAp">
              <ref role="h6aeV" node="5L5h3brvIVX" />
              <node concept="3cmrfG" id="5L5h3brvIWd" role="1u1xPX">
                <property role="3cmrfH" value="1" />
              </node>
            </node>
            <node concept="1u1O0I" id="5L5h3brvIWe" role="3cqZAp">
              <ref role="h6dCW" node="5L5h3brvIVX" />
            </node>
          </node>
        </node>
      </node>
      <node concept="15KeVb" id="5L5h3brvIWz" role="15LFui">
        <property role="3HPxAp" value="AFTER" />
        <ref role="15KeV8" node="5L5h3brvDPy" resolve="compile" />
      </node>
      <node concept="15KeVb" id="5L5h3brvIW$" role="15LFui">
        <property role="3HPxAp" value="AFTER" />
        <ref role="15KeV8" node="5L5h3brvDSq" resolve="auxCompile" />
      </node>
      <node concept="15KeVb" id="5L5h3brvIW_" role="15LFui">
        <ref role="15KeV8" node="taepSZ9rBr" resolve="make" />
      </node>
      <node concept="3D36IL" id="5L5h3brvIWA" role="3D36I5">
        <node concept="3D27Fh" id="4g8ToP4$1kF" role="3D36IM">
          <ref role="3uigEE" to="fn29:1Xl3kQ1uadv" resolve="TResource" />
        </node>
      </node>
    </node>
    <node concept="3HPw9p" id="5L5h3brvIWC" role="1Mm5TH">
      <ref role="1Mm5Yu" node="5L5h3brvDPx" resolve="JavaCompile" />
    </node>
    <node concept="3HPw9p" id="5L5h3brvIWD" role="1Mm5TH">
      <ref role="1Mm5Yu" node="taepSZ9r$V" resolve="Make" />
    </node>
  </node>
  <node concept="312cEu" id="2zR2ack0HeY">
    <property role="TrG5h" value="BootstrapMakeFacets" />
    <node concept="Wx3nA" id="3NcP_xYjaXO" role="jymVt">
      <property role="TrG5h" value="BASELANGUAGE_NAMESPACE" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3NcP_xYjaXL" role="1B3o_S" />
      <node concept="17QB3L" id="3NcP_xYjaXM" role="1tU5fm" />
      <node concept="Xl_RD" id="3NcP_xYjaXN" role="33vP2m">
        <property role="Xl_RC" value="jetbrains.mps.baseLanguage" />
      </node>
    </node>
    <node concept="Wx3nA" id="1xyXZDduUmU" role="jymVt">
      <property role="TrG5h" value="CORELANGUAGE_NAMESPACE" />
      <property role="3TUv4t" value="true" />
      <node concept="Xl_RD" id="1xyXZDduUOs" role="33vP2m">
        <property role="Xl_RC" value="jetbrains.mps.lang.core" />
      </node>
      <node concept="3Tm6S6" id="1xyXZDduTTo" role="1B3o_S" />
      <node concept="17QB3L" id="1xyXZDduUmi" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="1PwNLcbMMA8" role="jymVt" />
    <node concept="312cEg" id="1PwNLcbMOFk" role="jymVt">
      <property role="TrG5h" value="myFacetRegistry" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1PwNLcbMOFl" role="1B3o_S" />
      <node concept="3uibUv" id="1PwNLcbMOFn" role="1tU5fm">
        <ref role="3uigEE" to="ud0o:5mqBoD3U4oX" resolve="FacetRegistry" />
      </node>
    </node>
    <node concept="312cEg" id="2zR2ack0TGa" role="jymVt">
      <property role="TrG5h" value="javaCompileFacet" />
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="2zR2ack0Sy7" role="1B3o_S" />
      <node concept="3uibUv" id="2zR2ack0SYw" role="1tU5fm">
        <ref role="3uigEE" to="ud0o:5mqBoD3U3U8" resolve="IFacet" />
      </node>
    </node>
    <node concept="312cEg" id="2zR2ack0VPl" role="jymVt">
      <property role="TrG5h" value="reloadClassesFacet" />
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="2zR2ack0UrZ" role="1B3o_S" />
      <node concept="3uibUv" id="2zR2ack0USr" role="1tU5fm">
        <ref role="3uigEE" to="ud0o:5mqBoD3U3U8" resolve="IFacet" />
      </node>
    </node>
    <node concept="312cEg" id="1xyXZDdutqD" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="makeFacet" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="1xyXZDdusXC" role="1B3o_S" />
      <node concept="3uibUv" id="1xyXZDdutpP" role="1tU5fm">
        <ref role="3uigEE" to="ud0o:5mqBoD3U3U8" resolve="IFacet" />
      </node>
    </node>
    <node concept="3uibUv" id="3J$TK9UfYWr" role="EKbjA">
      <ref role="3uigEE" to="wyuk:~CoreComponent" resolve="CoreComponent" />
    </node>
    <node concept="2tJIrI" id="2zR2ack0S8N" role="jymVt" />
    <node concept="3clFbW" id="1PwNLcbMO5S" role="jymVt">
      <node concept="3cqZAl" id="1PwNLcbMO5T" role="3clF45" />
      <node concept="3Tm1VV" id="1PwNLcbMO5U" role="1B3o_S" />
      <node concept="3clFbS" id="1PwNLcbMO5V" role="3clF47">
        <node concept="3clFbF" id="1PwNLcbMOFo" role="3cqZAp">
          <node concept="37vLTI" id="1PwNLcbMOFq" role="3clFbG">
            <node concept="37vLTw" id="1PwNLcbMOFt" role="37vLTJ">
              <ref role="3cqZAo" node="1PwNLcbMOFk" resolve="myFacetRegistry" />
            </node>
            <node concept="37vLTw" id="1PwNLcbMOFu" role="37vLTx">
              <ref role="3cqZAo" node="1PwNLcbMOzL" resolve="facetRegistry" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1PwNLcbMOzL" role="3clF46">
        <property role="TrG5h" value="facetRegistry" />
        <node concept="3uibUv" id="1PwNLcbMOzK" role="1tU5fm">
          <ref role="3uigEE" to="ud0o:5mqBoD3U4oX" resolve="FacetRegistry" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1PwNLcbMSs4" role="jymVt" />
    <node concept="3Tm1VV" id="2zR2ack0HeZ" role="1B3o_S" />
    <node concept="3clFb_" id="3J$TK9UgjM9" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="init" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="3J$TK9UgjMa" role="1B3o_S" />
      <node concept="3cqZAl" id="3J$TK9UgjMc" role="3clF45" />
      <node concept="3clFbS" id="3J$TK9UgjMd" role="3clF47">
        <node concept="SfApY" id="2O12xy3V5LH" role="3cqZAp">
          <node concept="3clFbS" id="2O12xy3V5LJ" role="SfCbr">
            <node concept="3clFbF" id="2zR2ack0X2q" role="3cqZAp">
              <node concept="37vLTI" id="2zR2ack0XJs" role="3clFbG">
                <node concept="37vLTw" id="2zR2ack0X2p" role="37vLTJ">
                  <ref role="3cqZAo" node="2zR2ack0TGa" resolve="javaCompileFacet" />
                </node>
                <node concept="2OqwBi" id="2O12xy3Up$e" role="37vLTx">
                  <node concept="liA8E" id="2O12xy3UrOh" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Class.newInstance():java.lang.Object" resolve="newInstance" />
                  </node>
                  <node concept="2v9SQr" id="2O12xy3Ug_W" role="2Oq$k0">
                    <ref role="2v9SMg" node="5L5h3brvDPx" resolve="JavaCompile" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2zR2ack0Zqf" role="3cqZAp">
              <node concept="37vLTI" id="2zR2ack107w" role="3clFbG">
                <node concept="37vLTw" id="2zR2ack0Zqe" role="37vLTJ">
                  <ref role="3cqZAo" node="2zR2ack0VPl" resolve="reloadClassesFacet" />
                </node>
                <node concept="2OqwBi" id="2O12xy3V2Oo" role="37vLTx">
                  <node concept="liA8E" id="2O12xy3V58N" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Class.newInstance():java.lang.Object" resolve="newInstance" />
                  </node>
                  <node concept="2v9SQr" id="2O12xy3V2as" role="2Oq$k0">
                    <ref role="2v9SMg" node="5L5h3brvIVD" resolve="ReloadClasses" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1xyXZDduVMf" role="3cqZAp">
              <node concept="37vLTI" id="1xyXZDduWDP" role="3clFbG">
                <node concept="2OqwBi" id="1xyXZDduYoW" role="37vLTx">
                  <node concept="liA8E" id="1xyXZDdv04v" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Class.newInstance():java.lang.Object" resolve="newInstance" />
                  </node>
                  <node concept="2v9SQr" id="1xyXZDduX0Z" role="2Oq$k0">
                    <ref role="2v9SMg" node="taepSZ9r$V" resolve="Make" />
                  </node>
                </node>
                <node concept="37vLTw" id="1xyXZDduVMe" role="37vLTJ">
                  <ref role="3cqZAo" node="1xyXZDdutqD" resolve="makeFacet" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2O12xy3Udn7" role="3cqZAp">
              <node concept="2OqwBi" id="2O12xy3UdqQ" role="3clFbG">
                <node concept="liA8E" id="2O12xy3UenC" role="2OqNvi">
                  <ref role="37wK5l" to="ud0o:4edLwTTuOpR" resolve="register" />
                  <node concept="37vLTw" id="3J$TK9UgkE0" role="37wK5m">
                    <ref role="3cqZAo" node="3NcP_xYjaXO" resolve="BASELANGUAGE_NAMESPACE" />
                  </node>
                  <node concept="37vLTw" id="2O12xy3V8lK" role="37wK5m">
                    <ref role="3cqZAo" node="2zR2ack0TGa" resolve="javaCompileFacet" />
                  </node>
                </node>
                <node concept="37vLTw" id="1PwNLcbMWp3" role="2Oq$k0">
                  <ref role="3cqZAo" node="1PwNLcbMOFk" resolve="myFacetRegistry" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2O12xy3Us0l" role="3cqZAp">
              <node concept="2OqwBi" id="2O12xy3Us0m" role="3clFbG">
                <node concept="liA8E" id="2O12xy3Us0n" role="2OqNvi">
                  <ref role="37wK5l" to="ud0o:4edLwTTuOpR" resolve="register" />
                  <node concept="37vLTw" id="3J$TK9UgkE3" role="37wK5m">
                    <ref role="3cqZAo" node="3NcP_xYjaXO" resolve="BASELANGUAGE_NAMESPACE" />
                  </node>
                  <node concept="37vLTw" id="2O12xy3V8Aw" role="37wK5m">
                    <ref role="3cqZAo" node="2zR2ack0VPl" resolve="reloadClassesFacet" />
                  </node>
                </node>
                <node concept="37vLTw" id="1PwNLcbMWxo" role="2Oq$k0">
                  <ref role="3cqZAo" node="1PwNLcbMOFk" resolve="myFacetRegistry" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1xyXZDdv1$J" role="3cqZAp">
              <node concept="2OqwBi" id="1xyXZDdv2zl" role="3clFbG">
                <node concept="liA8E" id="1xyXZDdv3uE" role="2OqNvi">
                  <ref role="37wK5l" to="ud0o:4edLwTTuOpR" resolve="register" />
                  <node concept="37vLTw" id="1xyXZDdv3R2" role="37wK5m">
                    <ref role="3cqZAo" node="1xyXZDduUmU" resolve="CORELANGUAGE_NAMESPACE" />
                  </node>
                  <node concept="37vLTw" id="1xyXZDdv6G$" role="37wK5m">
                    <ref role="3cqZAo" node="1xyXZDdutqD" resolve="makeFacet" />
                  </node>
                </node>
                <node concept="37vLTw" id="1PwNLcbMWCT" role="2Oq$k0">
                  <ref role="3cqZAo" node="1PwNLcbMOFk" resolve="myFacetRegistry" />
                </node>
              </node>
            </node>
          </node>
          <node concept="TDmWw" id="2O12xy3V5LK" role="TEbGg">
            <node concept="3cpWsn" id="2O12xy3V5LM" role="TDEfY">
              <property role="TrG5h" value="t" />
              <node concept="3uibUv" id="2O12xy3V5Sx" role="1tU5fm">
                <ref role="3uigEE" to="wyt6:~Throwable" resolve="Throwable" />
              </node>
            </node>
            <node concept="3clFbS" id="2O12xy3V5LQ" role="TDEfX">
              <node concept="YS8fn" id="2O12xy3V63e" role="3cqZAp">
                <node concept="2ShNRf" id="2O12xy3V64k" role="YScLw">
                  <node concept="1pGfFk" id="2O12xy3V6xC" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.Throwable)" resolve="RuntimeException" />
                    <node concept="37vLTw" id="2O12xy3V6yZ" role="37wK5m">
                      <ref role="3cqZAo" node="2O12xy3V5LM" resolve="t" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3J$TK9Ugnuy" role="jymVt" />
    <node concept="3clFb_" id="3J$TK9UgjMe" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="dispose" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="3J$TK9UgjMf" role="1B3o_S" />
      <node concept="3cqZAl" id="3J$TK9UgjMh" role="3clF45" />
      <node concept="3clFbS" id="3J$TK9UgjMi" role="3clF47">
        <node concept="3clFbF" id="7zjrrBdd87O" role="3cqZAp">
          <node concept="2OqwBi" id="7zjrrBdd8xf" role="3clFbG">
            <node concept="liA8E" id="7zjrrBdd9nw" role="2OqNvi">
              <ref role="37wK5l" to="ud0o:5mqBoD3U4px" resolve="unregister" />
              <node concept="37vLTw" id="7zjrrBdd9tQ" role="37wK5m">
                <ref role="3cqZAo" node="2zR2ack0TGa" resolve="javaCompileFacet" />
              </node>
            </node>
            <node concept="37vLTw" id="1PwNLcbMWKA" role="2Oq$k0">
              <ref role="3cqZAo" node="1PwNLcbMOFk" resolve="myFacetRegistry" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7zjrrBddaJd" role="3cqZAp">
          <node concept="2OqwBi" id="7zjrrBddbb8" role="3clFbG">
            <node concept="liA8E" id="7zjrrBddbKp" role="2OqNvi">
              <ref role="37wK5l" to="ud0o:5mqBoD3U4px" resolve="unregister" />
              <node concept="37vLTw" id="7zjrrBddbRB" role="37wK5m">
                <ref role="3cqZAo" node="2zR2ack0VPl" resolve="reloadClassesFacet" />
              </node>
            </node>
            <node concept="37vLTw" id="1PwNLcbMWSe" role="2Oq$k0">
              <ref role="3cqZAo" node="1PwNLcbMOFk" resolve="myFacetRegistry" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6DnmZm1hDyy" role="3cqZAp">
          <node concept="2OqwBi" id="6DnmZm1hEaH" role="3clFbG">
            <node concept="liA8E" id="6DnmZm1hESW" role="2OqNvi">
              <ref role="37wK5l" to="ud0o:5mqBoD3U4px" resolve="unregister" />
              <node concept="37vLTw" id="6DnmZm1hF3Y" role="37wK5m">
                <ref role="3cqZAo" node="1xyXZDdutqD" resolve="makeFacet" />
              </node>
            </node>
            <node concept="37vLTw" id="1PwNLcbMWZQ" role="2Oq$k0">
              <ref role="3cqZAo" node="1PwNLcbMOFk" resolve="myFacetRegistry" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="15KeUS" id="taepSZ9r$V">
    <property role="TrG5h" value="Make" />
    <property role="3GE5qa" value="" />
    <node concept="15KeUm" id="taepSZ9r$W" role="15LFul">
      <property role="1xVfUM" value="200" />
      <property role="TrG5h" value="reconcile" />
      <property role="2w7fpF" value="TRANSFORM" />
      <node concept="1aIAsN" id="taepSZ9r$X" role="1aI7mi">
        <property role="TrG5h" value="Parameters" />
        <node concept="3Tm1VV" id="taepSZ9r$Y" role="1B3o_S" />
        <node concept="2lGYhJ" id="taepSZ9r$Z" role="2pHZQ9">
          <property role="3dDGau" value="false" />
          <property role="TrG5h" value="skipReconcile" />
          <node concept="3uibUv" id="taepSZ9r_0" role="2lK19J">
            <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
          </node>
        </node>
      </node>
      <node concept="2aLE7I" id="taepSZ9r_1" role="ElM8M">
        <node concept="ElOhj" id="taepSZ9r_2" role="2aLE7H">
          <node concept="3clFbS" id="taepSZ9r_3" role="2VODD2">
            <node concept="3clFbJ" id="taepSZ9r_4" role="3cqZAp">
              <node concept="3clFbS" id="taepSZ9r_5" role="3clFbx">
                <node concept="ElOAg" id="taepSZ9r_6" role="3cqZAp">
                  <node concept="ElOhk" id="taepSZ9r_7" role="ElOA9" />
                </node>
                <node concept="3D7k6m" id="taepSZ9r_8" role="3cqZAp">
                  <property role="3D7k6l" value="SUCCESS" />
                </node>
              </node>
              <node concept="2OqwBi" id="taepSZ9r_9" role="3clFbw">
                <node concept="10M0yZ" id="taepSZ9r_a" role="2Oq$k0">
                  <ref role="1PxDUh" to="wyt6:~Boolean" resolve="Boolean" />
                  <ref role="3cqZAo" to="wyt6:~Boolean.TRUE" resolve="TRUE" />
                </node>
                <node concept="liA8E" id="taepSZ9r_b" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Boolean.equals(java.lang.Object):boolean" resolve="equals" />
                  <node concept="1aIXbY" id="taepSZ9r_c" role="37wK5m">
                    <node concept="1aIXbZ" id="taepSZ9r_d" role="2Oq$k0" />
                    <node concept="2sxana" id="taepSZ9r_e" role="2OqNvi">
                      <ref role="2sxfKC" node="taepSZ9r$Z" resolve="skipReconcile" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="taepSZ9r_f" role="3cqZAp">
              <node concept="2OqwBi" id="taepSZ9r_g" role="3clFbG">
                <node concept="EWnkA" id="taepSZ9r_h" role="2Oq$k0" />
                <node concept="liA8E" id="taepSZ9r_i" role="2OqNvi">
                  <ref role="37wK5l" to="yyf4:~ProgressMonitor.start(java.lang.String,int):void" resolve="start" />
                  <node concept="Xl_RD" id="taepSZ9r_j" role="37wK5m">
                    <property role="Xl_RC" value="Reconciling" />
                  </node>
                  <node concept="3cmrfG" id="taepSZ9r_k" role="37wK5m">
                    <property role="3cmrfH" value="1" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2GUZhq" id="taepSZ9r_l" role="3cqZAp">
              <node concept="3clFbS" id="taepSZ9r_m" role="2GV8ay">
                <node concept="3clFbF" id="taepSZ9r_n" role="3cqZAp">
                  <node concept="2OqwBi" id="taepSZ9r_o" role="3clFbG">
                    <node concept="2YIFZM" id="taepSZ9r_p" role="2Oq$k0">
                      <ref role="37wK5l" to="3ju5:~FileSystem.getInstance():jetbrains.mps.vfs.FileSystem" resolve="getInstance" />
                      <ref role="1Pybhc" to="3ju5:~FileSystem" resolve="FileSystem" />
                    </node>
                    <node concept="liA8E" id="taepSZ9r_q" role="2OqNvi">
                      <ref role="37wK5l" to="3ju5:~FileSystem.runWriteTransaction(java.lang.Runnable):boolean" resolve="runWriteTransaction" />
                      <node concept="1bVj0M" id="taepSZ9r_r" role="37wK5m">
                        <node concept="3clFbS" id="taepSZ9r_s" role="1bW5cS">
                          <node concept="3cpWs8" id="taepSZ9r_t" role="3cqZAp">
                            <node concept="3cpWsn" id="taepSZ9r_u" role="3cpWs9">
                              <property role="TrG5h" value="writtenFiles" />
                              <property role="3TUv4t" value="true" />
                              <node concept="_YKpA" id="taepSZ9r_v" role="1tU5fm">
                                <node concept="3uibUv" id="taepSZ9r_w" role="_ZDj9">
                                  <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
                                </node>
                              </node>
                              <node concept="2ShNRf" id="taepSZ9r_x" role="33vP2m">
                                <node concept="Tc6Ow" id="taepSZ9r_y" role="2ShVmc">
                                  <node concept="3uibUv" id="taepSZ9r_z" role="HW$YZ">
                                    <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3cpWs8" id="taepSZ9r_$" role="3cqZAp">
                            <node concept="3cpWsn" id="taepSZ9r__" role="3cpWs9">
                              <property role="TrG5h" value="reconciler" />
                              <node concept="3uibUv" id="taepSZ9r_A" role="1tU5fm">
                                <ref role="3uigEE" to="rk9m:s2Jv$gDkGv" resolve="DeltaReconciler" />
                              </node>
                              <node concept="2ShNRf" id="taepSZ9r_B" role="33vP2m">
                                <node concept="1pGfFk" id="taepSZ9r_C" role="2ShVmc">
                                  <ref role="37wK5l" to="rk9m:s2Jv$gDx2z" resolve="DeltaReconciler" />
                                  <node concept="2OqwBi" id="taepSZ9r_D" role="37wK5m">
                                    <node concept="2OqwBi" id="taepSZ9r_E" role="2Oq$k0">
                                      <node concept="ElOhk" id="taepSZ9r_F" role="2Oq$k0" />
                                      <node concept="3goQfb" id="taepSZ9r_G" role="2OqNvi">
                                        <node concept="1bVj0M" id="taepSZ9r_H" role="23t8la">
                                          <node concept="3clFbS" id="taepSZ9r_I" role="1bW5cS">
                                            <node concept="3clFbF" id="taepSZ9r_J" role="3cqZAp">
                                              <node concept="2OqwBi" id="taepSZ9r_K" role="3clFbG">
                                                <node concept="2sxana" id="taepSZ9r_L" role="2OqNvi">
                                                  <ref role="2sxfKC" to="fn29:17BsPLzesix" resolve="delta" />
                                                </node>
                                                <node concept="37vLTw" id="taepSZ9r_M" role="2Oq$k0">
                                                  <ref role="3cqZAo" node="taepSZ9r_N" resolve="res" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="Rh6nW" id="taepSZ9r_N" role="1bW2Oz">
                                            <property role="TrG5h" value="res" />
                                            <node concept="2jxLKc" id="taepSZ9r_O" role="1tU5fm" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3zZkjj" id="taepSZ9r_P" role="2OqNvi">
                                      <node concept="1bVj0M" id="taepSZ9r_Q" role="23t8la">
                                        <node concept="3clFbS" id="taepSZ9r_R" role="1bW5cS">
                                          <node concept="3clFbF" id="taepSZ9r_S" role="3cqZAp">
                                            <node concept="3fqX7Q" id="taepSZ9r_T" role="3clFbG">
                                              <node concept="2ZW3vV" id="taepSZ9r_U" role="3fr31v">
                                                <node concept="3uibUv" id="taepSZ9r_V" role="2ZW6by">
                                                  <ref role="3uigEE" to="1kj4:4HnUtj9IJNm" resolve="IInternalDelta" />
                                                </node>
                                                <node concept="37vLTw" id="2BHiRxglIRO" role="2ZW6bz">
                                                  <ref role="3cqZAo" node="taepSZ9r_X" resolve="d" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="Rh6nW" id="taepSZ9r_X" role="1bW2Oz">
                                          <property role="TrG5h" value="d" />
                                          <node concept="2jxLKc" id="taepSZ9r_Y" role="1tU5fm" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="taepSZ9r_Z" role="3cqZAp">
                            <node concept="2OqwBi" id="taepSZ9rA0" role="3clFbG">
                              <node concept="37vLTw" id="3GM_nagTywU" role="2Oq$k0">
                                <ref role="3cqZAo" node="taepSZ9r__" resolve="reconciler" />
                              </node>
                              <node concept="liA8E" id="taepSZ9rA2" role="2OqNvi">
                                <ref role="37wK5l" to="rk9m:s2Jv$gDz8h" resolve="reconcileAll" />
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="taepSZ9rA3" role="3cqZAp">
                            <node concept="2OqwBi" id="taepSZ9rA4" role="3clFbG">
                              <node concept="37vLTw" id="3GM_nagTudv" role="2Oq$k0">
                                <ref role="3cqZAo" node="taepSZ9r__" resolve="reconciler" />
                              </node>
                              <node concept="liA8E" id="taepSZ9rA6" role="2OqNvi">
                                <ref role="37wK5l" to="rk9m:6uL$bP9UH9D" resolve="visitAll" />
                                <node concept="2ShNRf" id="taepSZ9rA7" role="37wK5m">
                                  <node concept="YeOm9" id="taepSZ9rA8" role="2ShVmc">
                                    <node concept="1Y3b0j" id="taepSZ9rA9" role="YeSDq">
                                      <property role="2bfB8j" value="true" />
                                      <ref role="37wK5l" to="rk9m:6uL$bP9UH4d" resolve="FilesDelta.Visitor" />
                                      <ref role="1Y3XeK" to="rk9m:6uL$bP9UH4b" resolve="FilesDelta.Visitor" />
                                      <node concept="3Tm1VV" id="taepSZ9rAa" role="1B3o_S" />
                                      <node concept="3clFb_" id="taepSZ9rAb" role="jymVt">
                                        <property role="1EzhhJ" value="false" />
                                        <property role="TrG5h" value="acceptWritten" />
                                        <node concept="10P_77" id="taepSZ9rAc" role="3clF45" />
                                        <node concept="3Tm1VV" id="taepSZ9rAd" role="1B3o_S" />
                                        <node concept="37vLTG" id="taepSZ9rAe" role="3clF46">
                                          <property role="TrG5h" value="file" />
                                          <node concept="3uibUv" id="taepSZ9rAf" role="1tU5fm">
                                            <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
                                          </node>
                                        </node>
                                        <node concept="3clFbS" id="taepSZ9rAg" role="3clF47">
                                          <node concept="3clFbF" id="taepSZ9rAh" role="3cqZAp">
                                            <node concept="2OqwBi" id="taepSZ9rAi" role="3clFbG">
                                              <node concept="37vLTw" id="3GM_nagTxaI" role="2Oq$k0">
                                                <ref role="3cqZAo" node="taepSZ9r_u" resolve="writtenFiles" />
                                              </node>
                                              <node concept="TSZUe" id="taepSZ9rAk" role="2OqNvi">
                                                <node concept="37vLTw" id="2BHiRxgm79n" role="25WWJ7">
                                                  <ref role="3cqZAo" node="taepSZ9rAe" resolve="file" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="3cpWs6" id="taepSZ9rAm" role="3cqZAp">
                                            <node concept="3clFbT" id="taepSZ9rAn" role="3cqZAk">
                                              <property role="3clFbU" value="true" />
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="2AHcQZ" id="taepSZ9rAo" role="2AJF6D">
                                          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3cpWs8" id="taepSZ9rAp" role="3cqZAp">
                            <node concept="3cpWsn" id="taepSZ9rAq" role="3cpWs9">
                              <property role="TrG5h" value="internalReconciler" />
                              <node concept="3uibUv" id="taepSZ9rAr" role="1tU5fm">
                                <ref role="3uigEE" to="rk9m:s2Jv$gDkGv" resolve="DeltaReconciler" />
                              </node>
                              <node concept="2ShNRf" id="taepSZ9rAs" role="33vP2m">
                                <node concept="1pGfFk" id="taepSZ9rAt" role="2ShVmc">
                                  <ref role="37wK5l" to="rk9m:s2Jv$gDx2z" resolve="DeltaReconciler" />
                                  <node concept="2OqwBi" id="taepSZ9rAu" role="37wK5m">
                                    <node concept="2OqwBi" id="taepSZ9rAv" role="2Oq$k0">
                                      <node concept="ElOhk" id="taepSZ9rAw" role="2Oq$k0" />
                                      <node concept="3goQfb" id="taepSZ9rAx" role="2OqNvi">
                                        <node concept="1bVj0M" id="taepSZ9rAy" role="23t8la">
                                          <node concept="3clFbS" id="taepSZ9rAz" role="1bW5cS">
                                            <node concept="3clFbF" id="taepSZ9rA$" role="3cqZAp">
                                              <node concept="2OqwBi" id="taepSZ9rA_" role="3clFbG">
                                                <node concept="2sxana" id="taepSZ9rAA" role="2OqNvi">
                                                  <ref role="2sxfKC" to="fn29:17BsPLzesix" resolve="delta" />
                                                </node>
                                                <node concept="37vLTw" id="taepSZ9rAB" role="2Oq$k0">
                                                  <ref role="3cqZAo" node="taepSZ9rAC" resolve="res" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="Rh6nW" id="taepSZ9rAC" role="1bW2Oz">
                                            <property role="TrG5h" value="res" />
                                            <node concept="2jxLKc" id="taepSZ9rAD" role="1tU5fm" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3zZkjj" id="taepSZ9rAE" role="2OqNvi">
                                      <node concept="1bVj0M" id="taepSZ9rAF" role="23t8la">
                                        <node concept="3clFbS" id="taepSZ9rAG" role="1bW5cS">
                                          <node concept="3clFbF" id="taepSZ9rAH" role="3cqZAp">
                                            <node concept="2ZW3vV" id="taepSZ9rAI" role="3clFbG">
                                              <node concept="3uibUv" id="taepSZ9rAJ" role="2ZW6by">
                                                <ref role="3uigEE" to="1kj4:4HnUtj9IJNm" resolve="IInternalDelta" />
                                              </node>
                                              <node concept="37vLTw" id="2BHiRxgm_iF" role="2ZW6bz">
                                                <ref role="3cqZAo" node="taepSZ9rAL" resolve="d" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="Rh6nW" id="taepSZ9rAL" role="1bW2Oz">
                                          <property role="TrG5h" value="d" />
                                          <node concept="2jxLKc" id="taepSZ9rAM" role="1tU5fm" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="taepSZ9rAN" role="3cqZAp">
                            <node concept="2OqwBi" id="taepSZ9rAO" role="3clFbG">
                              <node concept="37vLTw" id="3GM_nagTzbl" role="2Oq$k0">
                                <ref role="3cqZAo" node="taepSZ9rAq" resolve="internalReconciler" />
                              </node>
                              <node concept="liA8E" id="taepSZ9rAQ" role="2OqNvi">
                                <ref role="37wK5l" to="rk9m:s2Jv$gDz8h" resolve="reconcileAll" />
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="taepSZ9rAR" role="3cqZAp">
                            <node concept="2OqwBi" id="taepSZ9rAS" role="3clFbG">
                              <node concept="37vLTw" id="3GM_nagTzox" role="2Oq$k0">
                                <ref role="3cqZAo" node="taepSZ9rAq" resolve="internalReconciler" />
                              </node>
                              <node concept="liA8E" id="taepSZ9rAU" role="2OqNvi">
                                <ref role="37wK5l" to="rk9m:6uL$bP9UH9D" resolve="visitAll" />
                                <node concept="2ShNRf" id="taepSZ9rAV" role="37wK5m">
                                  <node concept="YeOm9" id="taepSZ9rAW" role="2ShVmc">
                                    <node concept="1Y3b0j" id="taepSZ9rAX" role="YeSDq">
                                      <property role="2bfB8j" value="true" />
                                      <ref role="1Y3XeK" to="rk9m:6uL$bP9UH4b" resolve="FilesDelta.Visitor" />
                                      <ref role="37wK5l" to="rk9m:6uL$bP9UH4d" resolve="FilesDelta.Visitor" />
                                      <node concept="3Tm1VV" id="taepSZ9rAY" role="1B3o_S" />
                                      <node concept="3clFb_" id="taepSZ9rAZ" role="jymVt">
                                        <property role="1EzhhJ" value="false" />
                                        <property role="TrG5h" value="acceptWritten" />
                                        <node concept="10P_77" id="taepSZ9rB0" role="3clF45" />
                                        <node concept="3Tm1VV" id="taepSZ9rB1" role="1B3o_S" />
                                        <node concept="37vLTG" id="taepSZ9rB2" role="3clF46">
                                          <property role="TrG5h" value="file" />
                                          <node concept="3uibUv" id="taepSZ9rB3" role="1tU5fm">
                                            <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
                                          </node>
                                        </node>
                                        <node concept="3clFbS" id="taepSZ9rB4" role="3clF47">
                                          <node concept="3clFbF" id="taepSZ9rB5" role="3cqZAp">
                                            <node concept="2OqwBi" id="taepSZ9rB6" role="3clFbG">
                                              <node concept="37vLTw" id="3GM_nagTurm" role="2Oq$k0">
                                                <ref role="3cqZAo" node="taepSZ9r_u" resolve="writtenFiles" />
                                              </node>
                                              <node concept="TSZUe" id="taepSZ9rB8" role="2OqNvi">
                                                <node concept="37vLTw" id="2BHiRxglC6c" role="25WWJ7">
                                                  <ref role="3cqZAo" node="taepSZ9rB2" resolve="file" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="3cpWs6" id="taepSZ9rBa" role="3cqZAp">
                                            <node concept="3clFbT" id="taepSZ9rBb" role="3cqZAk">
                                              <property role="3clFbU" value="true" />
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="2AHcQZ" id="taepSZ9rBc" role="2AJF6D">
                                          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="taepSZ9rBd" role="3cqZAp">
                            <node concept="2OqwBi" id="taepSZ9rBe" role="3clFbG">
                              <node concept="2YIFZM" id="taepSZ9rBf" role="2Oq$k0">
                                <ref role="1Pybhc" to="3ju5:~FileSystem" resolve="FileSystem" />
                                <ref role="37wK5l" to="3ju5:~FileSystem.getInstance():jetbrains.mps.vfs.FileSystem" resolve="getInstance" />
                              </node>
                              <node concept="liA8E" id="taepSZ9rBg" role="2OqNvi">
                                <ref role="37wK5l" to="3ju5:~FileSystem.scheduleUpdateForWrittenFiles(java.lang.Iterable):void" resolve="scheduleUpdateForWrittenFiles" />
                                <node concept="37vLTw" id="3GM_nagTrhj" role="37wK5m">
                                  <ref role="3cqZAo" node="taepSZ9r_u" resolve="writtenFiles" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="ElOAg" id="taepSZ9rBi" role="3cqZAp">
                  <node concept="ElOhk" id="taepSZ9rBj" role="ElOA9" />
                </node>
              </node>
              <node concept="3clFbS" id="taepSZ9rBk" role="2GVbov">
                <node concept="3clFbF" id="taepSZ9rBl" role="3cqZAp">
                  <node concept="2OqwBi" id="taepSZ9rBm" role="3clFbG">
                    <node concept="EWnkA" id="taepSZ9rBn" role="2Oq$k0" />
                    <node concept="liA8E" id="taepSZ9rBo" role="2OqNvi">
                      <ref role="37wK5l" to="yyf4:~ProgressMonitor.done():void" resolve="done" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3D36IL" id="taepSZ9rBp" role="3D36I5">
        <node concept="3D27Fh" id="taepSZ9rBq" role="3D36IM">
          <ref role="3uigEE" to="fn29:17BsPLzesis" resolve="DResource" />
        </node>
      </node>
    </node>
    <node concept="15KeUm" id="72EPOrtLo_c" role="15LFul">
      <property role="TrG5h" value="cleanup" />
      <property role="3xojQC" value="true" />
      <property role="2w7fpF" value="CONSUME" />
      <node concept="15KeVb" id="72EPOrtLqmf" role="15LFui">
        <property role="3HPxAp" value="AFTER" />
        <ref role="15KeV8" node="taepSZ9r$W" resolve="reconcile" />
      </node>
      <node concept="15KeVb" id="72EPOrtLp8q" role="15LFui">
        <ref role="15KeV8" node="taepSZ9rBr" resolve="make" />
      </node>
      <node concept="2aLE7I" id="72EPOrtLo_d" role="ElM8M">
        <node concept="ElOhj" id="72EPOrtLo_e" role="2aLE7H">
          <node concept="3clFbS" id="72EPOrtLo_f" role="2VODD2">
            <node concept="2Gpval" id="72EPOrtLpdh" role="3cqZAp">
              <node concept="2GrKxI" id="72EPOrtLpdi" role="2Gsz3X">
                <property role="TrG5h" value="activity" />
              </node>
              <node concept="3clFbS" id="72EPOrtLpdj" role="2LFqv$">
                <node concept="3clFbF" id="72EPOrtLpeY" role="3cqZAp">
                  <node concept="2OqwBi" id="72EPOrtLpij" role="3clFbG">
                    <node concept="2GrUjf" id="72EPOrtLpeX" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="72EPOrtLpdi" resolve="activity" />
                    </node>
                    <node concept="liA8E" id="72EPOrtLpvU" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Runnable.run():void" resolve="run" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="ElOhk" id="72EPOrtLpdR" role="2GsD0m" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3D36IL" id="72EPOrtLoTm" role="3D36I5">
        <node concept="3D27Fh" id="72EPOrtLp0P" role="3D36IM">
          <ref role="3uigEE" to="fn29:72EPOrtLkP6" resolve="CleanupActivityResource" />
        </node>
      </node>
    </node>
    <node concept="15KeUm" id="taepSZ9rBr" role="15LFul">
      <property role="1xVfUM" value="1" />
      <property role="TrG5h" value="make" />
      <property role="2w7fpF" value="CONSUME" />
      <node concept="2aLE7I" id="taepSZ9rBs" role="ElM8M">
        <node concept="ElOhj" id="taepSZ9rBt" role="2aLE7H">
          <node concept="3clFbS" id="taepSZ9rBu" role="2VODD2" />
        </node>
        <node concept="bFUmx" id="taepSZ9rBv" role="bFwIG">
          <node concept="3clFbS" id="taepSZ9rBw" role="2VODD2">
            <node concept="3clFbJ" id="taepSZ9rBx" role="3cqZAp">
              <node concept="3clFbS" id="taepSZ9rBy" role="3clFbx">
                <node concept="3clFbF" id="taepSZ9rBz" role="3cqZAp">
                  <node concept="37vLTI" id="taepSZ9rB$" role="3clFbG">
                    <node concept="1aIXbY" id="taepSZ9rB_" role="37vLTJ">
                      <node concept="1aIXbZ" id="taepSZ9rBA" role="2Oq$k0" />
                      <node concept="2sxana" id="taepSZ9rBB" role="2OqNvi">
                        <ref role="2sxfKC" node="taepSZ9rBV" resolve="pathToFile" />
                      </node>
                    </node>
                    <node concept="1bVj0M" id="taepSZ9rBC" role="37vLTx">
                      <node concept="37vLTG" id="taepSZ9rBD" role="1bW2Oz">
                        <property role="TrG5h" value="p" />
                        <node concept="17QB3L" id="taepSZ9rBE" role="1tU5fm" />
                      </node>
                      <node concept="3clFbS" id="taepSZ9rBF" role="1bW5cS">
                        <node concept="3clFbF" id="taepSZ9rBG" role="3cqZAp">
                          <node concept="2OqwBi" id="taepSZ9rBH" role="3clFbG">
                            <node concept="2YIFZM" id="taepSZ9rBI" role="2Oq$k0">
                              <ref role="37wK5l" to="3ju5:~FileSystem.getInstance():jetbrains.mps.vfs.FileSystem" resolve="getInstance" />
                              <ref role="1Pybhc" to="3ju5:~FileSystem" resolve="FileSystem" />
                            </node>
                            <node concept="liA8E" id="taepSZ9rBJ" role="2OqNvi">
                              <ref role="37wK5l" to="3ju5:~FileSystem.getFileByPath(java.lang.String):jetbrains.mps.vfs.IFile" resolve="getFileByPath" />
                              <node concept="37vLTw" id="2BHiRxgm7r_" role="37wK5m">
                                <ref role="3cqZAo" node="taepSZ9rBD" resolve="p" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbC" id="taepSZ9rBL" role="3clFbw">
                <node concept="10Nm6u" id="taepSZ9rBM" role="3uHU7w" />
                <node concept="1aIXbY" id="taepSZ9rBN" role="3uHU7B">
                  <node concept="1aIXbZ" id="taepSZ9rBO" role="2Oq$k0" />
                  <node concept="2sxana" id="taepSZ9rBP" role="2OqNvi">
                    <ref role="2sxfKC" node="taepSZ9rBV" resolve="pathToFile" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="15KeVb" id="taepSZ9rBQ" role="15LFui">
        <property role="3HPxAp" value="AFTER" />
        <ref role="15KeV8" node="taepSZ9r$W" resolve="reconcile" />
      </node>
      <node concept="15KeVb" id="72EPOrtLpaR" role="15LFui">
        <property role="3HPxAp" value="AFTER" />
        <ref role="15KeV8" node="72EPOrtLo_c" resolve="cleanup" />
      </node>
      <node concept="3D36IL" id="taepSZ9rBR" role="3D36I5">
        <node concept="3D27Fh" id="taepSZ9rBS" role="3D36IM">
          <ref role="3uigEE" to="yo81:5mqBoD3U3WC" resolve="IResource" />
        </node>
      </node>
      <node concept="1aIAsN" id="taepSZ9rBT" role="1aI7mi">
        <property role="TrG5h" value="Parameters" />
        <node concept="3Tm1VV" id="taepSZ9rBU" role="1B3o_S" />
        <node concept="2lGYhJ" id="taepSZ9rBV" role="2pHZQ9">
          <property role="3dDGau" value="false" />
          <property role="TrG5h" value="pathToFile" />
          <node concept="1ajhzC" id="taepSZ9rBW" role="2lK19J">
            <node concept="17QB3L" id="taepSZ9rBX" role="1ajw0F" />
            <node concept="3uibUv" id="taepSZ9rBY" role="1ajl9A">
              <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="1PwNLcbNzEv">
    <property role="TrG5h" value="MPSMake" />
    <node concept="312cEg" id="1PwNLcbO04w" role="jymVt">
      <property role="TrG5h" value="myLanguageRegistry" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1PwNLcbO04x" role="1B3o_S" />
      <node concept="3uibUv" id="1PwNLcbO04z" role="1tU5fm">
        <ref role="3uigEE" to="vndm:~LanguageRegistry" resolve="LanguageRegistry" />
      </node>
    </node>
    <node concept="312cEg" id="1LibDRnL4OZ" role="jymVt">
      <property role="TrG5h" value="myMakeServiceComponent" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="1LibDRnL4P0" role="1B3o_S" />
      <node concept="3uibUv" id="1LibDRnL4w0" role="1tU5fm">
        <ref role="3uigEE" to="hfuk:4QUA3Sqts3M" resolve="MakeServiceComponent" />
      </node>
    </node>
    <node concept="312cEg" id="YDT75BqTsn" role="jymVt">
      <property role="TrG5h" value="myFacetRegistry" />
      <node concept="3Tm6S6" id="YDT75BqTsl" role="1B3o_S" />
      <node concept="3uibUv" id="YDT75BqTsm" role="1tU5fm">
        <ref role="3uigEE" to="ud0o:5mqBoD3U4oX" resolve="FacetRegistry" />
      </node>
    </node>
    <node concept="2tJIrI" id="1PwNLcbNZUy" role="jymVt" />
    <node concept="3clFbW" id="1PwNLcbO00J" role="jymVt">
      <node concept="3cqZAl" id="1PwNLcbO00K" role="3clF45" />
      <node concept="3clFbS" id="1PwNLcbO00M" role="3clF47">
        <node concept="3clFbF" id="1PwNLcbO04$" role="3cqZAp">
          <node concept="37vLTI" id="1PwNLcbO04A" role="3clFbG">
            <node concept="37vLTw" id="1PwNLcbO04D" role="37vLTJ">
              <ref role="3cqZAo" node="1PwNLcbO04w" resolve="myLanguageRegistry" />
            </node>
            <node concept="37vLTw" id="1PwNLcbO04E" role="37vLTx">
              <ref role="3cqZAo" node="1PwNLcbO02H" resolve="languageRegistry" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1PwNLcbNZWO" role="1B3o_S" />
      <node concept="37vLTG" id="1PwNLcbO02H" role="3clF46">
        <property role="TrG5h" value="languageRegistry" />
        <node concept="3uibUv" id="1PwNLcbO02G" role="1tU5fm">
          <ref role="3uigEE" to="vndm:~LanguageRegistry" resolve="LanguageRegistry" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1PwNLcbNzFj" role="jymVt" />
    <node concept="3clFb_" id="1PwNLcbNzFu" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="init" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="1PwNLcbNzFv" role="1B3o_S" />
      <node concept="3cqZAl" id="1PwNLcbNzFx" role="3clF45" />
      <node concept="3clFbS" id="1PwNLcbNzFy" role="3clF47">
        <node concept="3clFbF" id="1LibDRnL4$X" role="3cqZAp">
          <node concept="37vLTI" id="1LibDRnL4$Z" role="3clFbG">
            <node concept="1rXfSq" id="1LibDRnL4w3" role="37vLTx">
              <ref role="37wK5l" to="wyuk:~ComponentPlugin.init(jetbrains.mps.components.CoreComponent):jetbrains.mps.components.CoreComponent" resolve="init" />
              <node concept="2ShNRf" id="1LibDRnL4w4" role="37wK5m">
                <node concept="1pGfFk" id="1LibDRnL4w5" role="2ShVmc">
                  <ref role="37wK5l" to="hfuk:4QUA3SqtAAl" resolve="MakeServiceComponent" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="1LibDRnL4Xt" role="37vLTJ">
              <ref role="3cqZAo" node="1LibDRnL4OZ" resolve="myMakeServiceComponent" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="YDT75BqRwK" role="3cqZAp">
          <node concept="37vLTI" id="YDT75BqRwM" role="3clFbG">
            <node concept="1rXfSq" id="1PwNLcbO0Q_" role="37vLTx">
              <ref role="37wK5l" to="wyuk:~ComponentPlugin.init(jetbrains.mps.components.CoreComponent):jetbrains.mps.components.CoreComponent" resolve="init" />
              <node concept="2ShNRf" id="1PwNLcbO0QA" role="37wK5m">
                <node concept="1pGfFk" id="1PwNLcbO0QB" role="2ShVmc">
                  <ref role="37wK5l" to="ud0o:1PwNLcbNHCz" resolve="FacetRegistry" />
                  <node concept="37vLTw" id="1PwNLcbO0QC" role="37wK5m">
                    <ref role="3cqZAo" node="1PwNLcbO04w" resolve="myLanguageRegistry" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="YDT75BqU59" role="37vLTJ">
              <ref role="3cqZAo" node="YDT75BqTsn" resolve="myFacetRegistry" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1PwNLcbNzK9" role="3cqZAp">
          <node concept="1rXfSq" id="1PwNLcbNzK7" role="3clFbG">
            <ref role="37wK5l" to="wyuk:~ComponentPlugin.init(jetbrains.mps.components.CoreComponent):jetbrains.mps.components.CoreComponent" resolve="init" />
            <node concept="2ShNRf" id="1PwNLcbNzLC" role="37wK5m">
              <node concept="1pGfFk" id="1PwNLcbN$8R" role="2ShVmc">
                <ref role="37wK5l" node="1PwNLcbMO5S" resolve="BootstrapMakeFacets" />
                <node concept="37vLTw" id="YDT75BqUf5" role="37wK5m">
                  <ref role="3cqZAo" node="YDT75BqTsn" resolve="myFacetRegistry" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1PwNLcbNzFz" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1LibDRnKMuw" role="jymVt" />
    <node concept="2tJIrI" id="1LibDRnKMv6" role="jymVt" />
    <node concept="3clFb_" id="1LibDRnKMyV" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="findComponent" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="1LibDRnKMyW" role="1B3o_S" />
      <node concept="2AHcQZ" id="1LibDRnKMyY" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="16euLQ" id="1LibDRnKMyZ" role="16eVyc">
        <property role="TrG5h" value="T" />
        <node concept="3uibUv" id="1LibDRnL_DB" role="3ztrMU">
          <ref role="3uigEE" to="wyuk:~CoreComponent" resolve="CoreComponent" />
        </node>
      </node>
      <node concept="16syzq" id="1LibDRnKMz1" role="3clF45">
        <ref role="16sUi3" node="1LibDRnKMyZ" resolve="T" />
      </node>
      <node concept="37vLTG" id="1LibDRnKMz2" role="3clF46">
        <property role="TrG5h" value="aClass" />
        <node concept="3uibUv" id="1LibDRnKMz3" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
          <node concept="16syzq" id="1LibDRnKMz4" role="11_B2D">
            <ref role="16sUi3" node="1LibDRnKMyZ" resolve="T" />
          </node>
        </node>
        <node concept="2AHcQZ" id="1LibDRnKMz5" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="1LibDRnKMz7" role="3clF47">
        <node concept="3clFbJ" id="1LibDRnKMJw" role="3cqZAp">
          <node concept="3clFbC" id="1LibDRnKNsU" role="3clFbw">
            <node concept="3VsKOn" id="1LibDRnKNy3" role="3uHU7w">
              <ref role="3VsUkX" to="hfuk:4QUA3Sqts3M" resolve="MakeServiceComponent" />
            </node>
            <node concept="37vLTw" id="1LibDRnKMK5" role="3uHU7B">
              <ref role="3cqZAo" node="1LibDRnKMz2" resolve="aClass" />
            </node>
          </node>
          <node concept="3clFbS" id="1LibDRnKMJy" role="3clFbx">
            <node concept="3cpWs6" id="1LibDRnL53J" role="3cqZAp">
              <node concept="2OqwBi" id="1LibDRnL5Le" role="3cqZAk">
                <node concept="37vLTw" id="1LibDRnL5u1" role="2Oq$k0">
                  <ref role="3cqZAo" node="1LibDRnKMz2" resolve="aClass" />
                </node>
                <node concept="liA8E" id="1LibDRnL63K" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Class.cast(java.lang.Object):java.lang.Object" resolve="cast" />
                  <node concept="37vLTw" id="1LibDRnL6eX" role="37wK5m">
                    <ref role="3cqZAo" node="1LibDRnL4OZ" resolve="myMakeServiceComponent" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="YDT75BqUvT" role="3cqZAp">
          <node concept="3clFbS" id="YDT75BqUvV" role="3clFbx">
            <node concept="3cpWs6" id="YDT75BqV7S" role="3cqZAp">
              <node concept="2OqwBi" id="YDT75BqVu$" role="3cqZAk">
                <node concept="37vLTw" id="YDT75BqV8u" role="2Oq$k0">
                  <ref role="3cqZAo" node="1LibDRnKMz2" resolve="aClass" />
                </node>
                <node concept="liA8E" id="YDT75BqVXO" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Class.cast(java.lang.Object):java.lang.Object" resolve="cast" />
                  <node concept="37vLTw" id="YDT75BqWcr" role="37wK5m">
                    <ref role="3cqZAo" node="YDT75BqTsn" resolve="myFacetRegistry" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="YDT75BqV2r" role="3clFbw">
            <node concept="3VsKOn" id="YDT75BqV6S" role="3uHU7w">
              <ref role="3VsUkX" to="ud0o:5mqBoD3U4oX" resolve="FacetRegistry" />
            </node>
            <node concept="37vLTw" id="YDT75BqUED" role="3uHU7B">
              <ref role="3cqZAo" node="1LibDRnKMz2" resolve="aClass" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="1LibDRnL6NS" role="3cqZAp">
          <node concept="3SKdUq" id="1LibDRnL6NU" role="3SKWNk">
            <property role="3SKdUp" value="I don't expose other core components unless there's need to." />
          </node>
        </node>
        <node concept="3cpWs6" id="1LibDRnL5kr" role="3cqZAp">
          <node concept="10Nm6u" id="1LibDRnL5kT" role="3cqZAk" />
        </node>
      </node>
      <node concept="2AHcQZ" id="1LibDRnKMz8" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3Tm1VV" id="1PwNLcbNzEw" role="1B3o_S" />
    <node concept="3uibUv" id="1PwNLcbNzFe" role="1zkMxy">
      <ref role="3uigEE" to="wyuk:~ComponentPlugin" resolve="ComponentPlugin" />
    </node>
    <node concept="3uibUv" id="1LibDRnKMrb" role="EKbjA">
      <ref role="3uigEE" to="wyuk:~ComponentHost" resolve="ComponentHost" />
    </node>
  </node>
</model>

