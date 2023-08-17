.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTAnchor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTAnchor$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTAnchor;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->typeSystemForClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    const-string v1, "ctanchorff8atype"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTAnchor;->type:Lorg/apache/xmlbeans/SchemaType;

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

.method public abstract addNewPositionH()Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTPosH;
.end method

.method public abstract addNewPositionV()Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTPosV;
.end method

.method public abstract addNewSimplePos()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;
.end method

.method public abstract addNewWrapNone()Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTWrapNone;
.end method

.method public abstract addNewWrapSquare()Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTWrapSquare;
.end method

.method public abstract addNewWrapThrough()Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTWrapThrough;
.end method

.method public abstract addNewWrapTight()Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTWrapTight;
.end method

.method public abstract addNewWrapTopAndBottom()Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTWrapTopBottom;
.end method

.method public abstract getAllowOverlap()Z
.end method

.method public abstract getBehindDoc()Z
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

.method public abstract getHidden()Z
.end method

.method public abstract getLayoutInCell()Z
.end method

.method public abstract getLocked()Z
.end method

.method public abstract getPositionH()Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTPosH;
.end method

.method public abstract getPositionV()Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTPosV;
.end method

.method public abstract getRelativeHeight()J
.end method

.method public abstract getSimplePos()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;
.end method

.method public abstract getSimplePos2()Z
.end method

.method public abstract getWrapNone()Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTWrapNone;
.end method

.method public abstract getWrapSquare()Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTWrapSquare;
.end method

.method public abstract getWrapThrough()Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTWrapThrough;
.end method

.method public abstract getWrapTight()Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTWrapTight;
.end method

.method public abstract getWrapTopAndBottom()Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTWrapTopBottom;
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

.method public abstract isSetHidden()Z
.end method

.method public abstract isSetSimplePos2()Z
.end method

.method public abstract isSetWrapNone()Z
.end method

.method public abstract isSetWrapSquare()Z
.end method

.method public abstract isSetWrapThrough()Z
.end method

.method public abstract isSetWrapTight()Z
.end method

.method public abstract isSetWrapTopAndBottom()Z
.end method

.method public abstract setAllowOverlap(Z)V
.end method

.method public abstract setBehindDoc(Z)V
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

.method public abstract setHidden(Z)V
.end method

.method public abstract setLayoutInCell(Z)V
.end method

.method public abstract setLocked(Z)V
.end method

.method public abstract setPositionH(Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTPosH;)V
.end method

.method public abstract setPositionV(Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTPosV;)V
.end method

.method public abstract setRelativeHeight(J)V
.end method

.method public abstract setSimplePos(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;)V
.end method

.method public abstract setSimplePos2(Z)V
.end method

.method public abstract setWrapNone(Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTWrapNone;)V
.end method

.method public abstract setWrapSquare(Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTWrapSquare;)V
.end method

.method public abstract setWrapThrough(Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTWrapThrough;)V
.end method

.method public abstract setWrapTight(Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTWrapTight;)V
.end method

.method public abstract setWrapTopAndBottom(Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTWrapTopBottom;)V
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

.method public abstract unsetHidden()V
.end method

.method public abstract unsetSimplePos2()V
.end method

.method public abstract unsetWrapNone()V
.end method

.method public abstract unsetWrapSquare()V
.end method

.method public abstract unsetWrapThrough()V
.end method

.method public abstract unsetWrapTight()V
.end method

.method public abstract unsetWrapTopAndBottom()V
.end method

.method public abstract xgetAllowOverlap()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetBehindDoc()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetDistB()Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STWrapDistance;
.end method

.method public abstract xgetDistL()Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STWrapDistance;
.end method

.method public abstract xgetDistR()Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STWrapDistance;
.end method

.method public abstract xgetDistT()Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STWrapDistance;
.end method

.method public abstract xgetHidden()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetLayoutInCell()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetLocked()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetRelativeHeight()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetSimplePos2()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xsetAllowOverlap(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetBehindDoc(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetDistB(Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STWrapDistance;)V
.end method

.method public abstract xsetDistL(Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STWrapDistance;)V
.end method

.method public abstract xsetDistR(Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STWrapDistance;)V
.end method

.method public abstract xsetDistT(Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STWrapDistance;)V
.end method

.method public abstract xsetHidden(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetLayoutInCell(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetLocked(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetRelativeHeight(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetSimplePos2(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method
