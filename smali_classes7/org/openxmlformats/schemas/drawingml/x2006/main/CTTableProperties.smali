.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableProperties;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableProperties$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableProperties;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->typeSystemForClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    const-string v1, "cttableproperties3512type"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableProperties;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewBlipFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;
.end method

.method public abstract addNewEffectDag()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectContainer;
.end method

.method public abstract addNewEffectLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectList;
.end method

.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract addNewGradFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;
.end method

.method public abstract addNewGrpFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupFillProperties;
.end method

.method public abstract addNewNoFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;
.end method

.method public abstract addNewPattFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;
.end method

.method public abstract addNewSolidFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;
.end method

.method public abstract addNewTableStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyle;
.end method

.method public abstract getBandCol()Z
.end method

.method public abstract getBandRow()Z
.end method

.method public abstract getBlipFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;
.end method

.method public abstract getEffectDag()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectContainer;
.end method

.method public abstract getEffectLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectList;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract getFirstCol()Z
.end method

.method public abstract getFirstRow()Z
.end method

.method public abstract getGradFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;
.end method

.method public abstract getGrpFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupFillProperties;
.end method

.method public abstract getLastCol()Z
.end method

.method public abstract getLastRow()Z
.end method

.method public abstract getNoFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;
.end method

.method public abstract getPattFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;
.end method

.method public abstract getRtl()Z
.end method

.method public abstract getSolidFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;
.end method

.method public abstract getTableStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyle;
.end method

.method public abstract getTableStyleId()Ljava/lang/String;
.end method

.method public abstract isSetBandCol()Z
.end method

.method public abstract isSetBandRow()Z
.end method

.method public abstract isSetBlipFill()Z
.end method

.method public abstract isSetEffectDag()Z
.end method

.method public abstract isSetEffectLst()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetFirstCol()Z
.end method

.method public abstract isSetFirstRow()Z
.end method

.method public abstract isSetGradFill()Z
.end method

.method public abstract isSetGrpFill()Z
.end method

.method public abstract isSetLastCol()Z
.end method

.method public abstract isSetLastRow()Z
.end method

.method public abstract isSetNoFill()Z
.end method

.method public abstract isSetPattFill()Z
.end method

.method public abstract isSetRtl()Z
.end method

.method public abstract isSetSolidFill()Z
.end method

.method public abstract isSetTableStyle()Z
.end method

.method public abstract isSetTableStyleId()Z
.end method

.method public abstract setBandCol(Z)V
.end method

.method public abstract setBandRow(Z)V
.end method

.method public abstract setBlipFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;)V
.end method

.method public abstract setEffectDag(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectContainer;)V
.end method

.method public abstract setEffectLst(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectList;)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;)V
.end method

.method public abstract setFirstCol(Z)V
.end method

.method public abstract setFirstRow(Z)V
.end method

.method public abstract setGradFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;)V
.end method

.method public abstract setGrpFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupFillProperties;)V
.end method

.method public abstract setLastCol(Z)V
.end method

.method public abstract setLastRow(Z)V
.end method

.method public abstract setNoFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;)V
.end method

.method public abstract setPattFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;)V
.end method

.method public abstract setRtl(Z)V
.end method

.method public abstract setSolidFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;)V
.end method

.method public abstract setTableStyle(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyle;)V
.end method

.method public abstract setTableStyleId(Ljava/lang/String;)V
.end method

.method public abstract unsetBandCol()V
.end method

.method public abstract unsetBandRow()V
.end method

.method public abstract unsetBlipFill()V
.end method

.method public abstract unsetEffectDag()V
.end method

.method public abstract unsetEffectLst()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetFirstCol()V
.end method

.method public abstract unsetFirstRow()V
.end method

.method public abstract unsetGradFill()V
.end method

.method public abstract unsetGrpFill()V
.end method

.method public abstract unsetLastCol()V
.end method

.method public abstract unsetLastRow()V
.end method

.method public abstract unsetNoFill()V
.end method

.method public abstract unsetPattFill()V
.end method

.method public abstract unsetRtl()V
.end method

.method public abstract unsetSolidFill()V
.end method

.method public abstract unsetTableStyle()V
.end method

.method public abstract unsetTableStyleId()V
.end method

.method public abstract xgetBandCol()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetBandRow()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetFirstCol()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetFirstRow()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetLastCol()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetLastRow()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetRtl()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetTableStyleId()Lorg/openxmlformats/schemas/drawingml/x2006/main/STGuid;
.end method

.method public abstract xsetBandCol(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetBandRow(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetFirstCol(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetFirstRow(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetLastCol(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetLastRow(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetRtl(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetTableStyleId(Lorg/openxmlformats/schemas/drawingml/x2006/main/STGuid;)V
.end method
