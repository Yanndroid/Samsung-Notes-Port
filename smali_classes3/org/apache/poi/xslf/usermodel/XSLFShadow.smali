.class public Lorg/apache/poi/xslf/usermodel/XSLFShadow;
.super Lorg/apache/poi/xslf/usermodel/XSLFShape;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/Shadow;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/xslf/usermodel/XSLFShape;",
        "Lorg/apache/poi/sl/usermodel/Shadow<",
        "Lorg/apache/poi/xslf/usermodel/XSLFShape;",
        "Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;",
        ">;"
    }
.end annotation


# instance fields
.field private _parent:Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOuterShadowEffect;Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;)V
    .locals 1

    invoke-virtual {p2}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;-><init>(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    iput-object p2, p0, Lorg/apache/poi/xslf/usermodel/XSLFShadow;->_parent:Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;

    return-void
.end method


# virtual methods
.method public getAnchor()Lorg/apache/poi/java/awt/geom/Rectangle2D;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFShadow;->_parent:Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getAnchor()Lorg/apache/poi/java/awt/geom/Rectangle2D;

    move-result-object v0

    return-object v0
.end method

.method public getAngle()D
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getXmlObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOuterShadowEffect;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOuterShadowEffect;->isSetDir()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOuterShadowEffect;->getDir()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x40ed4c0000000000L    # 60000.0

    div-double/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getBlur()D
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getXmlObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOuterShadowEffect;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOuterShadowEffect;->isSetBlurRad()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOuterShadowEffect;->getBlurRad()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getDistance()D
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getXmlObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOuterShadowEffect;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOuterShadowEffect;->isSetDist()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOuterShadowEffect;->getDist()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getFillColor()Lorg/apache/poi/java/awt/Color;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShadow;->getFillStyle()Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;->getSolidColor()Lorg/apache/poi/sl/usermodel/ColorStyle;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/sl/draw/DrawPaint;->applyColorTransform(Lorg/apache/poi/sl/usermodel/ColorStyle;)Lorg/apache/poi/java/awt/Color;

    move-result-object v0

    return-object v0
.end method

.method public getFillStyle()Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getTheme()Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getXmlObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOuterShadowEffect;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOuterShadowEffect;->getSchemeClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;

    move-result-object v2

    new-instance v3, Lorg/apache/poi/xslf/usermodel/XSLFColor;

    invoke-direct {v3, v1, v0, v2}, Lorg/apache/poi/xslf/usermodel/XSLFColor;-><init>(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xslf/usermodel/XSLFTheme;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;)V

    invoke-virtual {v3}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->getColorStyle()Lorg/apache/poi/sl/usermodel/ColorStyle;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/sl/draw/DrawPaint;->createSolidPaint(Lorg/apache/poi/sl/usermodel/ColorStyle;)Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getShadowParent()Lorg/apache/poi/sl/usermodel/SimpleShape;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShadow;->getShadowParent()Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;

    move-result-object v0

    return-object v0
.end method

.method public getShadowParent()Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFShadow;->_parent:Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;

    return-object v0
.end method

.method public setAnchor(Lorg/apache/poi/java/awt/geom/Rectangle2D;)V
    .locals 1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "You can\'t set anchor of a shadow"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
