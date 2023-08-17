.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeCondition;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeCondition$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeCondition;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->typeSystemForClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    const-string v1, "cttltimecondition1eb9type"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeCondition;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewRtn()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTriggerRuntimeNode;
.end method

.method public abstract addNewTgtEl()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeTargetElement;
.end method

.method public abstract addNewTn()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTriggerTimeNodeID;
.end method

.method public abstract getDelay()Ljava/lang/Object;
.end method

.method public abstract getEvt()Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTriggerEvent$Enum;
.end method

.method public abstract getRtn()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTriggerRuntimeNode;
.end method

.method public abstract getTgtEl()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeTargetElement;
.end method

.method public abstract getTn()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTriggerTimeNodeID;
.end method

.method public abstract isSetDelay()Z
.end method

.method public abstract isSetEvt()Z
.end method

.method public abstract isSetRtn()Z
.end method

.method public abstract isSetTgtEl()Z
.end method

.method public abstract isSetTn()Z
.end method

.method public abstract setDelay(Ljava/lang/Object;)V
.end method

.method public abstract setEvt(Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTriggerEvent$Enum;)V
.end method

.method public abstract setRtn(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTriggerRuntimeNode;)V
.end method

.method public abstract setTgtEl(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeTargetElement;)V
.end method

.method public abstract setTn(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTriggerTimeNodeID;)V
.end method

.method public abstract unsetDelay()V
.end method

.method public abstract unsetEvt()V
.end method

.method public abstract unsetRtn()V
.end method

.method public abstract unsetTgtEl()V
.end method

.method public abstract unsetTn()V
.end method

.method public abstract xgetDelay()Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTime;
.end method

.method public abstract xgetEvt()Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTriggerEvent;
.end method

.method public abstract xsetDelay(Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTime;)V
.end method

.method public abstract xsetEvt(Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTriggerEvent;)V
.end method
