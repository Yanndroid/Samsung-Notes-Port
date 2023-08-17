.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPictureLocking;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPictureLocking$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPictureLocking;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->typeSystemForClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    const-string v1, "ctpicturelockinga414type"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPictureLocking;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract getNoAdjustHandles()Z
.end method

.method public abstract getNoChangeArrowheads()Z
.end method

.method public abstract getNoChangeAspect()Z
.end method

.method public abstract getNoChangeShapeType()Z
.end method

.method public abstract getNoCrop()Z
.end method

.method public abstract getNoEditPoints()Z
.end method

.method public abstract getNoGrp()Z
.end method

.method public abstract getNoMove()Z
.end method

.method public abstract getNoResize()Z
.end method

.method public abstract getNoRot()Z
.end method

.method public abstract getNoSelect()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetNoAdjustHandles()Z
.end method

.method public abstract isSetNoChangeArrowheads()Z
.end method

.method public abstract isSetNoChangeAspect()Z
.end method

.method public abstract isSetNoChangeShapeType()Z
.end method

.method public abstract isSetNoCrop()Z
.end method

.method public abstract isSetNoEditPoints()Z
.end method

.method public abstract isSetNoGrp()Z
.end method

.method public abstract isSetNoMove()Z
.end method

.method public abstract isSetNoResize()Z
.end method

.method public abstract isSetNoRot()Z
.end method

.method public abstract isSetNoSelect()Z
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;)V
.end method

.method public abstract setNoAdjustHandles(Z)V
.end method

.method public abstract setNoChangeArrowheads(Z)V
.end method

.method public abstract setNoChangeAspect(Z)V
.end method

.method public abstract setNoChangeShapeType(Z)V
.end method

.method public abstract setNoCrop(Z)V
.end method

.method public abstract setNoEditPoints(Z)V
.end method

.method public abstract setNoGrp(Z)V
.end method

.method public abstract setNoMove(Z)V
.end method

.method public abstract setNoResize(Z)V
.end method

.method public abstract setNoRot(Z)V
.end method

.method public abstract setNoSelect(Z)V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetNoAdjustHandles()V
.end method

.method public abstract unsetNoChangeArrowheads()V
.end method

.method public abstract unsetNoChangeAspect()V
.end method

.method public abstract unsetNoChangeShapeType()V
.end method

.method public abstract unsetNoCrop()V
.end method

.method public abstract unsetNoEditPoints()V
.end method

.method public abstract unsetNoGrp()V
.end method

.method public abstract unsetNoMove()V
.end method

.method public abstract unsetNoResize()V
.end method

.method public abstract unsetNoRot()V
.end method

.method public abstract unsetNoSelect()V
.end method

.method public abstract xgetNoAdjustHandles()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetNoChangeArrowheads()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetNoChangeAspect()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetNoChangeShapeType()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetNoCrop()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetNoEditPoints()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetNoGrp()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetNoMove()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetNoResize()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetNoRot()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetNoSelect()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xsetNoAdjustHandles(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetNoChangeArrowheads(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetNoChangeAspect(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetNoChangeShapeType(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetNoCrop(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetNoEditPoints(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetNoGrp(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetNoMove(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetNoResize(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetNoRot(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetNoSelect(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method
