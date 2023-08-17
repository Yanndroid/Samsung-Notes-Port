.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->typeSystemForClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    const-string v1, "cttextbodyproperties87ddtype"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract addNewFlatTx()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFlatText;
.end method

.method public abstract addNewNoAutofit()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNoAutofit;
.end method

.method public abstract addNewNormAutofit()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNormalAutofit;
.end method

.method public abstract addNewPrstTxWarp()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetTextShape;
.end method

.method public abstract addNewScene3D()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScene3D;
.end method

.method public abstract addNewSp3D()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShape3D;
.end method

.method public abstract addNewSpAutoFit()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextShapeAutofit;
.end method

.method public abstract getAnchor()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAnchoringType$Enum;
.end method

.method public abstract getAnchorCtr()Z
.end method

.method public abstract getBIns()I
.end method

.method public abstract getCompatLnSpc()Z
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract getFlatTx()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFlatText;
.end method

.method public abstract getForceAA()Z
.end method

.method public abstract getFromWordArt()Z
.end method

.method public abstract getHorzOverflow()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextHorzOverflowType$Enum;
.end method

.method public abstract getLIns()I
.end method

.method public abstract getNoAutofit()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNoAutofit;
.end method

.method public abstract getNormAutofit()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNormalAutofit;
.end method

.method public abstract getNumCol()I
.end method

.method public abstract getPrstTxWarp()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetTextShape;
.end method

.method public abstract getRIns()I
.end method

.method public abstract getRot()I
.end method

.method public abstract getRtlCol()Z
.end method

.method public abstract getScene3D()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScene3D;
.end method

.method public abstract getSp3D()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShape3D;
.end method

.method public abstract getSpAutoFit()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextShapeAutofit;
.end method

.method public abstract getSpcCol()I
.end method

.method public abstract getSpcFirstLastPara()Z
.end method

.method public abstract getTIns()I
.end method

.method public abstract getUpright()Z
.end method

.method public abstract getVert()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;
.end method

.method public abstract getVertOverflow()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVertOverflowType$Enum;
.end method

.method public abstract getWrap()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextWrappingType$Enum;
.end method

.method public abstract isSetAnchor()Z
.end method

.method public abstract isSetAnchorCtr()Z
.end method

.method public abstract isSetBIns()Z
.end method

.method public abstract isSetCompatLnSpc()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetFlatTx()Z
.end method

.method public abstract isSetForceAA()Z
.end method

.method public abstract isSetFromWordArt()Z
.end method

.method public abstract isSetHorzOverflow()Z
.end method

.method public abstract isSetLIns()Z
.end method

.method public abstract isSetNoAutofit()Z
.end method

.method public abstract isSetNormAutofit()Z
.end method

.method public abstract isSetNumCol()Z
.end method

.method public abstract isSetPrstTxWarp()Z
.end method

.method public abstract isSetRIns()Z
.end method

.method public abstract isSetRot()Z
.end method

.method public abstract isSetRtlCol()Z
.end method

.method public abstract isSetScene3D()Z
.end method

.method public abstract isSetSp3D()Z
.end method

.method public abstract isSetSpAutoFit()Z
.end method

.method public abstract isSetSpcCol()Z
.end method

.method public abstract isSetSpcFirstLastPara()Z
.end method

.method public abstract isSetTIns()Z
.end method

.method public abstract isSetUpright()Z
.end method

.method public abstract isSetVert()Z
.end method

.method public abstract isSetVertOverflow()Z
.end method

.method public abstract isSetWrap()Z
.end method

.method public abstract setAnchor(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAnchoringType$Enum;)V
.end method

.method public abstract setAnchorCtr(Z)V
.end method

.method public abstract setBIns(I)V
.end method

.method public abstract setCompatLnSpc(Z)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;)V
.end method

.method public abstract setFlatTx(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFlatText;)V
.end method

.method public abstract setForceAA(Z)V
.end method

.method public abstract setFromWordArt(Z)V
.end method

.method public abstract setHorzOverflow(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextHorzOverflowType$Enum;)V
.end method

.method public abstract setLIns(I)V
.end method

.method public abstract setNoAutofit(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNoAutofit;)V
.end method

.method public abstract setNormAutofit(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNormalAutofit;)V
.end method

.method public abstract setNumCol(I)V
.end method

.method public abstract setPrstTxWarp(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetTextShape;)V
.end method

.method public abstract setRIns(I)V
.end method

.method public abstract setRot(I)V
.end method

.method public abstract setRtlCol(Z)V
.end method

.method public abstract setScene3D(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScene3D;)V
.end method

.method public abstract setSp3D(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShape3D;)V
.end method

.method public abstract setSpAutoFit(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextShapeAutofit;)V
.end method

.method public abstract setSpcCol(I)V
.end method

.method public abstract setSpcFirstLastPara(Z)V
.end method

.method public abstract setTIns(I)V
.end method

.method public abstract setUpright(Z)V
.end method

.method public abstract setVert(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;)V
.end method

.method public abstract setVertOverflow(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVertOverflowType$Enum;)V
.end method

.method public abstract setWrap(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextWrappingType$Enum;)V
.end method

.method public abstract unsetAnchor()V
.end method

.method public abstract unsetAnchorCtr()V
.end method

.method public abstract unsetBIns()V
.end method

.method public abstract unsetCompatLnSpc()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetFlatTx()V
.end method

.method public abstract unsetForceAA()V
.end method

.method public abstract unsetFromWordArt()V
.end method

.method public abstract unsetHorzOverflow()V
.end method

.method public abstract unsetLIns()V
.end method

.method public abstract unsetNoAutofit()V
.end method

.method public abstract unsetNormAutofit()V
.end method

.method public abstract unsetNumCol()V
.end method

.method public abstract unsetPrstTxWarp()V
.end method

.method public abstract unsetRIns()V
.end method

.method public abstract unsetRot()V
.end method

.method public abstract unsetRtlCol()V
.end method

.method public abstract unsetScene3D()V
.end method

.method public abstract unsetSp3D()V
.end method

.method public abstract unsetSpAutoFit()V
.end method

.method public abstract unsetSpcCol()V
.end method

.method public abstract unsetSpcFirstLastPara()V
.end method

.method public abstract unsetTIns()V
.end method

.method public abstract unsetUpright()V
.end method

.method public abstract unsetVert()V
.end method

.method public abstract unsetVertOverflow()V
.end method

.method public abstract unsetWrap()V
.end method

.method public abstract xgetAnchor()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAnchoringType;
.end method

.method public abstract xgetAnchorCtr()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetBIns()Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate32;
.end method

.method public abstract xgetCompatLnSpc()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetForceAA()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetFromWordArt()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetHorzOverflow()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextHorzOverflowType;
.end method

.method public abstract xgetLIns()Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate32;
.end method

.method public abstract xgetNumCol()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextColumnCount;
.end method

.method public abstract xgetRIns()Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate32;
.end method

.method public abstract xgetRot()Lorg/openxmlformats/schemas/drawingml/x2006/main/STAngle;
.end method

.method public abstract xgetRtlCol()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetSpcCol()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPositiveCoordinate32;
.end method

.method public abstract xgetSpcFirstLastPara()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetTIns()Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate32;
.end method

.method public abstract xgetUpright()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetVert()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType;
.end method

.method public abstract xgetVertOverflow()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVertOverflowType;
.end method

.method public abstract xgetWrap()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextWrappingType;
.end method

.method public abstract xsetAnchor(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAnchoringType;)V
.end method

.method public abstract xsetAnchorCtr(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetBIns(Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate32;)V
.end method

.method public abstract xsetCompatLnSpc(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetForceAA(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetFromWordArt(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetHorzOverflow(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextHorzOverflowType;)V
.end method

.method public abstract xsetLIns(Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate32;)V
.end method

.method public abstract xsetNumCol(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextColumnCount;)V
.end method

.method public abstract xsetRIns(Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate32;)V
.end method

.method public abstract xsetRot(Lorg/openxmlformats/schemas/drawingml/x2006/main/STAngle;)V
.end method

.method public abstract xsetRtlCol(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetSpcCol(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPositiveCoordinate32;)V
.end method

.method public abstract xsetSpcFirstLastPara(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetTIns(Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate32;)V
.end method

.method public abstract xsetUpright(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetVert(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType;)V
.end method

.method public abstract xsetVertOverflow(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVertOverflowType;)V
.end method

.method public abstract xsetWrap(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextWrappingType;)V
.end method
