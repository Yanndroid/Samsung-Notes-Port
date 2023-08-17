.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->typeSystemForClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    const-string v1, "cttablecell3ac1type"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract addNewTcPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;
.end method

.method public abstract addNewTxBody()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract getGridSpan()I
.end method

.method public abstract getHMerge()Z
.end method

.method public abstract getRowSpan()I
.end method

.method public abstract getTcPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;
.end method

.method public abstract getTxBody()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;
.end method

.method public abstract getVMerge()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetGridSpan()Z
.end method

.method public abstract isSetHMerge()Z
.end method

.method public abstract isSetRowSpan()Z
.end method

.method public abstract isSetTcPr()Z
.end method

.method public abstract isSetTxBody()Z
.end method

.method public abstract isSetVMerge()Z
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;)V
.end method

.method public abstract setGridSpan(I)V
.end method

.method public abstract setHMerge(Z)V
.end method

.method public abstract setRowSpan(I)V
.end method

.method public abstract setTcPr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;)V
.end method

.method public abstract setTxBody(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;)V
.end method

.method public abstract setVMerge(Z)V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetGridSpan()V
.end method

.method public abstract unsetHMerge()V
.end method

.method public abstract unsetRowSpan()V
.end method

.method public abstract unsetTcPr()V
.end method

.method public abstract unsetTxBody()V
.end method

.method public abstract unsetVMerge()V
.end method

.method public abstract xgetGridSpan()Lorg/apache/xmlbeans/XmlInt;
.end method

.method public abstract xgetHMerge()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetRowSpan()Lorg/apache/xmlbeans/XmlInt;
.end method

.method public abstract xgetVMerge()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xsetGridSpan(Lorg/apache/xmlbeans/XmlInt;)V
.end method

.method public abstract xsetHMerge(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetRowSpan(Lorg/apache/xmlbeans/XmlInt;)V
.end method

.method public abstract xsetVMerge(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method
