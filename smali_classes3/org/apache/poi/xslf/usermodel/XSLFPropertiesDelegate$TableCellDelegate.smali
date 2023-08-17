.class Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$TableCellDelegate;
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
    name = "TableCellDelegate"
.end annotation


# instance fields
.field public final props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$TableCellDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;

    return-void
.end method


# virtual methods
.method public addNewBlipFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$TableCellDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->addNewBlipFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    move-result-object v0

    return-object v0
.end method

.method public addNewGradFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$TableCellDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->addNewGradFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;

    move-result-object v0

    return-object v0
.end method

.method public addNewGrpFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupFillProperties;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$TableCellDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->addNewGrpFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupFillProperties;

    move-result-object v0

    return-object v0
.end method

.method public addNewNoFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$TableCellDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->addNewNoFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;

    move-result-object v0

    return-object v0
.end method

.method public addNewPattFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$TableCellDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->addNewPattFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;

    move-result-object v0

    return-object v0
.end method

.method public addNewSolidFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$TableCellDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->addNewSolidFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;

    move-result-object v0

    return-object v0
.end method

.method public getBlipFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$TableCellDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->getBlipFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    move-result-object v0

    return-object v0
.end method

.method public getGradFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$TableCellDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->getGradFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;

    move-result-object v0

    return-object v0
.end method

.method public getGrpFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupFillProperties;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$TableCellDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->getGrpFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupFillProperties;

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

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$TableCellDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->getNoFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;

    move-result-object v0

    return-object v0
.end method

.method public getPattFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$TableCellDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->getPattFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;

    move-result-object v0

    return-object v0
.end method

.method public getSolidFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$TableCellDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->getSolidFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;

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

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$TableCellDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->isSetBlipFill()Z

    move-result v0

    return v0
.end method

.method public isSetGradFill()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$TableCellDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->isSetGradFill()Z

    move-result v0

    return v0
.end method

.method public isSetGrpFill()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$TableCellDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->isSetGrpFill()Z

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

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$TableCellDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->isSetNoFill()Z

    move-result v0

    return v0
.end method

.method public isSetPattFill()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$TableCellDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->isSetPattFill()Z

    move-result v0

    return v0
.end method

.method public isSetSolidFill()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$TableCellDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->isSetSolidFill()Z

    move-result v0

    return v0
.end method

.method public setBlipFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$TableCellDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->setBlipFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;)V

    return-void
.end method

.method public setGradFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$TableCellDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->setGradFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;)V

    return-void
.end method

.method public setGrpFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupFillProperties;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$TableCellDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->setGrpFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupFillProperties;)V

    return-void
.end method

.method public setNoFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$TableCellDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->setNoFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;)V

    return-void
.end method

.method public setPattFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$TableCellDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->setPattFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;)V

    return-void
.end method

.method public setSolidFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$TableCellDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->setSolidFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;)V

    return-void
.end method

.method public unsetBlipFill()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$TableCellDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->unsetBlipFill()V

    return-void
.end method

.method public unsetGradFill()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$TableCellDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->unsetGradFill()V

    return-void
.end method

.method public unsetGrpFill()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$TableCellDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->unsetGrpFill()V

    return-void
.end method

.method public unsetNoFill()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$TableCellDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->unsetNoFill()V

    return-void
.end method

.method public unsetPattFill()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$TableCellDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->unsetPattFill()V

    return-void
.end method

.method public unsetSolidFill()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$TableCellDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->unsetSolidFill()V

    return-void
.end method
