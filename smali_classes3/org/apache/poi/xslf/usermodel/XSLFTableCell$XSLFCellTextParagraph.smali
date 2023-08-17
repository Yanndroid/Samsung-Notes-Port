.class Lorg/apache/poi/xslf/usermodel/XSLFTableCell$XSLFCellTextParagraph;
.super Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xslf/usermodel/XSLFTableCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "XSLFCellTextParagraph"
.end annotation


# instance fields
.field public final synthetic this$0:Lorg/apache/poi/xslf/usermodel/XSLFTableCell;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xslf/usermodel/XSLFTableCell;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;Lorg/apache/poi/xslf/usermodel/XSLFTextShape;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableCell$XSLFCellTextParagraph;->this$0:Lorg/apache/poi/xslf/usermodel/XSLFTableCell;

    invoke-direct {p0, p2, p3}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;Lorg/apache/poi/xslf/usermodel/XSLFTextShape;)V

    return-void
.end method


# virtual methods
.method public newTextRun(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;)Lorg/apache/poi/xslf/usermodel/XSLFTableCell$XSLFCellTextRun;
    .locals 2

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFTableCell$XSLFCellTextRun;

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableCell$XSLFCellTextParagraph;->this$0:Lorg/apache/poi/xslf/usermodel/XSLFTableCell;

    invoke-direct {v0, v1, p1, p0}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell$XSLFCellTextRun;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTableCell;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;)V

    return-object v0
.end method

.method public bridge synthetic newTextRun(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;)Lorg/apache/poi/xslf/usermodel/XSLFTextRun;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell$XSLFCellTextParagraph;->newTextRun(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;)Lorg/apache/poi/xslf/usermodel/XSLFTableCell$XSLFCellTextRun;

    move-result-object p1

    return-object p1
.end method
