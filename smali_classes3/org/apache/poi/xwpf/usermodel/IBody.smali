.class public interface abstract Lorg/apache/poi/xwpf/usermodel/IBody;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getBodyElements()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/IBodyElement;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getParagraph(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;)Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;
.end method

.method public abstract getParagraphArray(I)Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;
.end method

.method public abstract getParagraphs()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPart()Lorg/apache/poi/POIXMLDocumentPart;
.end method

.method public abstract getPartType()Lorg/apache/poi/xwpf/usermodel/BodyType;
.end method

.method public abstract getTable(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;)Lorg/apache/poi/xwpf/usermodel/XWPFTable;
.end method

.method public abstract getTableArray(I)Lorg/apache/poi/xwpf/usermodel/XWPFTable;
.end method

.method public abstract getTableCell(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;)Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;
.end method

.method public abstract getTables()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFTable;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getXWPFDocument()Lorg/apache/poi/xwpf/usermodel/XWPFDocument;
.end method

.method public abstract insertNewParagraph(Lorg/apache/xmlbeans/XmlCursor;)Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;
.end method

.method public abstract insertNewTbl(Lorg/apache/xmlbeans/XmlCursor;)Lorg/apache/poi/xwpf/usermodel/XWPFTable;
.end method

.method public abstract insertTable(ILorg/apache/poi/xwpf/usermodel/XWPFTable;)V
.end method
