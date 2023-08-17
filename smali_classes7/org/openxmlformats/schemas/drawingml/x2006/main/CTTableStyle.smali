.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyle$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyle;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->typeSystemForClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    const-string v1, "cttablestyled59etype"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyle;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewBand1H()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;
.end method

.method public abstract addNewBand1V()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;
.end method

.method public abstract addNewBand2H()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;
.end method

.method public abstract addNewBand2V()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;
.end method

.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract addNewFirstCol()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;
.end method

.method public abstract addNewFirstRow()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;
.end method

.method public abstract addNewLastCol()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;
.end method

.method public abstract addNewLastRow()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;
.end method

.method public abstract addNewNeCell()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;
.end method

.method public abstract addNewNwCell()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;
.end method

.method public abstract addNewSeCell()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;
.end method

.method public abstract addNewSwCell()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;
.end method

.method public abstract addNewTblBg()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableBackgroundStyle;
.end method

.method public abstract addNewWholeTbl()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;
.end method

.method public abstract getBand1H()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;
.end method

.method public abstract getBand1V()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;
.end method

.method public abstract getBand2H()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;
.end method

.method public abstract getBand2V()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract getFirstCol()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;
.end method

.method public abstract getFirstRow()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;
.end method

.method public abstract getLastCol()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;
.end method

.method public abstract getLastRow()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;
.end method

.method public abstract getNeCell()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;
.end method

.method public abstract getNwCell()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;
.end method

.method public abstract getSeCell()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;
.end method

.method public abstract getStyleId()Ljava/lang/String;
.end method

.method public abstract getStyleName()Ljava/lang/String;
.end method

.method public abstract getSwCell()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;
.end method

.method public abstract getTblBg()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableBackgroundStyle;
.end method

.method public abstract getWholeTbl()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;
.end method

.method public abstract isSetBand1H()Z
.end method

.method public abstract isSetBand1V()Z
.end method

.method public abstract isSetBand2H()Z
.end method

.method public abstract isSetBand2V()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetFirstCol()Z
.end method

.method public abstract isSetFirstRow()Z
.end method

.method public abstract isSetLastCol()Z
.end method

.method public abstract isSetLastRow()Z
.end method

.method public abstract isSetNeCell()Z
.end method

.method public abstract isSetNwCell()Z
.end method

.method public abstract isSetSeCell()Z
.end method

.method public abstract isSetSwCell()Z
.end method

.method public abstract isSetTblBg()Z
.end method

.method public abstract isSetWholeTbl()Z
.end method

.method public abstract setBand1H(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;)V
.end method

.method public abstract setBand1V(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;)V
.end method

.method public abstract setBand2H(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;)V
.end method

.method public abstract setBand2V(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;)V
.end method

.method public abstract setFirstCol(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;)V
.end method

.method public abstract setFirstRow(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;)V
.end method

.method public abstract setLastCol(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;)V
.end method

.method public abstract setLastRow(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;)V
.end method

.method public abstract setNeCell(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;)V
.end method

.method public abstract setNwCell(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;)V
.end method

.method public abstract setSeCell(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;)V
.end method

.method public abstract setStyleId(Ljava/lang/String;)V
.end method

.method public abstract setStyleName(Ljava/lang/String;)V
.end method

.method public abstract setSwCell(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;)V
.end method

.method public abstract setTblBg(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableBackgroundStyle;)V
.end method

.method public abstract setWholeTbl(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;)V
.end method

.method public abstract unsetBand1H()V
.end method

.method public abstract unsetBand1V()V
.end method

.method public abstract unsetBand2H()V
.end method

.method public abstract unsetBand2V()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetFirstCol()V
.end method

.method public abstract unsetFirstRow()V
.end method

.method public abstract unsetLastCol()V
.end method

.method public abstract unsetLastRow()V
.end method

.method public abstract unsetNeCell()V
.end method

.method public abstract unsetNwCell()V
.end method

.method public abstract unsetSeCell()V
.end method

.method public abstract unsetSwCell()V
.end method

.method public abstract unsetTblBg()V
.end method

.method public abstract unsetWholeTbl()V
.end method

.method public abstract xgetStyleId()Lorg/openxmlformats/schemas/drawingml/x2006/main/STGuid;
.end method

.method public abstract xgetStyleName()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xsetStyleId(Lorg/openxmlformats/schemas/drawingml/x2006/main/STGuid;)V
.end method

.method public abstract xsetStyleName(Lorg/apache/xmlbeans/XmlString;)V
.end method
