.class Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$BackgroundDelegate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;
.implements Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFEffectProperties;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BackgroundDelegate"
.end annotation


# instance fields
.field public final props:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$BackgroundDelegate;->props:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;

    return-void
.end method


# virtual methods
.method public addNewBlipFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$BackgroundDelegate;->props:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;->addNewBlipFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    move-result-object v0

    return-object v0
.end method

.method public addNewEffectDag()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectContainer;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$BackgroundDelegate;->props:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;->addNewEffectDag()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectContainer;

    move-result-object v0

    return-object v0
.end method

.method public addNewEffectLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectList;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$BackgroundDelegate;->props:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;->addNewEffectLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectList;

    move-result-object v0

    return-object v0
.end method

.method public addNewGradFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$BackgroundDelegate;->props:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;->addNewGradFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;

    move-result-object v0

    return-object v0
.end method

.method public addNewGrpFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupFillProperties;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$BackgroundDelegate;->props:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;->addNewGrpFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupFillProperties;

    move-result-object v0

    return-object v0
.end method

.method public addNewNoFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$BackgroundDelegate;->props:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;->addNewNoFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;

    move-result-object v0

    return-object v0
.end method

.method public addNewPattFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$BackgroundDelegate;->props:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;->addNewPattFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;

    move-result-object v0

    return-object v0
.end method

.method public addNewSolidFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$BackgroundDelegate;->props:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;->addNewSolidFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;

    move-result-object v0

    return-object v0
.end method

.method public getBlipFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$BackgroundDelegate;->props:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;->getBlipFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    move-result-object v0

    return-object v0
.end method

.method public getEffectDag()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectContainer;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$BackgroundDelegate;->props:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;->getEffectDag()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectContainer;

    move-result-object v0

    return-object v0
.end method

.method public getEffectLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectList;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$BackgroundDelegate;->props:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;->getEffectLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectList;

    move-result-object v0

    return-object v0
.end method

.method public getGradFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$BackgroundDelegate;->props:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;->getGradFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;

    move-result-object v0

    return-object v0
.end method

.method public getGrpFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupFillProperties;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$BackgroundDelegate;->props:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;->getGrpFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupFillProperties;

    move-result-object v0

    return-object v0
.end method

.method public getMatrixStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNoFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$BackgroundDelegate;->props:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;->getNoFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;

    move-result-object v0

    return-object v0
.end method

.method public getPattFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$BackgroundDelegate;->props:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;->getPattFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;

    move-result-object v0

    return-object v0
.end method

.method public getSolidFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$BackgroundDelegate;->props:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;->getSolidFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;

    move-result-object v0

    return-object v0
.end method

.method public isLineStyle()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSetBlipFill()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$BackgroundDelegate;->props:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;->isSetBlipFill()Z

    move-result v0

    return v0
.end method

.method public isSetEffectDag()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$BackgroundDelegate;->props:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;->isSetEffectDag()Z

    move-result v0

    return v0
.end method

.method public isSetEffectLst()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$BackgroundDelegate;->props:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;->isSetEffectLst()Z

    move-result v0

    return v0
.end method

.method public isSetGradFill()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$BackgroundDelegate;->props:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;->isSetGradFill()Z

    move-result v0

    return v0
.end method

.method public isSetGrpFill()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$BackgroundDelegate;->props:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;->isSetGrpFill()Z

    move-result v0

    return v0
.end method

.method public isSetMatrixStyle()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSetNoFill()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$BackgroundDelegate;->props:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;->isSetNoFill()Z

    move-result v0

    return v0
.end method

.method public isSetPattFill()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$BackgroundDelegate;->props:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;->isSetPattFill()Z

    move-result v0

    return v0
.end method

.method public isSetSolidFill()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$BackgroundDelegate;->props:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;->isSetSolidFill()Z

    move-result v0

    return v0
.end method

.method public setBlipFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$BackgroundDelegate;->props:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;->setBlipFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;)V

    return-void
.end method

.method public setEffectDag(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectContainer;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$BackgroundDelegate;->props:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;->setEffectDag(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectContainer;)V

    return-void
.end method

.method public setEffectLst(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectList;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$BackgroundDelegate;->props:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;->setEffectLst(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectList;)V

    return-void
.end method

.method public setGradFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$BackgroundDelegate;->props:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;->setGradFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;)V

    return-void
.end method

.method public setGrpFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupFillProperties;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$BackgroundDelegate;->props:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;->setGrpFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupFillProperties;)V

    return-void
.end method

.method public setNoFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$BackgroundDelegate;->props:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;->setNoFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;)V

    return-void
.end method

.method public setPattFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$BackgroundDelegate;->props:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;->setPattFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;)V

    return-void
.end method

.method public setSolidFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$BackgroundDelegate;->props:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;->setSolidFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;)V

    return-void
.end method

.method public unsetBlipFill()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$BackgroundDelegate;->props:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;->unsetBlipFill()V

    return-void
.end method

.method public unsetEffectDag()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$BackgroundDelegate;->props:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;->unsetEffectDag()V

    return-void
.end method

.method public unsetEffectLst()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$BackgroundDelegate;->props:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;->unsetEffectLst()V

    return-void
.end method

.method public unsetGradFill()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$BackgroundDelegate;->props:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;->unsetGradFill()V

    return-void
.end method

.method public unsetGrpFill()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$BackgroundDelegate;->props:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;->unsetGrpFill()V

    return-void
.end method

.method public unsetNoFill()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$BackgroundDelegate;->props:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;->unsetNoFill()V

    return-void
.end method

.method public unsetPattFill()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$BackgroundDelegate;->props:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;->unsetPattFill()V

    return-void
.end method

.method public unsetSolidFill()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$BackgroundDelegate;->props:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;->unsetSolidFill()V

    return-void
.end method
