.class public Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xwpf/usermodel/IBodyElement;
.implements Lorg/apache/poi/xwpf/usermodel/IRunBody;
.implements Lorg/apache/poi/xwpf/usermodel/ISDTContents;
.implements Lorg/apache/poi/wp/usermodel/Paragraph;


# instance fields
.field public document:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

.field private footnoteText:Ljava/lang/StringBuffer;

.field public iruns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/IRunElement;",
            ">;"
        }
    .end annotation
.end field

.field private final paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

.field public part:Lorg/apache/poi/xwpf/usermodel/IBody;

.field public runs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFRun;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;Lorg/apache/poi/xwpf/usermodel/IBody;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->footnoteText:Ljava/lang/StringBuffer;

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    iput-object p2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->part:Lorg/apache/poi/xwpf/usermodel/IBody;

    invoke-interface {p2}, Lorg/apache/poi/xwpf/usermodel/IBody;->getXWPFDocument()Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->document:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->runs:Ljava/util/List;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->iruns:Ljava/util/List;

    invoke-direct {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->buildRunsInOrderFromXml(Lorg/apache/xmlbeans/XmlObject;)V

    iget-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->runs:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    invoke-virtual {p2}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getCTR()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object p2

    const-string v0, "child::*"

    invoke-interface {p2, v0}, Lorg/apache/xmlbeans/XmlCursor;->selectPath(Ljava/lang/String;)V

    :cond_0
    :goto_1
    invoke-interface {p2}, Lorg/apache/xmlbeans/XmlCursor;->toNextSelection()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    instance-of v1, v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdnRef;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdnRef;

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->footnoteText:Ljava/lang/StringBuffer;

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdnRef;->getId()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdnRef;->getDomNode()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "footnoteReference"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->document:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdnRef;->getId()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getFootnoteByID(I)Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;

    move-result-object v0

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->document:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdnRef;->getId()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getEndnoteByID(I)Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;

    move-result-object v0

    :goto_2
    const/4 v1, 0x1

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->getParagraphs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->footnoteText:Ljava/lang/StringBuffer;

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    const/4 v1, 0x0

    iget-object v3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->footnoteText:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->footnoteText:Ljava/lang/StringBuffer;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :cond_4
    invoke-interface {p2}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method private buildRunsInOrderFromXml(Lorg/apache/xmlbeans/XmlObject;)V
    .locals 8

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object p1

    const-string v0, "child::*"

    invoke-interface {p1, v0}, Lorg/apache/xmlbeans/XmlCursor;->selectPath(Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->toNextSelection()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    instance-of v1, v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    if-eqz v1, :cond_1

    new-instance v1, Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    move-object v2, v0

    check-cast v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-direct {v1, v2, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;)V

    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->runs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->iruns:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    instance-of v1, v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHyperlink;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHyperlink;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHyperlink;->getRArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    move-result-object v3

    array-length v4, v3

    move v5, v2

    :goto_1
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    new-instance v7, Lorg/apache/poi/xwpf/usermodel/XWPFHyperlinkRun;

    invoke-direct {v7, v1, v6, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFHyperlinkRun;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHyperlink;Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;Lorg/apache/poi/xwpf/usermodel/IRunBody;)V

    iget-object v6, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->runs:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->iruns:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    instance-of v1, v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSimpleField;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSimpleField;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSimpleField;->getRArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    move-result-object v3

    array-length v4, v3

    move v5, v2

    :goto_2
    if-ge v5, v4, :cond_3

    aget-object v6, v3, v5

    new-instance v7, Lorg/apache/poi/xwpf/usermodel/XWPFFieldRun;

    invoke-direct {v7, v1, v6, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFFieldRun;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSimpleField;Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;Lorg/apache/poi/xwpf/usermodel/IRunBody;)V

    iget-object v6, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->runs:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->iruns:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    instance-of v1, v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtBlock;

    if-eqz v1, :cond_4

    new-instance v1, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;

    move-object v3, v0

    check-cast v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtBlock;

    iget-object v4, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->part:Lorg/apache/poi/xwpf/usermodel/IBody;

    invoke-direct {v1, v3, v4}, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtBlock;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    iget-object v3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->iruns:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    instance-of v1, v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtRun;

    if-eqz v1, :cond_5

    new-instance v1, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;

    move-object v3, v0

    check-cast v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtRun;

    iget-object v4, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->part:Lorg/apache/poi/xwpf/usermodel/IBody;

    invoke-direct {v1, v3, v4}, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtRun;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    iget-object v3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->iruns:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    instance-of v1, v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRunTrackChange;

    if-eqz v1, :cond_6

    move-object v1, v0

    check-cast v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRunTrackChange;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRunTrackChange;->getRArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    move-result-object v1

    array-length v3, v1

    :goto_3
    if-ge v2, v3, :cond_6

    aget-object v4, v1, v2

    new-instance v5, Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    invoke-direct {v5, v4, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;)V

    iget-object v4, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->runs:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->iruns:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    instance-of v1, v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSmartTagRun;

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->buildRunsInOrderFromXml(Lorg/apache/xmlbeans/XmlObject;)V

    goto/16 :goto_0

    :cond_7
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    return-void
.end method

.method private getCTInd(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->getInd()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->getInd()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;

    move-result-object v1

    :goto_0
    if-eqz p1, :cond_1

    if-nez v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->addNewInd()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method private getCTPBrd(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->isSetPBdr()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->getPBdr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    if-nez v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->addNewPBdr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method private getCTPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->addNewPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private getCTSpacing(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->getSpacing()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->getSpacing()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;

    move-result-object v1

    :goto_0
    if-eqz p1, :cond_1

    if-nez v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->addNewSpacing()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method private static isTruelike(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;Z)Z
    .locals 0

    if-nez p0, :cond_0

    return p1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    return p1

    :pswitch_0
    const/4 p0, 0x0

    return p0

    :pswitch_1
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public addRun(Lorg/apache/poi/xwpf/usermodel/XWPFRun;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->runs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->runs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addRun(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->sizeOfRArray()I

    move-result v0

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->addNewR()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-interface {v1, v0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->setRArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;)V

    return-void
.end method

.method public createRun()Lorg/apache/poi/xwpf/usermodel/XWPFRun;
    .locals 2

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->addNewR()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;Lorg/apache/poi/xwpf/usermodel/IRunBody;)V

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->runs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->iruns:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getAlignment()Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->isSetJc()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->getJc()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTJc;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTJc;->getVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STJc$Enum;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;->valueOf(I)Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v0, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;->LEFT:Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

    :goto_1
    return-object v0
.end method

.method public getBody()Lorg/apache/poi/xwpf/usermodel/IBody;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->part:Lorg/apache/poi/xwpf/usermodel/IBody;

    return-object v0
.end method

.method public getBorderBetween()Lorg/apache/poi/xwpf/usermodel/Borders;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTPBrd(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;->getBetween()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;->getVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;

    move-result-object v0

    goto :goto_1

    :cond_1
    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder;->NONE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;

    :goto_1
    invoke-virtual {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/xwpf/usermodel/Borders;->valueOf(I)Lorg/apache/poi/xwpf/usermodel/Borders;

    move-result-object v0

    return-object v0
.end method

.method public getBorderBottom()Lorg/apache/poi/xwpf/usermodel/Borders;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTPBrd(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;->getBottom()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;->getVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;

    move-result-object v0

    goto :goto_1

    :cond_1
    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder;->NONE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;

    :goto_1
    invoke-virtual {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/xwpf/usermodel/Borders;->valueOf(I)Lorg/apache/poi/xwpf/usermodel/Borders;

    move-result-object v0

    return-object v0
.end method

.method public getBorderLeft()Lorg/apache/poi/xwpf/usermodel/Borders;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTPBrd(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;->getLeft()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;->getVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;

    move-result-object v0

    goto :goto_1

    :cond_1
    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder;->NONE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;

    :goto_1
    invoke-virtual {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/xwpf/usermodel/Borders;->valueOf(I)Lorg/apache/poi/xwpf/usermodel/Borders;

    move-result-object v0

    return-object v0
.end method

.method public getBorderRight()Lorg/apache/poi/xwpf/usermodel/Borders;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTPBrd(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;->getRight()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;->getVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;

    move-result-object v0

    goto :goto_1

    :cond_1
    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder;->NONE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;

    :goto_1
    invoke-virtual {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/xwpf/usermodel/Borders;->valueOf(I)Lorg/apache/poi/xwpf/usermodel/Borders;

    move-result-object v0

    return-object v0
.end method

.method public getBorderTop()Lorg/apache/poi/xwpf/usermodel/Borders;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTPBrd(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;->getTop()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;->getVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;

    move-result-object v0

    goto :goto_1

    :cond_1
    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder;->NONE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;

    :goto_1
    invoke-virtual {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/xwpf/usermodel/Borders;->valueOf(I)Lorg/apache/poi/xwpf/usermodel/Borders;

    move-result-object v0

    return-object v0
.end method

.method public getCTP()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    return-object v0
.end method

.method public getDocument()Lorg/apache/poi/xwpf/usermodel/XWPFDocument;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->document:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    return-object v0
.end method

.method public getElementType()Lorg/apache/poi/xwpf/usermodel/BodyElementType;
    .locals 1

    sget-object v0, Lorg/apache/poi/xwpf/usermodel/BodyElementType;->PARAGRAPH:Lorg/apache/poi/xwpf/usermodel/BodyElementType;

    return-object v0
.end method

.method public getFirstLineIndent()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getIndentationFirstLine()I

    move-result v0

    return v0
.end method

.method public getFontAlignment()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getAlignment()Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;->getValue()I

    move-result v0

    return v0
.end method

.method public getFootnoteText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->footnoteText:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIRuns()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/IRunElement;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->iruns:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getIndentFromLeft()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getIndentationLeft()I

    move-result v0

    return v0
.end method

.method public getIndentFromRight()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getIndentationRight()I

    move-result v0

    return v0
.end method

.method public getIndentationFirstLine()I
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTInd(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;->isSetFirstLine()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;->getFirstLine()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getIndentationHanging()I
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTInd(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;->isSetHanging()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;->getHanging()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getIndentationLeft()I
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTInd(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;->isSetLeft()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;->getLeft()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getIndentationRight()I
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTInd(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;->isSetRight()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;->getRight()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getNumFmt()Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getNumID()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->document:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    invoke-virtual {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getNumbering()Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->getNum(Ljava/math/BigInteger;)Lorg/apache/poi/xwpf/usermodel/XWPFNum;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getNumIlvl()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFNum;->getCTNum()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;->getAbstractNumId()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;->getVal()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->getAbstractNum(Ljava/math/BigInteger;)Lorg/apache/poi/xwpf/usermodel/XWPFAbstractNum;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractNum;->getAbstractNum()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;->sizeOfLvlArray()I

    move-result v4

    if-ge v1, v4, :cond_1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;->getLvlArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLvl;

    move-result-object v4

    invoke-interface {v4}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLvl;->getIlvl()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move-object v4, v2

    :goto_1
    if-eqz v4, :cond_2

    invoke-interface {v4}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLvl;->getNumFmt()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumFmt;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLvl;->getNumFmt()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumFmt;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumFmt;->getVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLvl;->getNumFmt()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumFmt;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumFmt;->getVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    return-object v2
.end method

.method public getNumID()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->getNumPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumPr;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->getNumPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumPr;->getNumId()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->getNumPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumPr;->getNumId()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;->getVal()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNumIlvl()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->getNumPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumPr;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->getNumPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumPr;->getIlvl()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->getNumPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumPr;->getIlvl()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;->getVal()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNumLevelText()Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getNumID()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->document:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    invoke-virtual {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getNumbering()Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    if-eqz v1, :cond_7

    invoke-virtual {v1, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->getNum(Ljava/math/BigInteger;)Lorg/apache/poi/xwpf/usermodel/XWPFNum;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getNumIlvl()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFNum;->getCTNum()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;->getAbstractNumId()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v2

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;->getVal()Ljava/math/BigInteger;

    move-result-object v0

    if-nez v0, :cond_2

    return-object v2

    :cond_2
    invoke-virtual {v1, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->getAbstractNum(Ljava/math/BigInteger;)Lorg/apache/poi/xwpf/usermodel/XWPFAbstractNum;

    move-result-object v0

    if-nez v0, :cond_3

    return-object v2

    :cond_3
    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractNum;->getCTAbstractNum()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;

    move-result-object v0

    if-nez v0, :cond_4

    return-object v2

    :cond_4
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;->sizeOfLvlArray()I

    move-result v4

    if-ge v1, v4, :cond_6

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;->getLvlArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLvl;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-interface {v4}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLvl;->getIlvl()Ljava/math/BigInteger;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLvl;->getIlvl()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    move-object v4, v2

    :goto_1
    if-eqz v4, :cond_7

    invoke-interface {v4}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLvl;->getLvlText()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLevelText;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLvl;->getLvlText()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLevelText;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLevelText;->getVal()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLvl;->getLvlText()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLevelText;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLevelText;->getVal()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_7
    return-object v2
.end method

.method public getNumStartOverride()Ljava/math/BigInteger;
    .locals 6

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getNumID()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->document:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    invoke-virtual {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getNumbering()Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->getNum(Ljava/math/BigInteger;)Lorg/apache/poi/xwpf/usermodel/XWPFNum;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFNum;->getCTNum()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getNumIlvl()Ljava/math/BigInteger;

    move-result-object v1

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;->sizeOfLvlOverrideArray()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-interface {v0, v3}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;->getLvlOverrideArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumLvl;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v4}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumLvl;->getIlvl()Ljava/math/BigInteger;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumLvl;->getIlvl()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move-object v4, v2

    :goto_1
    if-eqz v4, :cond_3

    invoke-interface {v4}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumLvl;->getStartOverride()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumLvl;->getStartOverride()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;->getVal()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    :cond_3
    return-object v2
.end method

.method public getParagraphText()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->runs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPart()Lorg/apache/poi/POIXMLDocumentPart;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->part:Lorg/apache/poi/xwpf/usermodel/IBody;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/poi/xwpf/usermodel/IBody;->getPart()Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPartType()Lorg/apache/poi/xwpf/usermodel/BodyType;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->part:Lorg/apache/poi/xwpf/usermodel/IBody;

    invoke-interface {v0}, Lorg/apache/poi/xwpf/usermodel/IBody;->getPartType()Lorg/apache/poi/xwpf/usermodel/BodyType;

    move-result-object v0

    return-object v0
.end method

.method public getPictureText()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->runs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    invoke-virtual {v2}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getPictureText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRun(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;)Lorg/apache/poi/xwpf/usermodel/XWPFRun;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getRuns()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getRuns()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    invoke-virtual {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getCTR()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    move-result-object v1

    if-ne v1, p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getRuns()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getRuns()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFRun;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->runs:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSpacingAfter()I
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTSpacing(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;->isSetAfter()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;->getAfter()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getSpacingAfterLines()I
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTSpacing(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;->isSetAfterLines()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;->getAfterLines()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getSpacingBefore()I
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTSpacing(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;->isSetBefore()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;->getBefore()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getSpacingBeforeLines()I
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTSpacing(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;->isSetBeforeLines()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;->getBeforeLines()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getSpacingBetween()D
    .locals 6

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTSpacing(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;->isSetLine()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;->getLineRule()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLineSpacingRule$Enum;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;->getLineRule()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLineSpacingRule$Enum;

    move-result-object v2

    sget-object v4, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLineSpacingRule;->AUTO:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLineSpacingRule$Enum;

    if-ne v2, v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;->getLine()Ljava/math/BigInteger;

    move-result-object v1

    const-wide/16 v4, 0x14

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v4

    aget-object v0, v1, v3

    invoke-virtual {v0}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    :goto_0
    div-double/2addr v0, v2

    add-double/2addr v4, v0

    return-wide v4

    :cond_2
    :goto_1
    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;->getLine()Ljava/math/BigInteger;

    move-result-object v1

    const-wide/16 v4, 0xf0

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v4

    aget-object v0, v1, v3

    invoke-virtual {v0}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x406e000000000000L    # 240.0

    goto :goto_0

    :cond_3
    :goto_2
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    return-wide v0
.end method

.method public getSpacingLineRule()Lorg/apache/poi/xwpf/usermodel/LineSpacingRule;
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTSpacing(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;->isSetLineRule()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;->getLineRule()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLineSpacingRule$Enum;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/xwpf/usermodel/LineSpacingRule;->valueOf(I)Lorg/apache/poi/xwpf/usermodel/LineSpacingRule;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/poi/xwpf/usermodel/LineSpacingRule;->AUTO:Lorg/apache/poi/xwpf/usermodel/LineSpacingRule;

    :goto_0
    return-object v0
.end method

.method public getStyle()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->isSetPStyle()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->getPStyle()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;->getVal()Ljava/lang/String;

    move-result-object v2

    :cond_1
    return-object v2
.end method

.method public getStyleID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->getPStyle()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->getPStyle()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;->getVal()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->getPStyle()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;->getVal()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->iruns:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xwpf/usermodel/IRunElement;

    instance-of v3, v2, Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    if-eqz v3, :cond_2

    check-cast v2, Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    invoke-virtual {v2}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getCTR()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    move-result-object v3

    invoke-interface {v3}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->isSetRsidDel()Z

    move-result v3

    if-nez v3, :cond_0

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    instance-of v3, v2, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;

    if-eqz v3, :cond_1

    check-cast v2, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;

    invoke-virtual {v2}, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;->getContent()Lorg/apache/poi/xwpf/usermodel/ISDTContent;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/poi/xwpf/usermodel/ISDTContent;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->footnoteText:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText(Lorg/apache/poi/xwpf/usermodel/TextSegement;)Ljava/lang/String;
    .locals 16

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/xwpf/usermodel/TextSegement;->getBeginRun()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/xwpf/usermodel/TextSegement;->getBeginText()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/xwpf/usermodel/TextSegement;->getBeginChar()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/xwpf/usermodel/TextSegement;->getEndRun()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/xwpf/usermodel/TextSegement;->getEndText()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/xwpf/usermodel/TextSegement;->getEndChar()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v7, p0

    iget-object v8, v7, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-interface {v8}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getRArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    move-result-object v8

    move v9, v0

    :goto_0
    if-gt v9, v3, :cond_5

    aget-object v10, v8, v9

    invoke-interface {v10}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->getTArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTText;

    move-result-object v10

    array-length v11, v10

    add-int/lit8 v11, v11, -0x1

    if-ne v9, v0, :cond_0

    move v13, v1

    goto :goto_1

    :cond_0
    const/4 v13, 0x0

    :goto_1
    if-ne v9, v3, :cond_1

    move v11, v4

    :cond_1
    :goto_2
    if-gt v13, v11, :cond_4

    aget-object v14, v10, v13

    invoke-interface {v14}, Lorg/apache/xmlbeans/XmlAnySimpleType;->getStringValue()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    if-ne v13, v1, :cond_2

    if-ne v9, v0, :cond_2

    move v12, v2

    goto :goto_3

    :cond_2
    const/4 v12, 0x0

    :goto_3
    if-ne v13, v4, :cond_3

    if-ne v9, v3, :cond_3

    move v15, v5

    :cond_3
    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v14, v12, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVerticalAlignment()Lorg/apache/poi/xwpf/usermodel/TextAlignment;
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->isSetTextAlignment()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->getTextAlignment()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTextAlignment;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTextAlignment;->getVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextAlignment$Enum;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/xwpf/usermodel/TextAlignment;->valueOf(I)Lorg/apache/poi/xwpf/usermodel/TextAlignment;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v0, Lorg/apache/poi/xwpf/usermodel/TextAlignment;->AUTO:Lorg/apache/poi/xwpf/usermodel/TextAlignment;

    :goto_1
    return-object v0
.end method

.method public insertNewRun(I)Lorg/apache/poi/xwpf/usermodel/XWPFRun;
    .locals 4

    if-ltz p1, :cond_3

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->runs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt p1, v0, :cond_3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p1, :cond_1

    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->runs:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    instance-of v3, v2, Lorg/apache/poi/xwpf/usermodel/XWPFHyperlinkRun;

    if-nez v3, :cond_0

    instance-of v2, v2, Lorg/apache/poi/xwpf/usermodel/XWPFFieldRun;

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->insertNewR(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    invoke-direct {v1, v0, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;Lorg/apache/poi/xwpf/usermodel/IRunBody;)V

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->iruns:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->runs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_2

    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->runs:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    iget-object v3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->iruns:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    move v0, v2

    :cond_2
    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->iruns:Ljava/util/List;

    invoke-interface {v2, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->runs:Ljava/util/List;

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-object v1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlTokenSource;->getDomNode()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isPageBreak()Z
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->isSetPageBreakBefore()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->getPageBreakBefore()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;->getVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    move-result-object v0

    invoke-static {v0, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->isTruelike(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;Z)Z

    move-result v0

    return v0
.end method

.method public isWordWrap()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->isWordWrapped()Z

    move-result v0

    return v0
.end method

.method public isWordWrapped()Z
    .locals 4

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->isSetWordWrap()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->getWordWrap()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;->getVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    move-result-object v2

    sget-object v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;->ON:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    if-eq v2, v3, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;->getVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    move-result-object v2

    sget-object v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;->TRUE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    if-eq v2, v3, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;->getVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    move-result-object v0

    sget-object v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;->X_1:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    if-ne v0, v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public removeRun(I)Z
    .locals 4

    const/4 v0, 0x0

    if-ltz p1, :cond_3

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->runs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_3

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->runs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    instance-of v2, v1, Lorg/apache/poi/xwpf/usermodel/XWPFHyperlinkRun;

    if-nez v2, :cond_2

    instance-of v2, v1, Lorg/apache/poi/xwpf/usermodel/XWPFFieldRun;

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->runs:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->iruns:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move v1, v0

    :goto_0
    if-ge v0, p1, :cond_1

    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->runs:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    instance-of v3, v2, Lorg/apache/poi/xwpf/usermodel/XWPFHyperlinkRun;

    if-nez v3, :cond_0

    instance-of v2, v2, Lorg/apache/poi/xwpf/usermodel/XWPFFieldRun;

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTP()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    move-result-object p1

    invoke-interface {p1, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->removeR(I)V

    const/4 p1, 0x1

    return p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Removing Field or Hyperlink runs not yet supported"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    return v0
.end method

.method public searchText(Ljava/lang/String;Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;)Lorg/apache/poi/xwpf/usermodel/TextSegement;
    .locals 18

    move-object/from16 v0, p1

    invoke-virtual/range {p2 .. p2}, Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;->getRun()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;->getText()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;->getChar()I

    move-result v3

    move-object/from16 v4, p0

    iget-object v5, v4, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-interface {v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getRArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    move-result-object v5

    move v7, v1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    array-length v11, v5

    if-ge v7, v11, :cond_b

    aget-object v11, v5, v7

    invoke-interface {v11}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v11

    const-string v12, "./*"

    invoke-interface {v11, v12}, Lorg/apache/xmlbeans/XmlCursor;->selectPath(Ljava/lang/String;)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_1
    :try_start_0
    invoke-interface {v11}, Lorg/apache/xmlbeans/XmlCursor;->toNextSelection()Z

    move-result v15

    if-eqz v15, :cond_a

    invoke-interface {v11}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v15

    instance-of v6, v15, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTText;

    if-eqz v6, :cond_7

    if-lt v12, v2, :cond_5

    check-cast v15, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTText;

    invoke-interface {v15}, Lorg/apache/xmlbeans/XmlAnySimpleType;->getStringValue()Ljava/lang/String;

    move-result-object v6

    move/from16 v16, v1

    if-ne v7, v1, :cond_0

    move v15, v3

    goto :goto_2

    :cond_0
    const/4 v15, 0x0

    :goto_2
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v15, v1, :cond_6

    invoke-virtual {v6, v15}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move/from16 v17, v2

    move/from16 p2, v3

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v1, v3, :cond_1

    if-nez v8, :cond_1

    const/4 v9, 0x1

    move v10, v7

    move v13, v12

    move v14, v15

    :cond_1
    invoke-virtual {v6, v15}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v1, v3, :cond_3

    add-int/lit8 v1, v8, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    move v8, v1

    goto :goto_3

    :cond_2
    if-eqz v9, :cond_4

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/TextSegement;

    invoke-direct {v0}, Lorg/apache/poi/xwpf/usermodel/TextSegement;-><init>()V

    invoke-virtual {v0, v10}, Lorg/apache/poi/xwpf/usermodel/TextSegement;->setBeginRun(I)V

    invoke-virtual {v0, v13}, Lorg/apache/poi/xwpf/usermodel/TextSegement;->setBeginText(I)V

    invoke-virtual {v0, v14}, Lorg/apache/poi/xwpf/usermodel/TextSegement;->setBeginChar(I)V

    invoke-virtual {v0, v7}, Lorg/apache/poi/xwpf/usermodel/TextSegement;->setEndRun(I)V

    invoke-virtual {v0, v12}, Lorg/apache/poi/xwpf/usermodel/TextSegement;->setEndText(I)V

    invoke-virtual {v0, v15}, Lorg/apache/poi/xwpf/usermodel/TextSegement;->setEndChar(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v11}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    return-object v0

    :cond_3
    move v8, v2

    :cond_4
    :goto_3
    add-int/lit8 v15, v15, 0x1

    move/from16 v3, p2

    move/from16 v2, v17

    goto :goto_2

    :cond_5
    move/from16 v16, v1

    :cond_6
    move/from16 v17, v2

    move/from16 p2, v3

    const/4 v2, 0x0

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_7
    move/from16 v16, v1

    move/from16 v17, v2

    move/from16 p2, v3

    const/4 v2, 0x0

    :try_start_1
    instance-of v1, v15, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTProofErr;

    if-eqz v1, :cond_8

    invoke-interface {v11}, Lorg/apache/xmlbeans/XmlCursor;->removeXml()Z

    goto :goto_4

    :cond_8
    instance-of v1, v15, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_9

    goto :goto_4

    :cond_9
    move v8, v2

    :goto_4
    move/from16 v3, p2

    move/from16 v1, v16

    move/from16 v2, v17

    goto/16 :goto_1

    :cond_a
    move/from16 v16, v1

    move/from16 v17, v2

    move/from16 p2, v3

    const/4 v2, 0x0

    invoke-interface {v11}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    add-int/lit8 v7, v7, 0x1

    move/from16 v3, p2

    move/from16 v1, v16

    move/from16 v2, v17

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v11}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    throw v0

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public setAlignment(Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;)V
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->isSetJc()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->getJc()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTJc;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->addNewJc()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTJc;

    move-result-object v0

    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;->getValue()I

    move-result p1

    invoke-static {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STJc$Enum;->forInt(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STJc$Enum;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTJc;->setVal(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STJc$Enum;)V

    return-void
.end method

.method public setBorderBetween(Lorg/apache/poi/xwpf/usermodel/Borders;)V
    .locals 4

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTPBrd(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;->isSetBetween()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;->getBetween()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;->addNewBetween()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    move-result-object v1

    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/Borders;->getValue()I

    move-result v2

    sget-object v3, Lorg/apache/poi/xwpf/usermodel/Borders;->NONE:Lorg/apache/poi/xwpf/usermodel/Borders;

    invoke-virtual {v3}, Lorg/apache/poi/xwpf/usermodel/Borders;->getValue()I

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;->unsetBetween()V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/Borders;->getValue()I

    move-result p1

    invoke-static {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;->forInt(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;

    move-result-object p1

    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;->setVal(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;)V

    :goto_1
    return-void
.end method

.method public setBorderBottom(Lorg/apache/poi/xwpf/usermodel/Borders;)V
    .locals 4

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTPBrd(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;->isSetBottom()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;->getBottom()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;->addNewBottom()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    move-result-object v1

    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/Borders;->getValue()I

    move-result v2

    sget-object v3, Lorg/apache/poi/xwpf/usermodel/Borders;->NONE:Lorg/apache/poi/xwpf/usermodel/Borders;

    invoke-virtual {v3}, Lorg/apache/poi/xwpf/usermodel/Borders;->getValue()I

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;->unsetBottom()V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/Borders;->getValue()I

    move-result p1

    invoke-static {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;->forInt(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;

    move-result-object p1

    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;->setVal(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;)V

    :goto_1
    return-void
.end method

.method public setBorderLeft(Lorg/apache/poi/xwpf/usermodel/Borders;)V
    .locals 4

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTPBrd(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;->isSetLeft()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;->getLeft()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;->addNewLeft()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    move-result-object v1

    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/Borders;->getValue()I

    move-result v2

    sget-object v3, Lorg/apache/poi/xwpf/usermodel/Borders;->NONE:Lorg/apache/poi/xwpf/usermodel/Borders;

    invoke-virtual {v3}, Lorg/apache/poi/xwpf/usermodel/Borders;->getValue()I

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;->unsetLeft()V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/Borders;->getValue()I

    move-result p1

    invoke-static {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;->forInt(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;

    move-result-object p1

    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;->setVal(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;)V

    :goto_1
    return-void
.end method

.method public setBorderRight(Lorg/apache/poi/xwpf/usermodel/Borders;)V
    .locals 4

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTPBrd(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;->isSetRight()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;->getRight()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;->addNewRight()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    move-result-object v1

    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/Borders;->getValue()I

    move-result v2

    sget-object v3, Lorg/apache/poi/xwpf/usermodel/Borders;->NONE:Lorg/apache/poi/xwpf/usermodel/Borders;

    invoke-virtual {v3}, Lorg/apache/poi/xwpf/usermodel/Borders;->getValue()I

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;->unsetRight()V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/Borders;->getValue()I

    move-result p1

    invoke-static {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;->forInt(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;

    move-result-object p1

    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;->setVal(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;)V

    :goto_1
    return-void
.end method

.method public setBorderTop(Lorg/apache/poi/xwpf/usermodel/Borders;)V
    .locals 4

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTPBrd(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;->isSetTop()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;->getTop()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;->addNewTop()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    move-result-object v1

    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/Borders;->getValue()I

    move-result v2

    sget-object v3, Lorg/apache/poi/xwpf/usermodel/Borders;->NONE:Lorg/apache/poi/xwpf/usermodel/Borders;

    invoke-virtual {v3}, Lorg/apache/poi/xwpf/usermodel/Borders;->getValue()I

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;->unsetTop()V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/Borders;->getValue()I

    move-result p1

    invoke-static {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;->forInt(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;

    move-result-object p1

    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;->setVal(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;)V

    :goto_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "invalid paragraph state"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setFirstLineIndent(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->setIndentationFirstLine(I)V

    return-void
.end method

.method public setFontAlignment(I)V
    .locals 0

    invoke-static {p1}, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;->valueOf(I)Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->setAlignment(Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;)V

    return-void
.end method

.method public setIndentFromLeft(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->setIndentationLeft(I)V

    return-void
.end method

.method public setIndentFromRight(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->setIndentationRight(I)V

    return-void
.end method

.method public setIndentationFirstLine(I)V
    .locals 4

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTInd(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;

    move-result-object v0

    new-instance v1, Ljava/math/BigInteger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;->setFirstLine(Ljava/math/BigInteger;)V

    return-void
.end method

.method public setIndentationHanging(I)V
    .locals 4

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTInd(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;

    move-result-object v0

    new-instance v1, Ljava/math/BigInteger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;->setHanging(Ljava/math/BigInteger;)V

    return-void
.end method

.method public setIndentationLeft(I)V
    .locals 4

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTInd(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;

    move-result-object v0

    new-instance v1, Ljava/math/BigInteger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;->setLeft(Ljava/math/BigInteger;)V

    return-void
.end method

.method public setIndentationRight(I)V
    .locals 4

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTInd(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;

    move-result-object v0

    new-instance v1, Ljava/math/BigInteger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;->setRight(Ljava/math/BigInteger;)V

    return-void
.end method

.method public setNumID(Ljava/math/BigInteger;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->addNewPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->getNumPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumPr;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->addNewNumPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumPr;

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->getNumPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumPr;->getNumId()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->getNumPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumPr;->addNewNumId()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;

    :cond_2
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->getNumPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumPr;->getNumId()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;->setVal(Ljava/math/BigInteger;)V

    return-void
.end method

.method public setPageBreak(Z)V
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->isSetPageBreakBefore()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->getPageBreakBefore()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->addNewPageBreakBefore()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object v0

    :goto_0
    if-eqz p1, :cond_1

    sget-object p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;->TRUE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    goto :goto_1

    :cond_1
    sget-object p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;->FALSE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    :goto_1
    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;->setVal(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;)V

    return-void
.end method

.method public setSpacingAfter(I)V
    .locals 4

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTSpacing(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/math/BigInteger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;->setAfter(Ljava/math/BigInteger;)V

    :cond_0
    return-void
.end method

.method public setSpacingAfterLines(I)V
    .locals 4

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTSpacing(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;

    move-result-object v0

    new-instance v1, Ljava/math/BigInteger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;->setAfterLines(Ljava/math/BigInteger;)V

    return-void
.end method

.method public setSpacingBefore(I)V
    .locals 4

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTSpacing(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;

    move-result-object v0

    new-instance v1, Ljava/math/BigInteger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;->setBefore(Ljava/math/BigInteger;)V

    return-void
.end method

.method public setSpacingBeforeLines(I)V
    .locals 4

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTSpacing(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;

    move-result-object v0

    new-instance v1, Ljava/math/BigInteger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;->setBeforeLines(Ljava/math/BigInteger;)V

    return-void
.end method

.method public setSpacingBetween(D)V
    .locals 1

    sget-object v0, Lorg/apache/poi/xwpf/usermodel/LineSpacingRule;->AUTO:Lorg/apache/poi/xwpf/usermodel/LineSpacingRule;

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->setSpacingBetween(DLorg/apache/poi/xwpf/usermodel/LineSpacingRule;)V

    return-void
.end method

.method public setSpacingBetween(DLorg/apache/poi/xwpf/usermodel/LineSpacingRule;)V
    .locals 4

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTSpacing(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph$1;->$SwitchMap$org$apache$poi$xwpf$usermodel$LineSpacingRule:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v0, :cond_0

    new-instance v0, Ljava/math/BigInteger;

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    mul-double/2addr p1, v2

    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    const-wide/high16 v2, 0x406e000000000000L    # 240.0

    mul-double/2addr p1, v2

    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-interface {v1, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;->setLine(Ljava/math/BigInteger;)V

    invoke-virtual {p3}, Lorg/apache/poi/xwpf/usermodel/LineSpacingRule;->getValue()I

    move-result p1

    invoke-static {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLineSpacingRule$Enum;->forInt(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLineSpacingRule$Enum;

    move-result-object p1

    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;->setLineRule(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLineSpacingRule$Enum;)V

    return-void
.end method

.method public setSpacingLineRule(Lorg/apache/poi/xwpf/usermodel/LineSpacingRule;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTSpacing(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/LineSpacingRule;->getValue()I

    move-result p1

    invoke-static {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLineSpacingRule$Enum;->forInt(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLineSpacingRule$Enum;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;->setLineRule(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLineSpacingRule$Enum;)V

    return-void
.end method

.method public setStyle(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->getPStyle()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->getPStyle()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->addNewPStyle()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;

    move-result-object v0

    :goto_0
    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;->setVal(Ljava/lang/String;)V

    return-void
.end method

.method public setVerticalAlignment(Lorg/apache/poi/xwpf/usermodel/TextAlignment;)V
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->isSetTextAlignment()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->getTextAlignment()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTextAlignment;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->addNewTextAlignment()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTextAlignment;

    move-result-object v0

    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/TextAlignment;->getValue()I

    move-result p1

    invoke-static {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextAlignment$Enum;->forInt(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextAlignment$Enum;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTextAlignment;->setVal(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextAlignment$Enum;)V

    return-void
.end method

.method public setWordWrap(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->setWordWrapped(Z)V

    return-void
.end method

.method public setWordWrapped(Z)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->isSetWordWrap()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->getWordWrap()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->addNewWordWrap()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object v0

    :goto_0
    if-eqz p1, :cond_1

    sget-object p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;->TRUE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;->setVal(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;)V

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;->unsetVal()V

    :goto_1
    return-void
.end method
