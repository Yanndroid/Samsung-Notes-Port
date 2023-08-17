.class abstract Lorg/apache/xmlbeans/impl/store/Locale$SaxLoader;
.super Lorg/apache/xmlbeans/impl/store/Locale$SaxHandler;
.source "SourceFile"

# interfaces
.implements Lorg/xml/sax/ErrorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/store/Locale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SaxLoader"
.end annotation


# instance fields
.field private _xr:Lorg/xml/sax/XMLReader;


# direct methods
.method public constructor <init>(Lorg/xml/sax/XMLReader;Lorg/xml/sax/Locator;)V
    .locals 1

    invoke-direct {p0, p2}, Lorg/apache/xmlbeans/impl/store/Locale$SaxHandler;-><init>(Lorg/xml/sax/Locator;)V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/Locale$SaxLoader;->_xr:Lorg/xml/sax/XMLReader;

    :try_start_0
    const-string p2, "http://xml.org/sax/features/namespace-prefixes"

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Locale$SaxLoader;->_xr:Lorg/xml/sax/XMLReader;

    const-string p2, "http://xml.org/sax/features/namespaces"

    invoke-interface {p1, p2, v0}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Locale$SaxLoader;->_xr:Lorg/xml/sax/XMLReader;

    const-string p2, "http://xml.org/sax/features/validation"

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Locale$SaxLoader;->_xr:Lorg/xml/sax/XMLReader;

    const-string p2, "http://xml.org/sax/properties/lexical-handler"

    invoke-interface {p1, p2, p0}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Locale$SaxLoader;->_xr:Lorg/xml/sax/XMLReader;

    invoke-interface {p1, p0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Locale$SaxLoader;->_xr:Lorg/xml/sax/XMLReader;

    const-string p2, "http://xml.org/sax/properties/declaration-handler"

    invoke-interface {p1, p2, p0}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Locale$SaxLoader;->_xr:Lorg/xml/sax/XMLReader;

    invoke-interface {p1, p0}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Locale$SaxLoader;->_xr:Lorg/xml/sax/XMLReader;

    invoke-interface {p1, p0}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public error(Lorg/xml/sax/SAXParseException;)V
    .locals 0

    throw p1
.end method

.method public fatalError(Lorg/xml/sax/SAXParseException;)V
    .locals 0

    throw p1
.end method

.method public load(Lorg/apache/xmlbeans/impl/store/Locale;Lorg/xml/sax/InputSource;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/impl/store/Cur;
    .locals 3

    const-string v0, "file://"

    invoke-virtual {p2, v0}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p3}, Lorg/apache/xmlbeans/impl/store/Locale$SaxHandler;->initSaxHandler(Lorg/apache/xmlbeans/impl/store/Locale;Lorg/apache/xmlbeans/XmlOptions;)V

    :try_start_0
    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Locale$SaxLoader;->_xr:Lorg/xml/sax/XMLReader;

    invoke-interface {p1, p2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Locale$SaxHandler;->_context:Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;->finish()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p1

    invoke-static {p1, p3}, Lorg/apache/xmlbeans/impl/store/Locale;->associateSourceName(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/XmlOptions;)V

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Locale$SaxLoader;->postLoad(Lorg/apache/xmlbeans/impl/store/Cur;)V
    :try_end_0
    .catch Lorg/apache/xmlbeans/impl/piccolo/io/FileFormatException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/apache/xmlbeans/XmlRuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/xml/sax/SAXParseException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    iget-object p2, p0, Lorg/apache/xmlbeans/impl/store/Locale$SaxHandler;->_context:Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;->abort()V

    throw p1

    :catch_1
    move-exception p1

    iget-object p2, p0, Lorg/apache/xmlbeans/impl/store/Locale$SaxHandler;->_context:Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;->abort()V

    invoke-virtual {p1}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/apache/xmlbeans/XmlError;->forMessage(Ljava/lang/String;)Lorg/apache/xmlbeans/XmlError;

    move-result-object p2

    new-instance p3, Lorg/apache/xmlbeans/XmlException;

    invoke-virtual {p2}, Lorg/apache/xmlbeans/XmlError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v0, p1, p2}, Lorg/apache/xmlbeans/XmlException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/xmlbeans/XmlError;)V

    throw p3

    :catch_2
    move-exception p1

    iget-object p2, p0, Lorg/apache/xmlbeans/impl/store/Locale$SaxHandler;->_context:Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;->abort()V

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v0, "DOCUMENT_SOURCE_NAME"

    invoke-static {p3, v0}, Lorg/apache/xmlbeans/XmlOptions;->safeGet(Lorg/apache/xmlbeans/XmlOptions;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getLineNumber()I

    move-result v0

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getColumnNumber()I

    move-result v1

    const/4 v2, -0x1

    invoke-static {p2, p3, v0, v1, v2}, Lorg/apache/xmlbeans/XmlError;->forLocation(Ljava/lang/String;Ljava/lang/String;III)Lorg/apache/xmlbeans/XmlError;

    move-result-object p2

    new-instance p3, Lorg/apache/xmlbeans/XmlException;

    invoke-virtual {p2}, Lorg/apache/xmlbeans/XmlError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v0, p1, p2}, Lorg/apache/xmlbeans/XmlException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/xmlbeans/XmlError;)V

    throw p3

    :catch_3
    move-exception p1

    iget-object p2, p0, Lorg/apache/xmlbeans/impl/store/Locale$SaxHandler;->_context:Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;->abort()V

    new-instance p2, Lorg/apache/xmlbeans/XmlException;

    invoke-direct {p2, p1}, Lorg/apache/xmlbeans/XmlException;-><init>(Lorg/apache/xmlbeans/XmlRuntimeException;)V

    throw p2

    :catch_4
    move-exception p1

    iget-object p2, p0, Lorg/apache/xmlbeans/impl/store/Locale$SaxHandler;->_context:Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;->abort()V

    new-instance p2, Lorg/apache/xmlbeans/XmlException;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/piccolo/io/FileFormatException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/apache/xmlbeans/XmlException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public postLoad(Lorg/apache/xmlbeans/impl/store/Cur;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/Locale$SaxHandler;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/Locale$SaxHandler;->_context:Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;

    return-void
.end method

.method public setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale$SaxLoader;->_xr:Lorg/xml/sax/XMLReader;

    invoke-interface {v0, p1}, Lorg/xml/sax/XMLReader;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    return-void
.end method

.method public warning(Lorg/xml/sax/SAXParseException;)V
    .locals 0

    throw p1
.end method
