.class public Lorg/apache/poi/xslf/usermodel/XSLFCommentAuthors;
.super Lorg/apache/poi/POIXMLDocumentPart;
.source "SourceFile"


# instance fields
.field private final _authors:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentAuthorList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/POIXMLDocumentPart;-><init>()V

    invoke-static {}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CmAuthorLstDocument$Factory;->newInstance()Lorg/openxmlformats/schemas/presentationml/x2006/main/CmAuthorLstDocument;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CmAuthorLstDocument;->addNewCmAuthorLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentAuthorList;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFCommentAuthors;->_authors:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentAuthorList;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/poi/POIXMLDocumentPart;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    sget-object v0, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {p1, v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CmAuthorLstDocument$Factory;->parse(Ljava/io/InputStream;Lorg/apache/xmlbeans/XmlOptions;)Lorg/openxmlformats/schemas/presentationml/x2006/main/CmAuthorLstDocument;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CmAuthorLstDocument;->getCmAuthorLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentAuthorList;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFCommentAuthors;->_authors:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentAuthorList;

    return-void
.end method


# virtual methods
.method public getAuthorById(J)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentAuthor;
    .locals 6

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFCommentAuthors;->_authors:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentAuthorList;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentAuthorList;->getCmAuthorArray()[Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentAuthor;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-interface {v3}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentAuthor;->getId()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-nez v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCTCommentAuthorsList()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentAuthorList;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFCommentAuthors;->_authors:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentAuthorList;

    return-object v0
.end method
