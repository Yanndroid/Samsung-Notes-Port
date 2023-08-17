.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideSize;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideSize$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideSize;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->typeSystemForClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    const-string v1, "ctslidesizeb0fdtype"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideSize;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getCx()I
.end method

.method public abstract getCy()I
.end method

.method public abstract getType()Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;
.end method

.method public abstract isSetType()Z
.end method

.method public abstract setCx(I)V
.end method

.method public abstract setCy(I)V
.end method

.method public abstract setType(Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;)V
.end method

.method public abstract unsetType()V
.end method

.method public abstract xgetCx()Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeCoordinate;
.end method

.method public abstract xgetCy()Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeCoordinate;
.end method

.method public abstract xgetType()Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType;
.end method

.method public abstract xsetCx(Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeCoordinate;)V
.end method

.method public abstract xsetCy(Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeCoordinate;)V
.end method

.method public abstract xsetType(Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType;)V
.end method
