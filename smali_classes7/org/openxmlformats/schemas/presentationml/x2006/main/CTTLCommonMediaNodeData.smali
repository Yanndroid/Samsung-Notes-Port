.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLCommonMediaNodeData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLCommonMediaNodeData$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLCommonMediaNodeData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->typeSystemForClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    const-string v1, "cttlcommonmedianodedatab6c2type"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLCommonMediaNodeData;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewCTn()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLCommonTimeNodeData;
.end method

.method public abstract addNewTgtEl()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeTargetElement;
.end method

.method public abstract getCTn()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLCommonTimeNodeData;
.end method

.method public abstract getMute()Z
.end method

.method public abstract getNumSld()J
.end method

.method public abstract getShowWhenStopped()Z
.end method

.method public abstract getTgtEl()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeTargetElement;
.end method

.method public abstract getVol()I
.end method

.method public abstract isSetMute()Z
.end method

.method public abstract isSetNumSld()Z
.end method

.method public abstract isSetShowWhenStopped()Z
.end method

.method public abstract isSetVol()Z
.end method

.method public abstract setCTn(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLCommonTimeNodeData;)V
.end method

.method public abstract setMute(Z)V
.end method

.method public abstract setNumSld(J)V
.end method

.method public abstract setShowWhenStopped(Z)V
.end method

.method public abstract setTgtEl(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeTargetElement;)V
.end method

.method public abstract setVol(I)V
.end method

.method public abstract unsetMute()V
.end method

.method public abstract unsetNumSld()V
.end method

.method public abstract unsetShowWhenStopped()V
.end method

.method public abstract unsetVol()V
.end method

.method public abstract xgetMute()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetNumSld()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetShowWhenStopped()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetVol()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPositiveFixedPercentage;
.end method

.method public abstract xsetMute(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetNumSld(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetShowWhenStopped(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetVol(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPositiveFixedPercentage;)V
.end method
