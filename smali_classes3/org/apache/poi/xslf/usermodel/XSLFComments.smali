.class public Lorg/apache/poi/xslf/usermodel/XSLFComments;
.super Lorg/apache/poi/POIXMLDocumentPart;
.source "SourceFile"


# instance fields
.field private final _comments:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/POIXMLDocumentPart;-><init>()V

    invoke-static {}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CmLstDocument$Factory;->newInstance()Lorg/openxmlformats/schemas/presentationml/x2006/main/CmLstDocument;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CmLstDocument;->addNewCmLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentList;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFComments;->_comments:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentList;

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

    invoke-static {p1, v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CmLstDocument$Factory;->parse(Ljava/io/InputStream;Lorg/apache/xmlbeans/XmlOptions;)Lorg/openxmlformats/schemas/presentationml/x2006/main/CmLstDocument;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CmLstDocument;->getCmLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentList;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFComments;->_comments:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentList;

    return-void
.end method


# virtual methods
.method public getCTCommentsList()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentList;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFComments;->_comments:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentList;

    return-object v0
.end method

.method public getCommentAt(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTComment;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFComments;->_comments:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentList;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentList;->getCmArray(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTComment;

    move-result-object p1

    return-object p1
.end method

.method public getNumberOfComments()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFComments;->_comments:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentList;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentList;->sizeOfCmArray()I

    move-result v0

    return v0
.end method
