.class Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$2;
.super Lorg/apache/poi/xslf/model/PropertyFetcher;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getLinePaint()Lorg/apache/poi/sl/usermodel/PaintStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/xslf/model/PropertyFetcher<",
        "Lorg/apache/poi/sl/usermodel/PaintStyle;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;

.field public final synthetic val$hasPlaceholder:Z

.field public final synthetic val$theme:Lorg/apache/poi/xslf/usermodel/XSLFTheme;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;Lorg/apache/poi/xslf/usermodel/XSLFTheme;Z)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$2;->this$0:Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;

    iput-object p2, p0, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$2;->val$theme:Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    iput-boolean p3, p0, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$2;->val$hasPlaceholder:Z

    invoke-direct {p0}, Lorg/apache/poi/xslf/model/PropertyFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public fetch(Lorg/apache/poi/xslf/usermodel/XSLFShape;)Z
    .locals 7

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->access$000(Lorg/apache/poi/xslf/usermodel/XSLFShape;Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate;->getFillDelegate(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;->isSetNoFill()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v3}, Lorg/apache/poi/xslf/model/PropertyFetcher;->setValue(Ljava/lang/Object;)V

    return v2

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$2;->val$theme:Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    iget-boolean v6, p0, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$2;->val$hasPlaceholder:Z

    invoke-static {v1, v3, v4, v5, v6}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->selectPaint(Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;Lorg/apache/poi/openxml4j/opc/PackagePart;Lorg/apache/poi/xslf/usermodel/XSLFTheme;Z)Lorg/apache/poi/sl/usermodel/PaintStyle;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Lorg/apache/poi/xslf/model/PropertyFetcher;->setValue(Ljava/lang/Object;)V

    return v2

    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSpStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeStyle;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeStyle;->getLnRef()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate;->getFillDelegate(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;

    move-result-object v1

    iget-object v5, p0, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$2;->val$theme:Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    iget-boolean v6, p0, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$2;->val$hasPlaceholder:Z

    invoke-static {v1, v3, v4, v5, v6}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->selectPaint(Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;Lorg/apache/poi/openxml4j/opc/PackagePart;Lorg/apache/poi/xslf/usermodel/XSLFTheme;Z)Lorg/apache/poi/sl/usermodel/PaintStyle;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {p0, p1, v4}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$2;->getThemePaint(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeStyle;Lorg/apache/poi/openxml4j/opc/PackagePart;)Lorg/apache/poi/sl/usermodel/PaintStyle;

    move-result-object v1

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p0, v1}, Lorg/apache/poi/xslf/model/PropertyFetcher;->setValue(Ljava/lang/Object;)V

    return v2

    :cond_3
    return v0
.end method

.method public getThemePaint(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeStyle;Lorg/apache/poi/openxml4j/opc/PackagePart;)Lorg/apache/poi/sl/usermodel/PaintStyle;
    .locals 3

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeStyle;->getLnRef()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;->getIdx()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;->getSchemeClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;

    move-result-object p1

    if-gtz v1, :cond_1

    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$2;->val$theme:Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFTheme;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeStyleSheet;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeStyleSheet;->getThemeElements()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBaseStyles;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBaseStyles;->getFmtScheme()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrix;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrix;->getLnStyleLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineStyleList;

    move-result-object v0

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineStyleList;->getLnArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate;->getFillDelegate(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$2;->val$theme:Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    iget-boolean v2, p0, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$2;->val$hasPlaceholder:Z

    invoke-static {v0, p1, p2, v1, v2}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->selectPaint(Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;Lorg/apache/poi/openxml4j/opc/PackagePart;Lorg/apache/poi/xslf/usermodel/XSLFTheme;Z)Lorg/apache/poi/sl/usermodel/PaintStyle;

    move-result-object p1

    return-object p1
.end method
