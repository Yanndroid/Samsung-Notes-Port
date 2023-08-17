.class Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$1;
.super Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getTextAlign()Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher<",
        "Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;I)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$1;->this$0:Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    invoke-direct {p0, p2}, Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;-><init>(I)V

    return-void
.end method


# virtual methods
.method public fetch(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Z
    .locals 2

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetAlgn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;->values()[Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;

    move-result-object v0

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getAlgn()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAlignType$Enum;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result p1

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    aget-object p1, v0, p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/model/PropertyFetcher;->setValue(Ljava/lang/Object;)V

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
