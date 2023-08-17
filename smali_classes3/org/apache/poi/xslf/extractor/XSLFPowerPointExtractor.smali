.class public Lorg/apache/poi/xslf/extractor/XSLFPowerPointExtractor;
.super Lorg/apache/poi/POIXMLTextExtractor;
.source "SourceFile"


# static fields
.field public static final synthetic $assertionsDisabled:Z

.field public static final SUPPORTED_TYPES:[Lorg/apache/poi/xslf/usermodel/XSLFRelation;


# instance fields
.field private masterByDefault:Z

.field private notesByDefault:Z

.field private slidesByDefault:Z

.field private slideshow:Lorg/apache/poi/xslf/usermodel/XMLSlideShow;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-class v0, Lorg/apache/poi/xslf/extractor/XSLFPowerPointExtractor;

    const/4 v0, 0x6

    new-array v0, v0, [Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    const/4 v1, 0x0

    sget-object v2, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->MAIN:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->MACRO:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->MACRO_TEMPLATE:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->PRESENTATIONML:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->PRESENTATIONML_TEMPLATE:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->PRESENTATION_MACRO:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/poi/xslf/extractor/XSLFPowerPointExtractor;->SUPPORTED_TYPES:[Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V
    .locals 1

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFSlideShow;

    invoke-direct {v0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFSlideShow;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/extractor/XSLFPowerPointExtractor;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFSlideShow;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xslf/usermodel/XMLSlideShow;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/poi/POIXMLTextExtractor;-><init>(Lorg/apache/poi/POIXMLDocument;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/xslf/extractor/XSLFPowerPointExtractor;->slidesByDefault:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/xslf/extractor/XSLFPowerPointExtractor;->notesByDefault:Z

    iput-boolean v0, p0, Lorg/apache/poi/xslf/extractor/XSLFPowerPointExtractor;->masterByDefault:Z

    iput-object p1, p0, Lorg/apache/poi/xslf/extractor/XSLFPowerPointExtractor;->slideshow:Lorg/apache/poi/xslf/usermodel/XMLSlideShow;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xslf/usermodel/XSLFSlideShow;)V
    .locals 1

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;

    invoke-virtual {p1}, Lorg/apache/poi/POIXMLDocument;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/extractor/XSLFPowerPointExtractor;-><init>(Lorg/apache/poi/xslf/usermodel/XMLSlideShow;)V

    return-void
.end method

.method private static extractText(Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;ZLjava/lang/StringBuilder;)V
    .locals 4

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xslf/usermodel/XSLFShape;

    instance-of v1, v0, Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;

    invoke-static {v0, p1, p2}, Lorg/apache/poi/xslf/extractor/XSLFPowerPointExtractor;->extractText(Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;ZLjava/lang/StringBuilder;)V

    goto :goto_0

    :cond_1
    instance-of v1, v0, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;

    const-string v2, "\n"

    if-eqz v1, :cond_3

    check-cast v0, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->isPlaceholder()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    instance-of v1, v0, Lorg/apache/poi/xslf/usermodel/XSLFTable;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/apache/poi/xslf/usermodel/XSLFTable;

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFTable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xslf/usermodel/XSLFTableRow;

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFTableRow;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;

    invoke-virtual {v3}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\t"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    return-void
.end method

.method public static getText(Lorg/apache/poi/xslf/usermodel/XSLFSlide;ZZZ)Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getSlideShow()Lorg/apache/poi/xslf/usermodel/XMLSlideShow;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->getCommentAuthors()Lorg/apache/poi/xslf/usermodel/XSLFCommentAuthors;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlide;->getNotes()Lorg/apache/poi/xslf/usermodel/XSLFNotes;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlide;->getComments()Lorg/apache/poi/xslf/usermodel/XSLFComments;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlide;->getSlideLayout()Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;->getSlideMaster()Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz p1, :cond_2

    invoke-static {p0, v6, v0}, Lorg/apache/poi/xslf/extractor/XSLFPowerPointExtractor;->extractText(Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;ZLjava/lang/StringBuilder;)V

    if-eqz p3, :cond_0

    const/4 p0, 0x1

    invoke-static {v4, p0, v0}, Lorg/apache/poi/xslf/extractor/XSLFPowerPointExtractor;->extractText(Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;ZLjava/lang/StringBuilder;)V

    invoke-static {v5, p0, v0}, Lorg/apache/poi/xslf/extractor/XSLFPowerPointExtractor;->extractText(Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;ZLjava/lang/StringBuilder;)V

    :cond_0
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lorg/apache/poi/xslf/usermodel/XSLFComments;->getCTCommentsList()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentList;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentList;->getCmArray()[Lorg/openxmlformats/schemas/presentationml/x2006/main/CTComment;

    move-result-object p0

    array-length p1, p0

    move p3, v6

    :goto_0
    if-ge p3, p1, :cond_2

    aget-object v3, p0, p3

    if-eqz v1, :cond_1

    invoke-interface {v3}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTComment;->getAuthorId()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lorg/apache/poi/xslf/usermodel/XSLFCommentAuthors;->getAuthorById(J)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentAuthor;

    move-result-object v4

    if-eqz v4, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentAuthor;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-interface {v3}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTComment;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    if-eqz v2, :cond_3

    invoke-static {v2, v6, v0}, Lorg/apache/poi/xslf/extractor/XSLFPowerPointExtractor;->extractText(Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;ZLjava/lang/StringBuilder;)V

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3

    array-length v0, p0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Use:"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "  XSLFPowerPointExtractor <filename.pptx>"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    :cond_0
    new-instance v0, Lorg/apache/poi/xslf/extractor/XSLFPowerPointExtractor;

    new-instance v1, Lorg/apache/poi/xslf/usermodel/XSLFSlideShow;

    const/4 v2, 0x0

    aget-object p0, p0, v2

    invoke-direct {v1, p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlideShow;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/apache/poi/xslf/extractor/XSLFPowerPointExtractor;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFSlideShow;)V

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Lorg/apache/poi/POIXMLTextExtractor;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/poi/POIXMLTextExtractor;->close()V

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lorg/apache/poi/xslf/extractor/XSLFPowerPointExtractor;->slidesByDefault:Z

    iget-boolean v1, p0, Lorg/apache/poi/xslf/extractor/XSLFPowerPointExtractor;->notesByDefault:Z

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/xslf/extractor/XSLFPowerPointExtractor;->getText(ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText(ZZ)Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/xslf/extractor/XSLFPowerPointExtractor;->masterByDefault:Z

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/poi/xslf/extractor/XSLFPowerPointExtractor;->getText(ZZZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getText(ZZZ)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/xslf/extractor/XSLFPowerPointExtractor;->slideshow:Lorg/apache/poi/xslf/usermodel/XMLSlideShow;

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->getSlides()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xslf/usermodel/XSLFSlide;

    invoke-static {v2, p1, p2, p3}, Lorg/apache/poi/xslf/extractor/XSLFPowerPointExtractor;->getText(Lorg/apache/poi/xslf/usermodel/XSLFSlide;ZZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setMasterByDefault(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/xslf/extractor/XSLFPowerPointExtractor;->masterByDefault:Z

    return-void
.end method

.method public setNotesByDefault(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/xslf/extractor/XSLFPowerPointExtractor;->notesByDefault:Z

    return-void
.end method

.method public setSlidesByDefault(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/xslf/extractor/XSLFPowerPointExtractor;->slidesByDefault:Z

    return-void
.end method
