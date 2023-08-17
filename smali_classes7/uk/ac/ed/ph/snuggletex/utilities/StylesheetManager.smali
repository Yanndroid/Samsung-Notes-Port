.class public final Luk/ac/ed/ph/snuggletex/utilities/StylesheetManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private stylesheetCache:Luk/ac/ed/ph/snuggletex/utilities/StylesheetCache;

.field private transformerFactoryChooser:Luk/ac/ed/ph/snuggletex/utilities/TransformerFactoryChooser;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-static {}, Luk/ac/ed/ph/snuggletex/utilities/DefaultTransformerFactoryChooser;->getInstance()Luk/ac/ed/ph/snuggletex/utilities/DefaultTransformerFactoryChooser;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Luk/ac/ed/ph/snuggletex/utilities/StylesheetManager;-><init>(Luk/ac/ed/ph/snuggletex/utilities/TransformerFactoryChooser;Luk/ac/ed/ph/snuggletex/utilities/StylesheetCache;)V

    return-void
.end method

.method public constructor <init>(Luk/ac/ed/ph/snuggletex/utilities/StylesheetCache;)V
    .locals 1

    invoke-static {}, Luk/ac/ed/ph/snuggletex/utilities/DefaultTransformerFactoryChooser;->getInstance()Luk/ac/ed/ph/snuggletex/utilities/DefaultTransformerFactoryChooser;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Luk/ac/ed/ph/snuggletex/utilities/StylesheetManager;-><init>(Luk/ac/ed/ph/snuggletex/utilities/TransformerFactoryChooser;Luk/ac/ed/ph/snuggletex/utilities/StylesheetCache;)V

    return-void
.end method

.method public constructor <init>(Luk/ac/ed/ph/snuggletex/utilities/TransformerFactoryChooser;Luk/ac/ed/ph/snuggletex/utilities/StylesheetCache;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "transformerFactoryChooser"

    invoke-static {p1, v0}, Luk/ac/ed/ph/snuggletex/internal/util/ConstraintUtilities;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/utilities/StylesheetManager;->transformerFactoryChooser:Luk/ac/ed/ph/snuggletex/utilities/TransformerFactoryChooser;

    iput-object p2, p0, Luk/ac/ed/ph/snuggletex/utilities/StylesheetManager;->stylesheetCache:Luk/ac/ed/ph/snuggletex/utilities/StylesheetCache;

    return-void
.end method

.method private compileStylesheet(Ljava/lang/String;Z)Ljavax/xml/transform/Templates;
    .locals 3

    invoke-virtual {p0, p2}, Luk/ac/ed/ph/snuggletex/utilities/StylesheetManager;->getTransformerFactory(Z)Ljavax/xml/transform/TransformerFactory;

    move-result-object p2

    :try_start_0
    invoke-virtual {p2}, Ljavax/xml/transform/TransformerFactory;->getURIResolver()Ljavax/xml/transform/URIResolver;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Ljavax/xml/transform/URIResolver;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/transform/Source;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, v0}, Ljavax/xml/transform/TransformerFactory;->newTemplates(Ljavax/xml/transform/Source;)Ljavax/xml/transform/Templates;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p2, Luk/ac/ed/ph/snuggletex/SnuggleRuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not a ClassPath URI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Luk/ac/ed/ph/snuggletex/SnuggleRuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_0
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p2

    new-instance v0, Luk/ac/ed/ph/snuggletex/SnuggleRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not resolve internal stylesheet location "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Luk/ac/ed/ph/snuggletex/SnuggleRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p2

    new-instance v0, Luk/ac/ed/ph/snuggletex/SnuggleRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not compile internal stylesheet at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Luk/ac/ed/ph/snuggletex/SnuggleRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private compileStylesheetDriver(Ljava/util/List;Z)Ljavax/xml/transform/Templates;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljavax/xml/transform/Templates;"
        }
    .end annotation

    invoke-virtual {p0, p2}, Luk/ac/ed/ph/snuggletex/utilities/StylesheetManager;->getTransformerFactory(Z)Ljavax/xml/transform/TransformerFactory;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<stylesheet version=\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string p2, "2.0"

    goto :goto_0

    :cond_0
    const-string p2, "1.0"

    :goto_0
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' xmlns=\'http://www.w3.org/1999/XSL/Transform\'>\n"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v2, "<import href=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'/>\n"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string p1, "</stylesheet>"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :try_start_0
    new-instance p2, Ljavax/xml/transform/stream/StreamSource;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, v1}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v0, p2}, Ljavax/xml/transform/TransformerFactory;->newTemplates(Ljavax/xml/transform/Source;)Ljavax/xml/transform/Templates;

    move-result-object p1
    :try_end_0
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    new-instance v0, Luk/ac/ed/ph/snuggletex/SnuggleRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not compile stylesheet driver "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Luk/ac/ed/ph/snuggletex/SnuggleRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private ensureChooserSpecified()V
    .locals 2

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/utilities/StylesheetManager;->transformerFactoryChooser:Luk/ac/ed/ph/snuggletex/utilities/TransformerFactoryChooser;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Luk/ac/ed/ph/snuggletex/SnuggleRuntimeException;

    const-string v1, "No TransformerFactoryChooser set on this StylesheetManager"

    invoke-direct {v0, v1}, Luk/ac/ed/ph/snuggletex/SnuggleRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getCompiledStylesheet(Ljava/lang/String;)Ljavax/xml/transform/Templates;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Luk/ac/ed/ph/snuggletex/utilities/StylesheetManager;->getCompiledStylesheet(Ljava/lang/String;Z)Ljavax/xml/transform/Templates;

    move-result-object p1

    return-object p1
.end method

.method public getCompiledStylesheet(Ljava/lang/String;Z)Ljavax/xml/transform/Templates;
    .locals 2

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/utilities/StylesheetManager;->stylesheetCache:Luk/ac/ed/ph/snuggletex/utilities/StylesheetCache;

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Luk/ac/ed/ph/snuggletex/utilities/StylesheetManager;->compileStylesheet(Ljava/lang/String;Z)Ljavax/xml/transform/Templates;

    move-result-object p1

    goto :goto_1

    :cond_0
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Luk/ac/ed/ph/snuggletex/utilities/StylesheetManager;->stylesheetCache:Luk/ac/ed/ph/snuggletex/utilities/StylesheetCache;

    invoke-interface {v1, p1}, Luk/ac/ed/ph/snuggletex/utilities/StylesheetCache;->getStylesheet(Ljava/lang/String;)Ljavax/xml/transform/Templates;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-direct {p0, p1, p2}, Luk/ac/ed/ph/snuggletex/utilities/StylesheetManager;->compileStylesheet(Ljava/lang/String;Z)Ljavax/xml/transform/Templates;

    move-result-object p2

    iget-object v1, p0, Luk/ac/ed/ph/snuggletex/utilities/StylesheetManager;->stylesheetCache:Luk/ac/ed/ph/snuggletex/utilities/StylesheetCache;

    invoke-interface {v1, p1, p2}, Luk/ac/ed/ph/snuggletex/utilities/StylesheetCache;->putStylesheet(Ljava/lang/String;Ljavax/xml/transform/Templates;)V

    move-object p1, p2

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    monitor-exit v0

    :goto_1
    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getCompiledStylesheetDriver(Ljava/util/List;Z)Ljavax/xml/transform/Templates;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljavax/xml/transform/Templates;"
        }
    .end annotation

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/utilities/StylesheetManager;->stylesheetCache:Luk/ac/ed/ph/snuggletex/utilities/StylesheetCache;

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Luk/ac/ed/ph/snuggletex/utilities/StylesheetManager;->compileStylesheetDriver(Ljava/util/List;Z)Ljavax/xml/transform/Templates;

    move-result-object p1

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "xslt-driver("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-static {p1, v1}, Luk/ac/ed/ph/snuggletex/internal/util/StringUtilities;->join(Ljava/lang/Iterable;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Luk/ac/ed/ph/snuggletex/utilities/StylesheetManager;->stylesheetCache:Luk/ac/ed/ph/snuggletex/utilities/StylesheetCache;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Luk/ac/ed/ph/snuggletex/utilities/StylesheetManager;->stylesheetCache:Luk/ac/ed/ph/snuggletex/utilities/StylesheetCache;

    invoke-interface {v2, v0}, Luk/ac/ed/ph/snuggletex/utilities/StylesheetCache;->getStylesheet(Ljava/lang/String;)Ljavax/xml/transform/Templates;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-direct {p0, p1, p2}, Luk/ac/ed/ph/snuggletex/utilities/StylesheetManager;->compileStylesheetDriver(Ljava/util/List;Z)Ljavax/xml/transform/Templates;

    move-result-object p1

    iget-object p2, p0, Luk/ac/ed/ph/snuggletex/utilities/StylesheetManager;->stylesheetCache:Luk/ac/ed/ph/snuggletex/utilities/StylesheetCache;

    invoke-interface {p2, v0, p1}, Luk/ac/ed/ph/snuggletex/utilities/StylesheetCache;->putStylesheet(Ljava/lang/String;Ljavax/xml/transform/Templates;)V

    goto :goto_0

    :cond_1
    move-object p1, v2

    :goto_0
    monitor-exit v1

    :goto_1
    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getSerializer(Ljava/lang/String;Luk/ac/ed/ph/snuggletex/SerializationSpecifier;)Ljavax/xml/transform/Transformer;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Luk/ac/ed/ph/snuggletex/utilities/StylesheetManager;->supportsXSLT20()Z

    move-result p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_3

    invoke-interface {p2}, Luk/ac/ed/ph/snuggletex/SerializationSpecifier;->getSerializationMethod()Luk/ac/ed/ph/snuggletex/SerializationMethod;

    move-result-object v3

    sget-object v4, Luk/ac/ed/ph/snuggletex/SerializationMethod;->HTML:Luk/ac/ed/ph/snuggletex/SerializationMethod;

    if-ne v3, v4, :cond_1

    const-string v3, "classpath:/uk/ac/ed/ph/snuggletex/strip-xhtml-namespace.xsl"

    :goto_0
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-interface {p2}, Luk/ac/ed/ph/snuggletex/SerializationSpecifier;->getSerializationMethod()Luk/ac/ed/ph/snuggletex/SerializationMethod;

    move-result-object v3

    sget-object v4, Luk/ac/ed/ph/snuggletex/SerializationMethod;->STRICTLY_HTML:Luk/ac/ed/ph/snuggletex/SerializationMethod;

    if-ne v3, v4, :cond_2

    const-string v3, "classpath:/uk/ac/ed/ph/snuggletex/strip-all-namespaces.xsl"

    goto :goto_0

    :cond_2
    :goto_1
    invoke-interface {p2}, Luk/ac/ed/ph/snuggletex/SerializationSpecifier;->isUsingNamedEntities()Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz p1, :cond_3

    const-string v3, "classpath:/uk/ac/ed/ph/snuggletex/mathml-entities-map.xsl"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v1

    goto :goto_2

    :cond_3
    move v3, v2

    :goto_2
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0, v2}, Luk/ac/ed/ph/snuggletex/utilities/StylesheetManager;->getTransformerFactory(Z)Ljavax/xml/transform/TransformerFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v0

    goto :goto_4

    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v1, :cond_5

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, v3}, Luk/ac/ed/ph/snuggletex/utilities/StylesheetManager;->getCompiledStylesheet(Ljava/lang/String;Z)Ljavax/xml/transform/Templates;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljavax/xml/transform/Templates;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v0

    goto :goto_4

    :cond_5
    invoke-virtual {p0, v0, v3}, Luk/ac/ed/ph/snuggletex/utilities/StylesheetManager;->getCompiledStylesheetDriver(Ljava/util/List;Z)Ljavax/xml/transform/Templates;

    move-result-object v0
    :try_end_0
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_4
    if-eqz p2, :cond_9

    invoke-interface {p2}, Luk/ac/ed/ph/snuggletex/SerializationSpecifier;->getSerializationMethod()Luk/ac/ed/ph/snuggletex/SerializationMethod;

    move-result-object v2

    sget-object v3, Luk/ac/ed/ph/snuggletex/SerializationMethod;->XHTML:Luk/ac/ed/ph/snuggletex/SerializationMethod;

    if-ne v2, v3, :cond_6

    if-nez p1, :cond_6

    sget-object v2, Luk/ac/ed/ph/snuggletex/SerializationMethod;->XML:Luk/ac/ed/ph/snuggletex/SerializationMethod;

    :cond_6
    invoke-virtual {v2}, Luk/ac/ed/ph/snuggletex/SerializationMethod;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v2, "method"

    invoke-virtual {v0, v2, p1}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2}, Luk/ac/ed/ph/snuggletex/SerializationSpecifier;->isIndenting()Z

    move-result p1

    invoke-static {p1}, Luk/ac/ed/ph/snuggletex/internal/util/StringUtilities;->toYesNo(Z)Ljava/lang/String;

    move-result-object p1

    const-string v2, "indent"

    invoke-virtual {v0, v2, p1}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2}, Luk/ac/ed/ph/snuggletex/SerializationSpecifier;->isIndenting()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-interface {p2}, Luk/ac/ed/ph/snuggletex/SerializationSpecifier;->getIndent()I

    move-result p1

    invoke-static {v0, p1}, Luk/ac/ed/ph/snuggletex/internal/util/XMLUtilities;->setIndentation(Ljavax/xml/transform/Transformer;I)V

    :cond_7
    invoke-interface {p2}, Luk/ac/ed/ph/snuggletex/SerializationSpecifier;->getEncoding()Ljava/lang/String;

    move-result-object p1

    const-string v2, "encoding"

    invoke-virtual {v0, v2, p1}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2}, Luk/ac/ed/ph/snuggletex/SerializationSpecifier;->isIncludingXMLDeclaration()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-static {p1}, Luk/ac/ed/ph/snuggletex/internal/util/StringUtilities;->toYesNo(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "omit-xml-declaration"

    invoke-virtual {v0, v1, p1}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2}, Luk/ac/ed/ph/snuggletex/SerializationSpecifier;->getDoctypePublic()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-interface {p2}, Luk/ac/ed/ph/snuggletex/SerializationSpecifier;->getDoctypePublic()Ljava/lang/String;

    move-result-object p1

    const-string v1, "doctype-public"

    invoke-virtual {v0, v1, p1}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    invoke-interface {p2}, Luk/ac/ed/ph/snuggletex/SerializationSpecifier;->getDoctypeSystem()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-interface {p2}, Luk/ac/ed/ph/snuggletex/SerializationSpecifier;->getDoctypeSystem()Ljava/lang/String;

    move-result-object p1

    const-string p2, "doctype-system"

    invoke-virtual {v0, p2, p1}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-object v0

    :catch_0
    move-exception p1

    new-instance p2, Luk/ac/ed/ph/snuggletex/SnuggleRuntimeException;

    const-string v0, "Unexpected failure to create serializer"

    invoke-direct {p2, v0, p1}, Luk/ac/ed/ph/snuggletex/SnuggleRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public getStylesheetCache()Luk/ac/ed/ph/snuggletex/utilities/StylesheetCache;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/utilities/StylesheetManager;->stylesheetCache:Luk/ac/ed/ph/snuggletex/utilities/StylesheetCache;

    return-object v0
.end method

.method public getTransformerFactory(Z)Ljavax/xml/transform/TransformerFactory;
    .locals 1

    invoke-direct {p0}, Luk/ac/ed/ph/snuggletex/utilities/StylesheetManager;->ensureChooserSpecified()V

    if-eqz p1, :cond_0

    iget-object p1, p0, Luk/ac/ed/ph/snuggletex/utilities/StylesheetManager;->transformerFactoryChooser:Luk/ac/ed/ph/snuggletex/utilities/TransformerFactoryChooser;

    invoke-interface {p1}, Luk/ac/ed/ph/snuggletex/utilities/TransformerFactoryChooser;->getSuitableXSLT20TransformerFactory()Ljavax/xml/transform/TransformerFactory;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Luk/ac/ed/ph/snuggletex/utilities/StylesheetManager;->transformerFactoryChooser:Luk/ac/ed/ph/snuggletex/utilities/TransformerFactoryChooser;

    invoke-interface {p1}, Luk/ac/ed/ph/snuggletex/utilities/TransformerFactoryChooser;->getSuitableXSLT10TransformerFactory()Ljavax/xml/transform/TransformerFactory;

    move-result-object p1

    :goto_0
    invoke-static {}, Luk/ac/ed/ph/snuggletex/utilities/ClassPathURIResolver;->getInstance()Luk/ac/ed/ph/snuggletex/utilities/ClassPathURIResolver;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavax/xml/transform/TransformerFactory;->setURIResolver(Ljavax/xml/transform/URIResolver;)V

    return-object p1
.end method

.method public getTransformerFactoryChooser()Luk/ac/ed/ph/snuggletex/utilities/TransformerFactoryChooser;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/utilities/StylesheetManager;->transformerFactoryChooser:Luk/ac/ed/ph/snuggletex/utilities/TransformerFactoryChooser;

    return-object v0
.end method

.method public setStylesheetCache(Luk/ac/ed/ph/snuggletex/utilities/StylesheetCache;)V
    .locals 0

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/utilities/StylesheetManager;->stylesheetCache:Luk/ac/ed/ph/snuggletex/utilities/StylesheetCache;

    return-void
.end method

.method public setTransformerFactoryChooser(Luk/ac/ed/ph/snuggletex/utilities/TransformerFactoryChooser;)V
    .locals 1

    const-string v0, "transformerFactoryChooser"

    invoke-static {p1, v0}, Luk/ac/ed/ph/snuggletex/internal/util/ConstraintUtilities;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/utilities/StylesheetManager;->transformerFactoryChooser:Luk/ac/ed/ph/snuggletex/utilities/TransformerFactoryChooser;

    return-void
.end method

.method public supportsXSLT20()Z
    .locals 1

    invoke-direct {p0}, Luk/ac/ed/ph/snuggletex/utilities/StylesheetManager;->ensureChooserSpecified()V

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/utilities/StylesheetManager;->transformerFactoryChooser:Luk/ac/ed/ph/snuggletex/utilities/TransformerFactoryChooser;

    invoke-interface {v0}, Luk/ac/ed/ph/snuggletex/utilities/TransformerFactoryChooser;->isXSLT20SupportAvailable()Z

    move-result v0

    return v0
.end method
