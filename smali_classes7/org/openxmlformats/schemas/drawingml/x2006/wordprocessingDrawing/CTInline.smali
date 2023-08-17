.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->typeSystemForClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    const-string v1, "ctinline5726type"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewCNvGraphicFramePr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualGraphicFrameProperties;
.end method

.method public abstract addNewDocPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;
.end method

.method public abstract addNewEffectExtent()Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTEffectExtent;
.end method

.method public abstract addNewExtent()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;
.end method

.method public abstract addNewGraphic()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObject;
.end method

.method public abstract getCNvGraphicFramePr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualGraphicFrameProperties;
.end method

.method public abstract getDistB()J
.end method

.method public abstract getDistL()J
.end method

.method public abstract getDistR()J
.end method

.method public abstract getDistT()J
.end method

.method public abstract getDocPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;
.end method

.method public abstract getEffectExtent()Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTEffectExtent;
.end method

.method public abstract getExtent()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;
.end method

.method public abstract getGraphic()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObject;
.end method

.method public abstract isSetCNvGraphicFramePr()Z
.end method

.method public abstract isSetDistB()Z
.end method

.method public abstract isSetDistL()Z
.end method

.method public abstract isSetDistR()Z
.end method

.method public abstract isSetDistT()Z
.end method

.method public abstract isSetEffectExtent()Z
.end method

.method public abstract setCNvGraphicFramePr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualGraphicFrameProperties;)V
.end method

.method public abstract setDistB(J)V
.end method

.method public abstract setDistL(J)V
.end method

.method public abstract setDistR(J)V
.end method

.method public abstract setDistT(J)V
.end method

.method public abstract setDocPr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;)V
.end method

.method public abstract setEffectExtent(Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTEffectExtent;)V
.end method

.method public abstract setExtent(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;)V
.end method

.method public abstract setGraphic(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObject;)V
.end method

.method public abstract unsetCNvGraphicFramePr()V
.end method

.method public abstract unsetDistB()V
.end method

.method public abstract unsetDistL()V
.end method

.method public abstract unsetDistR()V
.end method

.method public abstract unsetDistT()V
.end method

.method public abstract unsetEffectExtent()V
.end method

.method public abstract xgetDistB()Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STWrapDistance;
.end method

.method public abstract xgetDistL()Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STWrapDistance;
.end method

.method public abstract xgetDistR()Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STWrapDistance;
.end method

.method public abstract xgetDistT()Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STWrapDistance;
.end method

.method public abstract xsetDistB(Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STWrapDistance;)V
.end method

.method public abstract xsetDistL(Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STWrapDistance;)V
.end method

.method public abstract xsetDistR(Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STWrapDistance;)V
.end method

.method public abstract xsetDistT(Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STWrapDistance;)V
.end method
