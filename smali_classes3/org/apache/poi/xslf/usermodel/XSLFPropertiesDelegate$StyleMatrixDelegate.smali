.class Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$StyleMatrixDelegate;
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
    name = "StyleMatrixDelegate"
.end annotation


# instance fields
.field public final props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$StyleMatrixDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;

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

    const/4 v0, 0x0

    return-object v0
.end method

.method public getGradFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getGrpFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupFillProperties;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMatrixStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$StyleMatrixDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;

    return-object v0
.end method

.method public getNoFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPattFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSolidFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isLineStyle()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$StyleMatrixDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    const-string v0, "lnRef"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSetBlipFill()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSetGradFill()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSetGrpFill()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSetMatrixStyle()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSetNoFill()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSetPattFill()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSetSolidFill()Z
    .locals 1

    const/4 v0, 0x0

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
