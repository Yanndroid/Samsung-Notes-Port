.class Lorg/apache/poi/xslf/usermodel/XSLFLineBreak;
.super Lorg/apache/poi/xslf/usermodel/XSLFTextRun;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;-><init>(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;)V

    return-void
.end method


# virtual methods
.method public setText(Ljava/lang/String;)V
    .locals 1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "You cannot change text of a line break, it is always \'\\n\'"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
