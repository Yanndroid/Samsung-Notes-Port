.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->typeSystemForClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    const-string v1, "cttablepartstylef22btype"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewTcStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyleCellStyle;
.end method

.method public abstract addNewTcTxStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyleTextStyle;
.end method

.method public abstract getTcStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyleCellStyle;
.end method

.method public abstract getTcTxStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyleTextStyle;
.end method

.method public abstract isSetTcStyle()Z
.end method

.method public abstract isSetTcTxStyle()Z
.end method

.method public abstract setTcStyle(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyleCellStyle;)V
.end method

.method public abstract setTcTxStyle(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyleTextStyle;)V
.end method

.method public abstract unsetTcStyle()V
.end method

.method public abstract unsetTcTxStyle()V
.end method
