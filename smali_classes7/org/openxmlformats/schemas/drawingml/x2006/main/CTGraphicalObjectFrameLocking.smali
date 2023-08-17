.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObjectFrameLocking;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObjectFrameLocking$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObjectFrameLocking;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->typeSystemForClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    const-string v1, "ctgraphicalobjectframelocking42adtype"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObjectFrameLocking;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract getNoChangeAspect()Z
.end method

.method public abstract getNoDrilldown()Z
.end method

.method public abstract getNoGrp()Z
.end method

.method public abstract getNoMove()Z
.end method

.method public abstract getNoResize()Z
.end method

.method public abstract getNoSelect()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetNoChangeAspect()Z
.end method

.method public abstract isSetNoDrilldown()Z
.end method

.method public abstract isSetNoGrp()Z
.end method

.method public abstract isSetNoMove()Z
.end method

.method public abstract isSetNoResize()Z
.end method

.method public abstract isSetNoSelect()Z
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;)V
.end method

.method public abstract setNoChangeAspect(Z)V
.end method

.method public abstract setNoDrilldown(Z)V
.end method

.method public abstract setNoGrp(Z)V
.end method

.method public abstract setNoMove(Z)V
.end method

.method public abstract setNoResize(Z)V
.end method

.method public abstract setNoSelect(Z)V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetNoChangeAspect()V
.end method

.method public abstract unsetNoDrilldown()V
.end method

.method public abstract unsetNoGrp()V
.end method

.method public abstract unsetNoMove()V
.end method

.method public abstract unsetNoResize()V
.end method

.method public abstract unsetNoSelect()V
.end method

.method public abstract xgetNoChangeAspect()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetNoDrilldown()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetNoGrp()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetNoMove()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetNoResize()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetNoSelect()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xsetNoChangeAspect(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetNoDrilldown(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetNoGrp(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetNoMove(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetNoResize(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetNoSelect(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method
