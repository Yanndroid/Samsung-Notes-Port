.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->typeSystemForClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    const-string v1, "cttablecellproperties1614type"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewBlipFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;
.end method

.method public abstract addNewCell3D()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCell3D;
.end method

.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract addNewGradFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;
.end method

.method public abstract addNewGrpFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupFillProperties;
.end method

.method public abstract addNewLnB()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;
.end method

.method public abstract addNewLnBlToTr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;
.end method

.method public abstract addNewLnL()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;
.end method

.method public abstract addNewLnR()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;
.end method

.method public abstract addNewLnT()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;
.end method

.method public abstract addNewLnTlToBr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;
.end method

.method public abstract addNewNoFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;
.end method

.method public abstract addNewPattFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;
.end method

.method public abstract addNewSolidFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;
.end method

.method public abstract getAnchor()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAnchoringType$Enum;
.end method

.method public abstract getAnchorCtr()Z
.end method

.method public abstract getBlipFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;
.end method

.method public abstract getCell3D()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCell3D;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract getGradFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;
.end method

.method public abstract getGrpFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupFillProperties;
.end method

.method public abstract getHorzOverflow()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextHorzOverflowType$Enum;
.end method

.method public abstract getLnB()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;
.end method

.method public abstract getLnBlToTr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;
.end method

.method public abstract getLnL()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;
.end method

.method public abstract getLnR()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;
.end method

.method public abstract getLnT()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;
.end method

.method public abstract getLnTlToBr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;
.end method

.method public abstract getMarB()I
.end method

.method public abstract getMarL()I
.end method

.method public abstract getMarR()I
.end method

.method public abstract getMarT()I
.end method

.method public abstract getNoFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;
.end method

.method public abstract getPattFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;
.end method

.method public abstract getSolidFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;
.end method

.method public abstract getVert()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;
.end method

.method public abstract isSetAnchor()Z
.end method

.method public abstract isSetAnchorCtr()Z
.end method

.method public abstract isSetBlipFill()Z
.end method

.method public abstract isSetCell3D()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetGradFill()Z
.end method

.method public abstract isSetGrpFill()Z
.end method

.method public abstract isSetHorzOverflow()Z
.end method

.method public abstract isSetLnB()Z
.end method

.method public abstract isSetLnBlToTr()Z
.end method

.method public abstract isSetLnL()Z
.end method

.method public abstract isSetLnR()Z
.end method

.method public abstract isSetLnT()Z
.end method

.method public abstract isSetLnTlToBr()Z
.end method

.method public abstract isSetMarB()Z
.end method

.method public abstract isSetMarL()Z
.end method

.method public abstract isSetMarR()Z
.end method

.method public abstract isSetMarT()Z
.end method

.method public abstract isSetNoFill()Z
.end method

.method public abstract isSetPattFill()Z
.end method

.method public abstract isSetSolidFill()Z
.end method

.method public abstract isSetVert()Z
.end method

.method public abstract setAnchor(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAnchoringType$Enum;)V
.end method

.method public abstract setAnchorCtr(Z)V
.end method

.method public abstract setBlipFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;)V
.end method

.method public abstract setCell3D(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCell3D;)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;)V
.end method

.method public abstract setGradFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;)V
.end method

.method public abstract setGrpFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupFillProperties;)V
.end method

.method public abstract setHorzOverflow(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextHorzOverflowType$Enum;)V
.end method

.method public abstract setLnB(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;)V
.end method

.method public abstract setLnBlToTr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;)V
.end method

.method public abstract setLnL(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;)V
.end method

.method public abstract setLnR(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;)V
.end method

.method public abstract setLnT(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;)V
.end method

.method public abstract setLnTlToBr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;)V
.end method

.method public abstract setMarB(I)V
.end method

.method public abstract setMarL(I)V
.end method

.method public abstract setMarR(I)V
.end method

.method public abstract setMarT(I)V
.end method

.method public abstract setNoFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;)V
.end method

.method public abstract setPattFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;)V
.end method

.method public abstract setSolidFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;)V
.end method

.method public abstract setVert(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;)V
.end method

.method public abstract unsetAnchor()V
.end method

.method public abstract unsetAnchorCtr()V
.end method

.method public abstract unsetBlipFill()V
.end method

.method public abstract unsetCell3D()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetGradFill()V
.end method

.method public abstract unsetGrpFill()V
.end method

.method public abstract unsetHorzOverflow()V
.end method

.method public abstract unsetLnB()V
.end method

.method public abstract unsetLnBlToTr()V
.end method

.method public abstract unsetLnL()V
.end method

.method public abstract unsetLnR()V
.end method

.method public abstract unsetLnT()V
.end method

.method public abstract unsetLnTlToBr()V
.end method

.method public abstract unsetMarB()V
.end method

.method public abstract unsetMarL()V
.end method

.method public abstract unsetMarR()V
.end method

.method public abstract unsetMarT()V
.end method

.method public abstract unsetNoFill()V
.end method

.method public abstract unsetPattFill()V
.end method

.method public abstract unsetSolidFill()V
.end method

.method public abstract unsetVert()V
.end method

.method public abstract xgetAnchor()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAnchoringType;
.end method

.method public abstract xgetAnchorCtr()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetHorzOverflow()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextHorzOverflowType;
.end method

.method public abstract xgetMarB()Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate32;
.end method

.method public abstract xgetMarL()Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate32;
.end method

.method public abstract xgetMarR()Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate32;
.end method

.method public abstract xgetMarT()Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate32;
.end method

.method public abstract xgetVert()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType;
.end method

.method public abstract xsetAnchor(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAnchoringType;)V
.end method

.method public abstract xsetAnchorCtr(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetHorzOverflow(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextHorzOverflowType;)V
.end method

.method public abstract xsetMarB(Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate32;)V
.end method

.method public abstract xsetMarL(Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate32;)V
.end method

.method public abstract xsetMarR(Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate32;)V
.end method

.method public abstract xsetMarT(Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate32;)V
.end method

.method public abstract xsetVert(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType;)V
.end method
