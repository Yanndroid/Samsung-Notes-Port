.class Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$ShapeDelegate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;
.implements Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFGeometryProperties;
.implements Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFEffectProperties;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShapeDelegate"
.end annotation


# instance fields
.field public final props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$ShapeDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    return-void
.end method


# virtual methods
.method public addNewBlipFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$ShapeDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->addNewBlipFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    move-result-object v0

    return-object v0
.end method

.method public addNewCustGeom()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$ShapeDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->addNewCustGeom()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;

    move-result-object v0

    return-object v0
.end method

.method public addNewEffectDag()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectContainer;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$ShapeDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->addNewEffectDag()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectContainer;

    move-result-object v0

    return-object v0
.end method

.method public addNewEffectLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectList;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$ShapeDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->addNewEffectLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectList;

    move-result-object v0

    return-object v0
.end method

.method public addNewGradFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$ShapeDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->addNewGradFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;

    move-result-object v0

    return-object v0
.end method

.method public addNewGrpFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupFillProperties;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$ShapeDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->addNewGrpFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupFillProperties;

    move-result-object v0

    return-object v0
.end method

.method public addNewNoFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$ShapeDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->addNewNoFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;

    move-result-object v0

    return-object v0
.end method

.method public addNewPattFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$ShapeDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->addNewPattFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;

    move-result-object v0

    return-object v0
.end method

.method public addNewPrstGeom()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$ShapeDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->addNewPrstGeom()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;

    move-result-object v0

    return-object v0
.end method

.method public addNewSolidFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$ShapeDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->addNewSolidFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;

    move-result-object v0

    return-object v0
.end method

.method public getBlipFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$ShapeDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->getBlipFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    move-result-object v0

    return-object v0
.end method

.method public getCustGeom()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$ShapeDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->getCustGeom()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;

    move-result-object v0

    return-object v0
.end method

.method public getEffectDag()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectContainer;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$ShapeDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->getEffectDag()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectContainer;

    move-result-object v0

    return-object v0
.end method

.method public getEffectLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectList;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$ShapeDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->getEffectLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectList;

    move-result-object v0

    return-object v0
.end method

.method public getGradFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$ShapeDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->getGradFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;

    move-result-object v0

    return-object v0
.end method

.method public getGrpFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupFillProperties;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$ShapeDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->getGrpFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupFillProperties;

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

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$ShapeDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->getNoFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;

    move-result-object v0

    return-object v0
.end method

.method public getPattFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$ShapeDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->getPattFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;

    move-result-object v0

    return-object v0
.end method

.method public getPrstGeom()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$ShapeDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->getPrstGeom()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;

    move-result-object v0

    return-object v0
.end method

.method public getSolidFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$ShapeDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->getSolidFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;

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

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$ShapeDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->isSetBlipFill()Z

    move-result v0

    return v0
.end method

.method public isSetCustGeom()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$ShapeDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->isSetCustGeom()Z

    move-result v0

    return v0
.end method

.method public isSetEffectDag()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$ShapeDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->isSetEffectDag()Z

    move-result v0

    return v0
.end method

.method public isSetEffectLst()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$ShapeDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->isSetEffectLst()Z

    move-result v0

    return v0
.end method

.method public isSetGradFill()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$ShapeDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->isSetGradFill()Z

    move-result v0

    return v0
.end method

.method public isSetGrpFill()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$ShapeDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->isSetGrpFill()Z

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

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$ShapeDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->isSetNoFill()Z

    move-result v0

    return v0
.end method

.method public isSetPattFill()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$ShapeDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->isSetPattFill()Z

    move-result v0

    return v0
.end method

.method public isSetPrstGeom()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$ShapeDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->isSetPrstGeom()Z

    move-result v0

    return v0
.end method

.method public isSetSolidFill()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$ShapeDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->isSetSolidFill()Z

    move-result v0

    return v0
.end method

.method public setBlipFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$ShapeDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->setBlipFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;)V

    return-void
.end method

.method public setCustGeom(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$ShapeDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->setCustGeom(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;)V

    return-void
.end method

.method public setEffectDag(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectContainer;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$ShapeDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->setEffectDag(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectContainer;)V

    return-void
.end method

.method public setEffectLst(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectList;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$ShapeDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->setEffectLst(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectList;)V

    return-void
.end method

.method public setGradFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$ShapeDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->setGradFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;)V

    return-void
.end method

.method public setGrpFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupFillProperties;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$ShapeDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->setGrpFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupFillProperties;)V

    return-void
.end method

.method public setNoFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$ShapeDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->setNoFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;)V

    return-void
.end method

.method public setPattFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$ShapeDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->setPattFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;)V

    return-void
.end method

.method public setPrstGeom(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$ShapeDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->setPrstGeom(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;)V

    return-void
.end method

.method public setSolidFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$ShapeDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->setSolidFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;)V

    return-void
.end method

.method public unsetBlipFill()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$ShapeDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->unsetBlipFill()V

    return-void
.end method

.method public unsetCustGeom()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$ShapeDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->unsetCustGeom()V

    return-void
.end method

.method public unsetEffectDag()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$ShapeDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->unsetEffectDag()V

    return-void
.end method

.method public unsetEffectLst()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$ShapeDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->unsetEffectLst()V

    return-void
.end method

.method public unsetGradFill()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$ShapeDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->unsetGradFill()V

    return-void
.end method

.method public unsetGrpFill()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$ShapeDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->unsetGrpFill()V

    return-void
.end method

.method public unsetNoFill()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$ShapeDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->unsetNoFill()V

    return-void
.end method

.method public unsetPattFill()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$ShapeDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->unsetPattFill()V

    return-void
.end method

.method public unsetPrstGeom()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$ShapeDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->unsetPrstGeom()V

    return-void
.end method

.method public unsetSolidFill()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$ShapeDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->unsetSolidFill()V

    return-void
.end method
