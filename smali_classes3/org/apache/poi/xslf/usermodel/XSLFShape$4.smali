.class final Lorg/apache/poi/xslf/usermodel/XSLFShape$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/xslf/usermodel/XSLFShape;->selectPaint(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;Lorg/apache/poi/xslf/usermodel/XSLFTheme;)Lorg/apache/poi/sl/usermodel/PaintStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic val$cs:[Lorg/apache/poi/sl/usermodel/ColorStyle;

.field public final synthetic val$fractions:[F

.field public final synthetic val$gradFill:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;[Lorg/apache/poi/sl/usermodel/ColorStyle;[F)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFShape$4;->val$gradFill:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;

    iput-object p2, p0, Lorg/apache/poi/xslf/usermodel/XSLFShape$4;->val$cs:[Lorg/apache/poi/sl/usermodel/ColorStyle;

    iput-object p3, p0, Lorg/apache/poi/xslf/usermodel/XSLFShape$4;->val$fractions:[F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGradientAngle()D
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFShape$4;->val$gradFill:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;->isSetLin()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFShape$4;->val$gradFill:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;->getLin()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLinearShadeProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLinearShadeProperties;->getAng()I

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

.method public getGradientColors()[Lorg/apache/poi/sl/usermodel/ColorStyle;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFShape$4;->val$cs:[Lorg/apache/poi/sl/usermodel/ColorStyle;

    return-object v0
.end method

.method public getGradientFractions()[F
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFShape$4;->val$fractions:[F

    return-object v0
.end method

.method public getGradientType()Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint$GradientType;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFShape$4;->val$gradFill:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;->isSetLin()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint$GradientType;->linear:Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint$GradientType;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFShape$4;->val$gradFill:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;->isSetPath()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFShape$4;->val$gradFill:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;->getPath()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPathShadeProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPathShadeProperties;->getPath()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathShadeType$Enum;

    move-result-object v0

    sget-object v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathShadeType;->CIRCLE:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathShadeType$Enum;

    if-ne v0, v1, :cond_1

    sget-object v0, Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint$GradientType;->circular:Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint$GradientType;

    return-object v0

    :cond_1
    sget-object v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathShadeType;->SHAPE:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathShadeType$Enum;

    if-ne v0, v1, :cond_2

    sget-object v0, Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint$GradientType;->shape:Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint$GradientType;

    return-object v0

    :cond_2
    sget-object v0, Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint$GradientType;->linear:Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint$GradientType;

    return-object v0
.end method

.method public isRotatedWithShape()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFShape$4;->val$gradFill:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;->getRotWithShape()Z

    move-result v0

    return v0
.end method
