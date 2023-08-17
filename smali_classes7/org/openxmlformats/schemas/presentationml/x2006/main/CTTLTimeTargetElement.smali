.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeTargetElement;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeTargetElement$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeTargetElement;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->typeSystemForClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    const-string v1, "cttltimetargetelementdca9type"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeTargetElement;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewInkTgt()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLSubShapeId;
.end method

.method public abstract addNewSldTgt()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmpty;
.end method

.method public abstract addNewSndTgt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEmbeddedWAVAudioFile;
.end method

.method public abstract addNewSpTgt()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLShapeTargetElement;
.end method

.method public abstract getInkTgt()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLSubShapeId;
.end method

.method public abstract getSldTgt()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmpty;
.end method

.method public abstract getSndTgt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEmbeddedWAVAudioFile;
.end method

.method public abstract getSpTgt()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLShapeTargetElement;
.end method

.method public abstract isSetInkTgt()Z
.end method

.method public abstract isSetSldTgt()Z
.end method

.method public abstract isSetSndTgt()Z
.end method

.method public abstract isSetSpTgt()Z
.end method

.method public abstract setInkTgt(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLSubShapeId;)V
.end method

.method public abstract setSldTgt(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmpty;)V
.end method

.method public abstract setSndTgt(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEmbeddedWAVAudioFile;)V
.end method

.method public abstract setSpTgt(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLShapeTargetElement;)V
.end method

.method public abstract unsetInkTgt()V
.end method

.method public abstract unsetSldTgt()V
.end method

.method public abstract unsetSndTgt()V
.end method

.method public abstract unsetSpTgt()V
.end method
