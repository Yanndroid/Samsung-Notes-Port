.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextAutonumberBullet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextAutonumberBullet$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextAutonumberBullet;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->typeSystemForClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    const-string v1, "cttextautonumberbulletd602type"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextAutonumberBullet;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getStartAt()I
.end method

.method public abstract getType()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAutonumberScheme$Enum;
.end method

.method public abstract isSetStartAt()Z
.end method

.method public abstract setStartAt(I)V
.end method

.method public abstract setType(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAutonumberScheme$Enum;)V
.end method

.method public abstract unsetStartAt()V
.end method

.method public abstract xgetStartAt()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextBulletStartAtNum;
.end method

.method public abstract xgetType()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAutonumberScheme;
.end method

.method public abstract xsetStartAt(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextBulletStartAtNum;)V
.end method

.method public abstract xsetType(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAutonumberScheme;)V
.end method
