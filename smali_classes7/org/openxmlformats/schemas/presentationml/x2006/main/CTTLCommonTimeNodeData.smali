.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLCommonTimeNodeData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLCommonTimeNodeData$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLCommonTimeNodeData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->typeSystemForClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    const-string v1, "cttlcommontimenodedatac8e9type"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLCommonTimeNodeData;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewChildTnLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTimeNodeList;
.end method

.method public abstract addNewEndCondLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeConditionList;
.end method

.method public abstract addNewEndSync()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeCondition;
.end method

.method public abstract addNewIterate()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLIterateData;
.end method

.method public abstract addNewStCondLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeConditionList;
.end method

.method public abstract addNewSubTnLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTimeNodeList;
.end method

.method public abstract getAccel()I
.end method

.method public abstract getAfterEffect()Z
.end method

.method public abstract getAutoRev()Z
.end method

.method public abstract getBldLvl()I
.end method

.method public abstract getChildTnLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTimeNodeList;
.end method

.method public abstract getDecel()I
.end method

.method public abstract getDisplay()Z
.end method

.method public abstract getDur()Ljava/lang/Object;
.end method

.method public abstract getEndCondLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeConditionList;
.end method

.method public abstract getEndSync()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeCondition;
.end method

.method public abstract getEvtFilter()Ljava/lang/String;
.end method

.method public abstract getFill()Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeFillType$Enum;
.end method

.method public abstract getGrpId()J
.end method

.method public abstract getId()J
.end method

.method public abstract getIterate()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLIterateData;
.end method

.method public abstract getMasterRel()Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeMasterRelation$Enum;
.end method

.method public abstract getNodePh()Z
.end method

.method public abstract getNodeType()Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeType$Enum;
.end method

.method public abstract getPresetClass()Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodePresetClassType$Enum;
.end method

.method public abstract getPresetID()I
.end method

.method public abstract getPresetSubtype()I
.end method

.method public abstract getRepeatCount()Ljava/lang/Object;
.end method

.method public abstract getRepeatDur()Ljava/lang/Object;
.end method

.method public abstract getRestart()Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeRestartType$Enum;
.end method

.method public abstract getSpd()I
.end method

.method public abstract getStCondLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeConditionList;
.end method

.method public abstract getSubTnLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTimeNodeList;
.end method

.method public abstract getSyncBehavior()Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeSyncType$Enum;
.end method

.method public abstract getTmFilter()Ljava/lang/String;
.end method

.method public abstract isSetAccel()Z
.end method

.method public abstract isSetAfterEffect()Z
.end method

.method public abstract isSetAutoRev()Z
.end method

.method public abstract isSetBldLvl()Z
.end method

.method public abstract isSetChildTnLst()Z
.end method

.method public abstract isSetDecel()Z
.end method

.method public abstract isSetDisplay()Z
.end method

.method public abstract isSetDur()Z
.end method

.method public abstract isSetEndCondLst()Z
.end method

.method public abstract isSetEndSync()Z
.end method

.method public abstract isSetEvtFilter()Z
.end method

.method public abstract isSetFill()Z
.end method

.method public abstract isSetGrpId()Z
.end method

.method public abstract isSetId()Z
.end method

.method public abstract isSetIterate()Z
.end method

.method public abstract isSetMasterRel()Z
.end method

.method public abstract isSetNodePh()Z
.end method

.method public abstract isSetNodeType()Z
.end method

.method public abstract isSetPresetClass()Z
.end method

.method public abstract isSetPresetID()Z
.end method

.method public abstract isSetPresetSubtype()Z
.end method

.method public abstract isSetRepeatCount()Z
.end method

.method public abstract isSetRepeatDur()Z
.end method

.method public abstract isSetRestart()Z
.end method

.method public abstract isSetSpd()Z
.end method

.method public abstract isSetStCondLst()Z
.end method

.method public abstract isSetSubTnLst()Z
.end method

.method public abstract isSetSyncBehavior()Z
.end method

.method public abstract isSetTmFilter()Z
.end method

.method public abstract setAccel(I)V
.end method

.method public abstract setAfterEffect(Z)V
.end method

.method public abstract setAutoRev(Z)V
.end method

.method public abstract setBldLvl(I)V
.end method

.method public abstract setChildTnLst(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTimeNodeList;)V
.end method

.method public abstract setDecel(I)V
.end method

.method public abstract setDisplay(Z)V
.end method

.method public abstract setDur(Ljava/lang/Object;)V
.end method

.method public abstract setEndCondLst(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeConditionList;)V
.end method

.method public abstract setEndSync(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeCondition;)V
.end method

.method public abstract setEvtFilter(Ljava/lang/String;)V
.end method

.method public abstract setFill(Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeFillType$Enum;)V
.end method

.method public abstract setGrpId(J)V
.end method

.method public abstract setId(J)V
.end method

.method public abstract setIterate(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLIterateData;)V
.end method

.method public abstract setMasterRel(Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeMasterRelation$Enum;)V
.end method

.method public abstract setNodePh(Z)V
.end method

.method public abstract setNodeType(Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeType$Enum;)V
.end method

.method public abstract setPresetClass(Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodePresetClassType$Enum;)V
.end method

.method public abstract setPresetID(I)V
.end method

.method public abstract setPresetSubtype(I)V
.end method

.method public abstract setRepeatCount(Ljava/lang/Object;)V
.end method

.method public abstract setRepeatDur(Ljava/lang/Object;)V
.end method

.method public abstract setRestart(Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeRestartType$Enum;)V
.end method

.method public abstract setSpd(I)V
.end method

.method public abstract setStCondLst(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeConditionList;)V
.end method

.method public abstract setSubTnLst(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTimeNodeList;)V
.end method

.method public abstract setSyncBehavior(Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeSyncType$Enum;)V
.end method

.method public abstract setTmFilter(Ljava/lang/String;)V
.end method

.method public abstract unsetAccel()V
.end method

.method public abstract unsetAfterEffect()V
.end method

.method public abstract unsetAutoRev()V
.end method

.method public abstract unsetBldLvl()V
.end method

.method public abstract unsetChildTnLst()V
.end method

.method public abstract unsetDecel()V
.end method

.method public abstract unsetDisplay()V
.end method

.method public abstract unsetDur()V
.end method

.method public abstract unsetEndCondLst()V
.end method

.method public abstract unsetEndSync()V
.end method

.method public abstract unsetEvtFilter()V
.end method

.method public abstract unsetFill()V
.end method

.method public abstract unsetGrpId()V
.end method

.method public abstract unsetId()V
.end method

.method public abstract unsetIterate()V
.end method

.method public abstract unsetMasterRel()V
.end method

.method public abstract unsetNodePh()V
.end method

.method public abstract unsetNodeType()V
.end method

.method public abstract unsetPresetClass()V
.end method

.method public abstract unsetPresetID()V
.end method

.method public abstract unsetPresetSubtype()V
.end method

.method public abstract unsetRepeatCount()V
.end method

.method public abstract unsetRepeatDur()V
.end method

.method public abstract unsetRestart()V
.end method

.method public abstract unsetSpd()V
.end method

.method public abstract unsetStCondLst()V
.end method

.method public abstract unsetSubTnLst()V
.end method

.method public abstract unsetSyncBehavior()V
.end method

.method public abstract unsetTmFilter()V
.end method

.method public abstract xgetAccel()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPositiveFixedPercentage;
.end method

.method public abstract xgetAfterEffect()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetAutoRev()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetBldLvl()Lorg/apache/xmlbeans/XmlInt;
.end method

.method public abstract xgetDecel()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPositiveFixedPercentage;
.end method

.method public abstract xgetDisplay()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetDur()Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTime;
.end method

.method public abstract xgetEvtFilter()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetFill()Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeFillType;
.end method

.method public abstract xgetGrpId()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetId()Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeID;
.end method

.method public abstract xgetMasterRel()Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeMasterRelation;
.end method

.method public abstract xgetNodePh()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetNodeType()Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeType;
.end method

.method public abstract xgetPresetClass()Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodePresetClassType;
.end method

.method public abstract xgetPresetID()Lorg/apache/xmlbeans/XmlInt;
.end method

.method public abstract xgetPresetSubtype()Lorg/apache/xmlbeans/XmlInt;
.end method

.method public abstract xgetRepeatCount()Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTime;
.end method

.method public abstract xgetRepeatDur()Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTime;
.end method

.method public abstract xgetRestart()Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeRestartType;
.end method

.method public abstract xgetSpd()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;
.end method

.method public abstract xgetSyncBehavior()Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeSyncType;
.end method

.method public abstract xgetTmFilter()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xsetAccel(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPositiveFixedPercentage;)V
.end method

.method public abstract xsetAfterEffect(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetAutoRev(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetBldLvl(Lorg/apache/xmlbeans/XmlInt;)V
.end method

.method public abstract xsetDecel(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPositiveFixedPercentage;)V
.end method

.method public abstract xsetDisplay(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetDur(Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTime;)V
.end method

.method public abstract xsetEvtFilter(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetFill(Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeFillType;)V
.end method

.method public abstract xsetGrpId(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetId(Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeID;)V
.end method

.method public abstract xsetMasterRel(Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeMasterRelation;)V
.end method

.method public abstract xsetNodePh(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetNodeType(Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeType;)V
.end method

.method public abstract xsetPresetClass(Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodePresetClassType;)V
.end method

.method public abstract xsetPresetID(Lorg/apache/xmlbeans/XmlInt;)V
.end method

.method public abstract xsetPresetSubtype(Lorg/apache/xmlbeans/XmlInt;)V
.end method

.method public abstract xsetRepeatCount(Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTime;)V
.end method

.method public abstract xsetRepeatDur(Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTime;)V
.end method

.method public abstract xsetRestart(Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeRestartType;)V
.end method

.method public abstract xsetSpd(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;)V
.end method

.method public abstract xsetSyncBehavior(Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeSyncType;)V
.end method

.method public abstract xsetTmFilter(Lorg/apache/xmlbeans/XmlString;)V
.end method
