.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStop;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStop$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStop;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->typeSystemForClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    const-string v1, "cttexttabstopb57btype"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStop;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getAlgn()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextTabAlignType$Enum;
.end method

.method public abstract getPos()I
.end method

.method public abstract isSetAlgn()Z
.end method

.method public abstract isSetPos()Z
.end method

.method public abstract setAlgn(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextTabAlignType$Enum;)V
.end method

.method public abstract setPos(I)V
.end method

.method public abstract unsetAlgn()V
.end method

.method public abstract unsetPos()V
.end method

.method public abstract xgetAlgn()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextTabAlignType;
.end method

.method public abstract xgetPos()Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate32;
.end method

.method public abstract xsetAlgn(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextTabAlignType;)V
.end method

.method public abstract xsetPos(Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate32;)V
.end method
