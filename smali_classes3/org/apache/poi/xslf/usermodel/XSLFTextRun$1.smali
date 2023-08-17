.class Lorg/apache/poi/xslf/usermodel/XSLFTextRun$1;
.super Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getFontColor()Lorg/apache/poi/sl/usermodel/PaintStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/xslf/model/CharacterPropertyFetcher<",
        "Lorg/apache/poi/sl/usermodel/PaintStyle;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lorg/apache/poi/xslf/usermodel/XSLFTextRun;

.field public final synthetic val$hasPlaceholder:Z


# direct methods
.method public constructor <init>(Lorg/apache/poi/xslf/usermodel/XSLFTextRun;IZ)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$1;->this$0:Lorg/apache/poi/xslf/usermodel/XSLFTextRun;

    iput-boolean p3, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$1;->val$hasPlaceholder:Z

    invoke-direct {p0, p2}, Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;-><init>(I)V

    return-void
.end method


# virtual methods
.method public fetch(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$1;->this$0:Lorg/apache/poi/xslf/usermodel/XSLFTextRun;

    invoke-static {v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->access$000(Lorg/apache/poi/xslf/usermodel/XSLFTextRun;)Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getParentShape()Lorg/apache/poi/xslf/usermodel/XSLFTextShape;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSpStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeStyle;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeStyle;->getFontRef()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontReference;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeStyle;->getFontRef()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontReference;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontReference;->getSchemeClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;

    move-result-object v3

    :cond_1
    invoke-static {p1}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate;->getFillDelegate(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;

    move-result-object p1

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getTheme()Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    move-result-object v1

    iget-boolean v4, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$1;->val$hasPlaceholder:Z

    invoke-static {p1, v3, v2, v1, v4}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->selectPaint(Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;Lorg/apache/poi/openxml4j/opc/PackagePart;Lorg/apache/poi/xslf/usermodel/XSLFTheme;Z)Lorg/apache/poi/sl/usermodel/PaintStyle;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/model/PropertyFetcher;->setValue(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method
