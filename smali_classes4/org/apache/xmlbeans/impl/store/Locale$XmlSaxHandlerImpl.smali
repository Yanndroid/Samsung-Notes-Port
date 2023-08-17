.class Lorg/apache/xmlbeans/impl/store/Locale$XmlSaxHandlerImpl;
.super Lorg/apache/xmlbeans/impl/store/Locale$SaxHandler;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlSaxHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/store/Locale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "XmlSaxHandlerImpl"
.end annotation


# instance fields
.field private _options:Lorg/apache/xmlbeans/XmlOptions;

.field private _type:Lorg/apache/xmlbeans/SchemaType;

.field private final synthetic this$0:Lorg/apache/xmlbeans/impl/store/Locale;


# direct methods
.method public constructor <init>(Lorg/apache/xmlbeans/impl/store/Locale;Lorg/apache/xmlbeans/impl/store/Locale;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/Locale$XmlSaxHandlerImpl;->this$0:Lorg/apache/xmlbeans/impl/store/Locale;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Locale$SaxHandler;-><init>(Lorg/xml/sax/Locator;)V

    iput-object p4, p0, Lorg/apache/xmlbeans/impl/store/Locale$XmlSaxHandlerImpl;->_options:Lorg/apache/xmlbeans/XmlOptions;

    iput-object p3, p0, Lorg/apache/xmlbeans/impl/store/Locale$XmlSaxHandlerImpl;->_type:Lorg/apache/xmlbeans/SchemaType;

    new-instance p1, Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {p1, p4}, Lorg/apache/xmlbeans/XmlOptions;-><init>(Lorg/apache/xmlbeans/XmlOptions;)V

    const-string p3, "LOAD_USE_LOCALE_CHAR_UTIL"

    invoke-virtual {p1, p3}, Lorg/apache/xmlbeans/XmlOptions;->put(Ljava/lang/Object;)V

    invoke-virtual {p0, p2, p1}, Lorg/apache/xmlbeans/impl/store/Locale$SaxHandler;->initSaxHandler(Lorg/apache/xmlbeans/impl/store/Locale;Lorg/apache/xmlbeans/XmlOptions;)V

    return-void
.end method


# virtual methods
.method public bookmarkLastAttr(Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/xmlbeans/XmlCursor$XmlBookmark;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale$SaxHandler;->_context:Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;

    invoke-virtual {v0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;->bookmarkLastAttr(Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/xmlbeans/XmlCursor$XmlBookmark;)V

    return-void
.end method

.method public bookmarkLastEvent(Lorg/apache/xmlbeans/XmlCursor$XmlBookmark;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale$SaxHandler;->_context:Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;->bookmarkLastNonAttr(Lorg/apache/xmlbeans/XmlCursor$XmlBookmark;)V

    return-void
.end method

.method public getContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale$SaxHandler;->_context:Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public getLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale$SaxHandler;->_context:Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public getObject()Lorg/apache/xmlbeans/XmlObject;
    .locals 4

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale$SaxHandler;->_context:Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale$SaxHandler;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale$SaxHandler;->_context:Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;->finish()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Locale$XmlSaxHandlerImpl;->_type:Lorg/apache/xmlbeans/SchemaType;

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/store/Locale$XmlSaxHandlerImpl;->_options:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {v0, v2, v3}, Lorg/apache/xmlbeans/impl/store/Locale;->autoTypeDocument(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->getUser()Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v2

    check-cast v2, Lorg/apache/xmlbeans/XmlObject;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/store/Locale$SaxHandler;->_context:Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale$SaxHandler;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return-object v2

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Locale$SaxHandler;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw v0
.end method
