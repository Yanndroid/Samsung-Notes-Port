.class abstract Lorg/apache/xmlbeans/impl/store/Locale$SaxHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/xml/sax/ContentHandler;
.implements Lorg/xml/sax/ext/LexicalHandler;
.implements Lorg/xml/sax/ext/DeclHandler;
.implements Lorg/xml/sax/DTDHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/store/Locale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SaxHandler"
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z


# instance fields
.field public _context:Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;

.field private _entityBytes:I

.field private _entityBytesLimit:I

.field private _insideCDATA:Z

.field private _insideEntity:I

.field public _locale:Lorg/apache/xmlbeans/impl/store/Locale;

.field private _startLocator:Lorg/xml/sax/Locator;

.field private _wantCdataBookmarks:Z

.field private _wantLineNumbers:Z

.field private _wantLineNumbersAtEndElt:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/impl/store/Locale;->class$org$apache$xmlbeans$impl$store$Locale:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.xmlbeans.impl.store.Locale"

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/store/Locale;->class$org$apache$xmlbeans$impl$store$Locale:Ljava/lang/Class;

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lorg/apache/xmlbeans/impl/store/Locale$SaxHandler;->$assertionsDisabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Locale$SaxHandler;-><init>(Lorg/xml/sax/Locator;)V

    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/Locator;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/store/Locale$SaxHandler;->_insideCDATA:Z

    const/16 v1, 0x2800

    iput v1, p0, Lorg/apache/xmlbeans/impl/store/Locale$SaxHandler;->_entityBytesLimit:I

    iput v0, p0, Lorg/apache/xmlbeans/impl/store/Locale$SaxHandler;->_entityBytes:I

    iput v0, p0, Lorg/apache/xmlbeans/impl/store/Locale$SaxHandler;->_insideEntity:I

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/Locale$SaxHandler;->_startLocator:Lorg/xml/sax/Locator;

    return-void
.end method


# virtual methods
.method public attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p4, "ID"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lorg/apache/xmlbeans/impl/store/Locale$SaxHandler;->_context:Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;

    invoke-virtual {p3, p1, p2}, Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;->addIdAttr(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public characters([CII)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale$SaxHandler;->_context:Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;->text([CII)V

    iget-boolean p1, p0, Lorg/apache/xmlbeans/impl/store/Locale$SaxHandler;->_wantCdataBookmarks:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lorg/apache/xmlbeans/impl/store/Locale$SaxHandler;->_insideCDATA:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Locale$SaxHandler;->_context:Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;

    sget-object p2, Lorg/apache/xmlbeans/CDataBookmark;->CDATA_BOOKMARK:Lorg/apache/xmlbeans/CDataBookmark;

    invoke-virtual {p1, p2}, Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;->bookmarkLastNonAttr(Lorg/apache/xmlbeans/XmlCursor$XmlBookmark;)V

    :cond_0
    iget p1, p0, Lorg/apache/xmlbeans/impl/store/Locale$SaxHandler;->_insideEntity:I

    if-eqz p1, :cond_2

    iget p1, p0, Lorg/apache/xmlbeans/impl/store/Locale$SaxHandler;->_entityBytes:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/apache/xmlbeans/impl/store/Locale$SaxHandler;->_entityBytes:I

    iget p2, p0, Lorg/apache/xmlbeans/impl/store/Locale$SaxHandler;->_entityBytesLimit:I

    if-gt p1, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Integer;

    const/4 p3, 0x0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v0, p1, p3

    const-string p2, "exceeded-entity-bytes"

    invoke-static {p2, p1}, Lorg/apache/xmlbeans/XmlError;->forMessage(Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlError;

    move-result-object p1

    new-instance p2, Lorg/xml/sax/SAXException;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/XmlError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    :goto_0
    return-void
.end method

.method public comment([CII)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale$SaxHandler;->_context:Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;->comment([CII)V

    return-void
.end method

.method public elementDecl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public endCDATA()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/store/Locale$SaxHandler;->_insideCDATA:Z

    return-void
.end method

.method public endDTD()V
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale$SaxHandler;->_context:Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;->endDTD()V

    return-void
.end method

.method public endDocument()V
    .locals 0

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Locale$SaxHandler;->_context:Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;->endElement()V

    iget-boolean p1, p0, Lorg/apache/xmlbeans/impl/store/Locale$SaxHandler;->_wantLineNumbersAtEndElt:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Locale$SaxHandler;->_context:Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;

    new-instance p2, Lorg/apache/xmlbeans/XmlLineNumber;

    iget-object p3, p0, Lorg/apache/xmlbeans/impl/store/Locale$SaxHandler;->_startLocator:Lorg/xml/sax/Locator;

    invoke-interface {p3}, Lorg/xml/sax/Locator;->getLineNumber()I

    move-result p3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale$SaxHandler;->_startLocator:Lorg/xml/sax/Locator;

    invoke-interface {v0}, Lorg/xml/sax/Locator;->getColumnNumber()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-direct {p2, p3, v0, v1}, Lorg/apache/xmlbeans/XmlLineNumber;-><init>(III)V

    invoke-virtual {p1, p2}, Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;->bookmark(Lorg/apache/xmlbeans/XmlCursor$XmlBookmark;)V

    :cond_0
    return-void
.end method

.method public endEntity(Ljava/lang/String;)V
    .locals 1

    iget p1, p0, Lorg/apache/xmlbeans/impl/store/Locale$SaxHandler;->_insideEntity:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/apache/xmlbeans/impl/store/Locale$SaxHandler;->_insideEntity:I

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Locale$SaxHandler;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/xmlbeans/impl/store/Locale$SaxHandler;->_entityBytes:I

    :cond_2
    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public externalEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public ignorableWhitespace([CII)V
    .locals 0

    return-void
.end method

.method public initSaxHandler(Lorg/apache/xmlbeans/impl/store/Locale;Lorg/apache/xmlbeans/XmlOptions;)V
    .locals 2

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/Locale$SaxHandler;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-static {p2}, Lorg/apache/xmlbeans/XmlOptions;->maskNull(Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p1

    new-instance p2, Lorg/apache/xmlbeans/impl/store/Cur$CurLoadContext;

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale$SaxHandler;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-direct {p2, v0, p1}, Lorg/apache/xmlbeans/impl/store/Cur$CurLoadContext;-><init>(Lorg/apache/xmlbeans/impl/store/Locale;Lorg/apache/xmlbeans/XmlOptions;)V

    iput-object p2, p0, Lorg/apache/xmlbeans/impl/store/Locale$SaxHandler;->_context:Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;

    iget-object p2, p0, Lorg/apache/xmlbeans/impl/store/Locale$SaxHandler;->_startLocator:Lorg/xml/sax/Locator;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const-string p2, "LOAD_LINE_NUMBERS"

    invoke-virtual {p1, p2}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    iput-boolean p2, p0, Lorg/apache/xmlbeans/impl/store/Locale$SaxHandler;->_wantLineNumbers:Z

    iget-object p2, p0, Lorg/apache/xmlbeans/impl/store/Locale$SaxHandler;->_startLocator:Lorg/xml/sax/Locator;

    if-eqz p2, :cond_1

    const-string p2, "LOAD_LINE_NUMBERS_END_ELEMENT"

    invoke-virtual {p1, p2}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    move p2, v0

    goto :goto_1

    :cond_1
    move p2, v1

    :goto_1
    iput-boolean p2, p0, Lorg/apache/xmlbeans/impl/store/Locale$SaxHandler;->_wantLineNumbersAtEndElt:Z

    iget-object p2, p0, Lorg/apache/xmlbeans/impl/store/Locale$SaxHandler;->_startLocator:Lorg/xml/sax/Locator;

    if-eqz p2, :cond_2

    const-string p2, "LOAD_SAVE_CDATA_BOOKMARKS"

    invoke-virtual {p1, p2}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/store/Locale$SaxHandler;->_wantCdataBookmarks:Z

    const-string p2, "LOAD_ENTITY_BYTES_LIMIT"

    invoke-virtual {p1, p2}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1, p2}, Lorg/apache/xmlbeans/XmlOptions;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lorg/apache/xmlbeans/impl/store/Locale$SaxHandler;->_entityBytesLimit:I

    :cond_3
    return-void
.end method

.method public internalEntityDecl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale$SaxHandler;->_context:Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;

    invoke-virtual {v0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;->procInst(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0

    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public startCDATA()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/store/Locale$SaxHandler;->_insideCDATA:Z

    return-void
.end method

.method public startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale$SaxHandler;->_context:Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;->startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startDocument()V
    .locals 0

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 7

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    const/16 p2, 0x3a

    invoke-virtual {p3, p2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-ltz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string p4, "Use of undefined namespace prefix: "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3, p2}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    invoke-virtual {p3, v2, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/xmlbeans/XmlError;->forMessage(Ljava/lang/String;)Lorg/apache/xmlbeans/XmlError;

    move-result-object p1

    new-instance p2, Lorg/apache/xmlbeans/XmlRuntimeException;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/XmlError;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, v1, p1}, Lorg/apache/xmlbeans/XmlRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/xmlbeans/XmlError;)V

    throw p2

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale$SaxHandler;->_context:Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/store/Locale$SaxHandler;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v3, p1, p3}, Lorg/apache/xmlbeans/impl/store/Locale;->makeQualifiedQName(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;->startElement(Lorg/apache/poi/javax/xml/namespace/QName;)V

    iget-boolean p1, p0, Lorg/apache/xmlbeans/impl/store/Locale$SaxHandler;->_wantLineNumbers:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Locale$SaxHandler;->_context:Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;

    new-instance p3, Lorg/apache/xmlbeans/XmlLineNumber;

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale$SaxHandler;->_startLocator:Lorg/xml/sax/Locator;

    invoke-interface {v0}, Lorg/xml/sax/Locator;->getLineNumber()I

    move-result v0

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/store/Locale$SaxHandler;->_startLocator:Lorg/xml/sax/Locator;

    invoke-interface {v3}, Lorg/xml/sax/Locator;->getColumnNumber()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/4 v4, -0x1

    invoke-direct {p3, v0, v3, v4}, Lorg/apache/xmlbeans/XmlLineNumber;-><init>(III)V

    invoke-virtual {p1, p3}, Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;->bookmark(Lorg/apache/xmlbeans/XmlCursor$XmlBookmark;)V

    :cond_2
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result p1

    move p3, v2

    :goto_1
    if-ge p3, p1, :cond_8

    invoke-interface {p4, p3}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "xmlns"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale$SaxHandler;->_context:Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;

    invoke-interface {p4, p3}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v0, v4, v3}, Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;->xmlns(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_3
    const-string v3, "xmlns:"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p4, p3}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lorg/apache/xmlbeans/impl/store/Locale$SaxHandler;->_context:Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;

    invoke-virtual {v4, v0, v3}, Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;->xmlns(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string p2, "Prefix can\'t be mapped to no namespace: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lorg/apache/xmlbeans/XmlError;->forMessage(Ljava/lang/String;I)Lorg/apache/xmlbeans/XmlError;

    move-result-object p1

    new-instance p2, Lorg/apache/xmlbeans/XmlRuntimeException;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/XmlError;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, v1, p1}, Lorg/apache/xmlbeans/XmlRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/xmlbeans/XmlError;)V

    throw p2

    :cond_5
    const-string p1, "Prefix not specified"

    invoke-static {p1, v2}, Lorg/apache/xmlbeans/XmlError;->forMessage(Ljava/lang/String;I)Lorg/apache/xmlbeans/XmlError;

    move-result-object p1

    new-instance p2, Lorg/apache/xmlbeans/XmlRuntimeException;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/XmlError;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, v1, p1}, Lorg/apache/xmlbeans/XmlRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/xmlbeans/XmlError;)V

    throw p2

    :cond_6
    invoke-virtual {v0, p2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_7

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/store/Locale$SaxHandler;->_context:Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;

    invoke-interface {p4, p3}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p4, p3}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v0, v4, v1, v5}, Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;->attr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    iget-object v4, p0, Lorg/apache/xmlbeans/impl/store/Locale$SaxHandler;->_context:Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p4, p3}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, p3}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v6, v0, v3}, Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;->attr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_1

    :cond_8
    return-void
.end method

.method public startEntity(Ljava/lang/String;)V
    .locals 0

    iget p1, p0, Lorg/apache/xmlbeans/impl/store/Locale$SaxHandler;->_insideEntity:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/xmlbeans/impl/store/Locale$SaxHandler;->_insideEntity:I

    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/store/Locale;->beginsWithXml(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "xml"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "Prefix can\'t begin with XML: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/apache/xmlbeans/XmlError;->forMessage(Ljava/lang/String;I)Lorg/apache/xmlbeans/XmlError;

    move-result-object p1

    new-instance p2, Lorg/apache/xmlbeans/XmlRuntimeException;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/XmlError;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1, p1}, Lorg/apache/xmlbeans/XmlRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/xmlbeans/XmlError;)V

    throw p2

    :cond_1
    :goto_0
    return-void
.end method

.method public unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
