.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->typeSystemForClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    const-string v1, "ctlineendproperties8acbtype"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getLen()Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndLength$Enum;
.end method

.method public abstract getType()Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndType$Enum;
.end method

.method public abstract getW()Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndWidth$Enum;
.end method

.method public abstract isSetLen()Z
.end method

.method public abstract isSetType()Z
.end method

.method public abstract isSetW()Z
.end method

.method public abstract setLen(Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndLength$Enum;)V
.end method

.method public abstract setType(Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndType$Enum;)V
.end method

.method public abstract setW(Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndWidth$Enum;)V
.end method

.method public abstract unsetLen()V
.end method

.method public abstract unsetType()V
.end method

.method public abstract unsetW()V
.end method

.method public abstract xgetLen()Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndLength;
.end method

.method public abstract xgetType()Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndType;
.end method

.method public abstract xgetW()Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndWidth;
.end method

.method public abstract xsetLen(Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndLength;)V
.end method

.method public abstract xsetType(Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndType;)V
.end method

.method public abstract xsetW(Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndWidth;)V
.end method
