.class public Lorg/apache/poi/xssf/model/CommentsTable;
.super Lorg/apache/poi/POIXMLDocumentPart;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field public static final DEFAULT_AUTHOR:Ljava/lang/String; = ""

.field public static final DEFAULT_AUTHOR_ID:I


# instance fields
.field private commentRefs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/poi/ss/util/CellAddress;",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;",
            ">;"
        }
    .end annotation
.end field

.field private comments:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/POIXMLDocumentPart;-><init>()V

    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/model/CommentsTable;->comments:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments;->addNewCommentList()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCommentList;

    iget-object v0, p0, Lorg/apache/poi/xssf/model/CommentsTable;->comments:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments;->addNewAuthors()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTAuthors;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTAuthors;->addAuthor(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/POIXMLDocumentPart;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/model/CommentsTable;->readFrom(Ljava/io/InputStream;)V

    return-void
.end method

.method private addNewAuthor(Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/model/CommentsTable;->comments:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments;->getAuthors()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTAuthors;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTAuthors;->sizeOfAuthorArray()I

    move-result v0

    iget-object v1, p0, Lorg/apache/poi/xssf/model/CommentsTable;->comments:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments;->getAuthors()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTAuthors;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTAuthors;->insertAuthor(ILjava/lang/String;)V

    return v0
.end method

.method private prepareCTCommentCache()V
    .locals 7

    iget-object v0, p0, Lorg/apache/poi/xssf/model/CommentsTable;->commentRefs:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/model/CommentsTable;->commentRefs:Ljava/util/Map;

    iget-object v0, p0, Lorg/apache/poi/xssf/model/CommentsTable;->comments:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments;->getCommentList()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCommentList;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCommentList;->getCommentArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    iget-object v4, p0, Lorg/apache/poi/xssf/model/CommentsTable;->commentRefs:Ljava/util/Map;

    new-instance v5, Lorg/apache/poi/ss/util/CellAddress;

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;->getRef()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/poi/ss/util/CellAddress;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public commit()V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/model/CommentsTable;->writeTo(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public findAuthor(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xssf/model/CommentsTable;->comments:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments;->getAuthors()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTAuthors;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTAuthors;->getAuthorArray()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/model/CommentsTable;->addNewAuthor(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public findCellComment(Lorg/apache/poi/ss/util/CellAddress;)Lorg/apache/poi/xssf/usermodel/XSSFComment;
    .locals 2

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/model/CommentsTable;->getCTComment(Lorg/apache/poi/ss/util/CellAddress;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFComment;

    invoke-direct {v1, p0, p1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFComment;-><init>(Lorg/apache/poi/xssf/model/CommentsTable;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;Lcom/microsoft/schemas/vml/CTShape;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public getAuthor(J)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/model/CommentsTable;->comments:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments;->getAuthors()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTAuthors;

    move-result-object v0

    long-to-int p1, p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTAuthors;->getAuthorArray(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCTComment(Lorg/apache/poi/ss/util/CellAddress;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    invoke-direct {p0}, Lorg/apache/poi/xssf/model/CommentsTable;->prepareCTCommentCache()V

    iget-object v0, p0, Lorg/apache/poi/xssf/model/CommentsTable;->commentRefs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;

    return-object p1
.end method

.method public getCTComments()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/model/CommentsTable;->comments:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments;

    return-object v0
.end method

.method public getCellComments()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lorg/apache/poi/ss/util/CellAddress;",
            "Lorg/apache/poi/xssf/usermodel/XSSFComment;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/poi/xssf/model/CommentsTable;->prepareCTCommentCache()V

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/xssf/model/CommentsTable;->commentRefs:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Lorg/apache/poi/xssf/usermodel/XSSFComment;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v2, v5}, Lorg/apache/poi/xssf/usermodel/XSSFComment;-><init>(Lorg/apache/poi/xssf/model/CommentsTable;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;Lcom/microsoft/schemas/vml/CTShape;)V

    invoke-virtual {v0, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getNumberOfAuthors()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/model/CommentsTable;->comments:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments;->getAuthors()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTAuthors;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTAuthors;->sizeOfAuthorArray()I

    move-result v0

    return v0
.end method

.method public getNumberOfComments()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/model/CommentsTable;->comments:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments;->getCommentList()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCommentList;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCommentList;->sizeOfCommentArray()I

    move-result v0

    return v0
.end method

.method public newComment(Lorg/apache/poi/ss/util/CellAddress;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;
    .locals 3
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/model/CommentsTable;->comments:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments;->getCommentList()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCommentList;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCommentList;->addNewComment()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellAddress;->formatAsString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;->setRef(Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;->setAuthorId(J)V

    iget-object v1, p0, Lorg/apache/poi/xssf/model/CommentsTable;->commentRefs:Ljava/util/Map;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public readFrom(Ljava/io/InputStream;)V
    .locals 1

    :try_start_0
    sget-object v0, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {p1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CommentsDocument$Factory;->parse(Ljava/io/InputStream;Lorg/apache/xmlbeans/XmlOptions;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CommentsDocument;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CommentsDocument;->getComments()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xssf/model/CommentsTable;->comments:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments;
    :try_end_0
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public referenceUpdated(Lorg/apache/poi/ss/util/CellAddress;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/model/CommentsTable;->commentRefs:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/apache/poi/xssf/model/CommentsTable;->commentRefs:Ljava/util/Map;

    new-instance v0, Lorg/apache/poi/ss/util/CellAddress;

    invoke-interface {p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;->getRef()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/util/CellAddress;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public removeComment(Lorg/apache/poi/ss/util/CellAddress;)Z
    .locals 6

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellAddress;->formatAsString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xssf/model/CommentsTable;->comments:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments;->getCommentList()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCommentList;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCommentList;->getCommentArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;

    move-result-object v3

    move v4, v2

    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_2

    aget-object v5, v3, v4

    invoke-interface {v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;->getRef()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1, v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCommentList;->removeComment(I)V

    iget-object v0, p0, Lorg/apache/poi/xssf/model/CommentsTable;->commentRefs:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 2

    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CommentsDocument$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CommentsDocument;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xssf/model/CommentsTable;->comments:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CommentsDocument;->setComments(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments;)V

    sget-object v1, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-interface {v0, p1, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CommentsDocument;->save(Ljava/io/OutputStream;Lorg/apache/xmlbeans/XmlOptions;)V

    return-void
.end method
