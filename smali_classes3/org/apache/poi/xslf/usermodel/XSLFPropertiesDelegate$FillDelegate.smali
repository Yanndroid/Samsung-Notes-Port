.class Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillDelegate;
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
    name = "FillDelegate"
.end annotation


# instance fields
.field public final props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;

    return-void
.end method


# virtual methods
.method public addNewBlipFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;->addNewBlipFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    move-result-object v0

    return-object v0
.end method

.method public addNewGradFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;->addNewGradFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;

    move-result-object v0

    return-object v0
.end method

.method public addNewGrpFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupFillProperties;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;->addNewGrpFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupFillProperties;

    move-result-object v0

    return-object v0
.end method

.method public addNewNoFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;->addNewNoFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;

    move-result-object v0

    return-object v0
.end method

.method public addNewPattFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;->addNewPattFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;

    move-result-object v0

    return-object v0
.end method

.method public addNewSolidFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;->addNewSolidFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;

    move-result-object v0

    return-object v0
.end method

.method public getBlipFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;->getBlipFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    move-result-object v0

    return-object v0
.end method

.method public getGradFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;->getGradFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;

    move-result-object v0

    return-object v0
.end method

.method public getGrpFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupFillProperties;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;->getGrpFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupFillProperties;

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

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;->getNoFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;

    move-result-object v0

    return-object v0
.end method

.method public getPattFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;->getPattFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;

    move-result-object v0

    return-object v0
.end method

.method public getSolidFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;->getSolidFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;

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

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;->isSetBlipFill()Z

    move-result v0

    return v0
.end method

.method public isSetGradFill()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;->isSetGradFill()Z

    move-result v0

    return v0
.end method

.method public isSetGrpFill()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;->isSetGrpFill()Z

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

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;->isSetNoFill()Z

    move-result v0

    return v0
.end method

.method public isSetPattFill()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;->isSetPattFill()Z

    move-result v0

    return v0
.end method

.method public isSetSolidFill()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;->isSetSolidFill()Z

    move-result v0

    return v0
.end method

.method public setBlipFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;->setBlipFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;)V

    return-void
.end method

.method public setGradFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;->setGradFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;)V

    return-void
.end method

.method public setGrpFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupFillProperties;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;->setGrpFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupFillProperties;)V

    return-void
.end method

.method public setNoFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;->setNoFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;)V

    return-void
.end method

.method public setPattFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;->setPattFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;)V

    return-void
.end method

.method public setSolidFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;->setSolidFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;)V

    return-void
.end method

.method public unsetBlipFill()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;->unsetBlipFill()V

    return-void
.end method

.method public unsetGradFill()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;->unsetGradFill()V

    return-void
.end method

.method public unsetGrpFill()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;->unsetGrpFill()V

    return-void
.end method

.method public unsetNoFill()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;->unsetNoFill()V

    return-void
.end method

.method public unsetPattFill()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;->unsetPattFill()V

    return-void
.end method

.method public unsetSolidFill()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;->unsetSolidFill()V

    return-void
.end method
