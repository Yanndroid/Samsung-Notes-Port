.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLMediaNodeVideo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLMediaNodeVideo$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLMediaNodeVideo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->typeSystemForClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    const-string v1, "cttlmedianodevideoe3f8type"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLMediaNodeVideo;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewCMediaNode()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLCommonMediaNodeData;
.end method

.method public abstract getCMediaNode()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLCommonMediaNodeData;
.end method

.method public abstract getFullScrn()Z
.end method

.method public abstract isSetFullScrn()Z
.end method

.method public abstract setCMediaNode(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLCommonMediaNodeData;)V
.end method

.method public abstract setFullScrn(Z)V
.end method

.method public abstract unsetFullScrn()V
.end method

.method public abstract xgetFullScrn()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xsetFullScrn(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method
