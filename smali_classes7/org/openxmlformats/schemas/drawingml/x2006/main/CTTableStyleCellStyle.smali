.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyleCellStyle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyleCellStyle$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyleCellStyle;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->typeSystemForClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    const-string v1, "cttablestylecellstyle1fddtype"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyleCellStyle;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewCell3D()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCell3D;
.end method

.method public abstract addNewFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;
.end method

.method public abstract addNewFillRef()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;
.end method

.method public abstract addNewTcBdr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellBorderStyle;
.end method

.method public abstract getCell3D()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCell3D;
.end method

.method public abstract getFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;
.end method

.method public abstract getFillRef()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;
.end method

.method public abstract getTcBdr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellBorderStyle;
.end method

.method public abstract isSetCell3D()Z
.end method

.method public abstract isSetFill()Z
.end method

.method public abstract isSetFillRef()Z
.end method

.method public abstract isSetTcBdr()Z
.end method

.method public abstract setCell3D(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCell3D;)V
.end method

.method public abstract setFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;)V
.end method

.method public abstract setFillRef(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;)V
.end method

.method public abstract setTcBdr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellBorderStyle;)V
.end method

.method public abstract unsetCell3D()V
.end method

.method public abstract unsetFill()V
.end method

.method public abstract unsetFillRef()V
.end method

.method public abstract unsetTcBdr()V
.end method
