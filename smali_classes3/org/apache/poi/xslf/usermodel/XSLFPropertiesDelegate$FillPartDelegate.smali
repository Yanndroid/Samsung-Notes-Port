.class Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillPartDelegate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FillPartDelegate"
.end annotation


# instance fields
.field public final props:Lorg/apache/xmlbeans/XmlObject;


# direct methods
.method public constructor <init>(Lorg/apache/xmlbeans/XmlObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillPartDelegate;->props:Lorg/apache/xmlbeans/XmlObject;

    return-void
.end method


# virtual methods
.method public addNewBlipFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public addNewGradFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public addNewGrpFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupFillProperties;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public addNewNoFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public addNewPattFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public addNewSolidFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getBlipFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillPartDelegate;->isSetBlipFill()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillPartDelegate;->props:Lorg/apache/xmlbeans/XmlObject;

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getGradFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillPartDelegate;->isSetGradFill()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillPartDelegate;->props:Lorg/apache/xmlbeans/XmlObject;

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getGrpFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupFillProperties;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillPartDelegate;->isSetGrpFill()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillPartDelegate;->props:Lorg/apache/xmlbeans/XmlObject;

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupFillProperties;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getMatrixStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNoFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillPartDelegate;->isSetNoFill()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillPartDelegate;->props:Lorg/apache/xmlbeans/XmlObject;

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getPattFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillPartDelegate;->isSetPattFill()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillPartDelegate;->props:Lorg/apache/xmlbeans/XmlObject;

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSolidFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillPartDelegate;->isSetSolidFill()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillPartDelegate;->props:Lorg/apache/xmlbeans/XmlObject;

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public isLineStyle()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSetBlipFill()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillPartDelegate;->props:Lorg/apache/xmlbeans/XmlObject;

    instance-of v0, v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    return v0
.end method

.method public isSetGradFill()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillPartDelegate;->props:Lorg/apache/xmlbeans/XmlObject;

    instance-of v0, v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;

    return v0
.end method

.method public isSetGrpFill()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillPartDelegate;->props:Lorg/apache/xmlbeans/XmlObject;

    instance-of v0, v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupFillProperties;

    return v0
.end method

.method public isSetMatrixStyle()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSetNoFill()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillPartDelegate;->props:Lorg/apache/xmlbeans/XmlObject;

    instance-of v0, v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;

    return v0
.end method

.method public isSetPattFill()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillPartDelegate;->props:Lorg/apache/xmlbeans/XmlObject;

    instance-of v0, v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;

    return v0
.end method

.method public isSetSolidFill()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillPartDelegate;->props:Lorg/apache/xmlbeans/XmlObject;

    instance-of v0, v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;

    return v0
.end method

.method public setBlipFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;)V
    .locals 0

    return-void
.end method

.method public setGradFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;)V
    .locals 0

    return-void
.end method

.method public setGrpFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupFillProperties;)V
    .locals 0

    return-void
.end method

.method public setNoFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;)V
    .locals 0

    return-void
.end method

.method public setPattFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;)V
    .locals 0

    return-void
.end method

.method public setSolidFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;)V
    .locals 0

    return-void
.end method

.method public unsetBlipFill()V
    .locals 0

    return-void
.end method

.method public unsetGradFill()V
    .locals 0

    return-void
.end method

.method public unsetGrpFill()V
    .locals 0

    return-void
.end method

.method public unsetNoFill()V
    .locals 0

    return-void
.end method

.method public unsetPattFill()V
    .locals 0

    return-void
.end method

.method public unsetSolidFill()V
    .locals 0

    return-void
.end method
