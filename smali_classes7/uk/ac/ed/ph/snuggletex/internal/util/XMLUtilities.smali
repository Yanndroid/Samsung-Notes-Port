.class public final Luk/ac/ed/ph/snuggletex/internal/util/XMLUtilities;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final SAXON_TRANSFORMER_FACTORY_CLASS_NAME:Ljava/lang/String; = "net.sf.saxon.TransformerFactoryImpl"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createJAXPTransformerFactory()Ljavax/xml/transform/TransformerFactory;
    .locals 2

    :try_start_0
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v0
    :try_end_0
    .catch Ljavax/xml/transform/TransformerFactoryConfigurationError; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "http://javax.xml.transform.dom.DOMSource/feature"

    invoke-static {v0, v1}, Luk/ac/ed/ph/snuggletex/internal/util/XMLUtilities;->requireFeature(Ljavax/xml/transform/TransformerFactory;Ljava/lang/String;)V

    const-string v1, "http://javax.xml.transform.dom.DOMResult/feature"

    invoke-static {v0, v1}, Luk/ac/ed/ph/snuggletex/internal/util/XMLUtilities;->requireFeature(Ljavax/xml/transform/TransformerFactory;Ljava/lang/String;)V

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Luk/ac/ed/ph/snuggletex/SnuggleRuntimeException;

    invoke-direct {v1, v0}, Luk/ac/ed/ph/snuggletex/SnuggleRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static createNSAwareDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;
    .locals 3

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    :try_start_0
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Luk/ac/ed/ph/snuggletex/SnuggleRuntimeException;

    const-string v2, "Could not create Namespace-aware DocumentBuilder"

    invoke-direct {v1, v2, v0}, Luk/ac/ed/ph/snuggletex/SnuggleRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static createSaxonTransformerFactory()Ljavax/xml/transform/TransformerFactory;
    .locals 3

    :try_start_0
    const-string v0, "net.sf.saxon.TransformerFactoryImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/xml/transform/TransformerFactory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "http://javax.xml.transform.dom.DOMSource/feature"

    invoke-static {v0, v1}, Luk/ac/ed/ph/snuggletex/internal/util/XMLUtilities;->requireFeature(Ljavax/xml/transform/TransformerFactory;Ljava/lang/String;)V

    const-string v1, "http://javax.xml.transform.dom.DOMResult/feature"

    invoke-static {v0, v1}, Luk/ac/ed/ph/snuggletex/internal/util/XMLUtilities;->requireFeature(Ljavax/xml/transform/TransformerFactory;Ljava/lang/String;)V

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Luk/ac/ed/ph/snuggletex/SnuggleRuntimeException;

    const-string v2, "Failed to explicitly instantiate Saxon net.sf.saxon.TransformerFactoryImpl class - check your ClassPath!"

    invoke-direct {v1, v2, v0}, Luk/ac/ed/ph/snuggletex/SnuggleRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static ensureExtractTextNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 2

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Node is not a text Node"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static extractTextElementValue(Lorg/w3c/dom/Element;)Ljava/lang/String;
    .locals 3

    invoke-interface {p0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-interface {p0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-static {p0}, Luk/ac/ed/ph/snuggletex/internal/util/XMLUtilities;->ensureExtractTextNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-static {v2}, Luk/ac/ed/ph/snuggletex/internal/util/XMLUtilities;->ensureExtractTextNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static isSaxonAvailable()Z
    .locals 1

    :try_start_0
    const-string v0, "net.sf.saxon.TransformerFactoryImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isXMLNCName(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "[a-zA-Z_][a-zA-Z0-9_.-]*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isXMLName(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "[a-zA-Z_:][a-zA-Z0-9_:.-]*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static requireFeature(Ljavax/xml/transform/TransformerFactory;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0, p1}, Ljavax/xml/transform/TransformerFactory;->getFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Luk/ac/ed/ph/snuggletex/SnuggleRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransformerFactory "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " needs to support feature "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " in order to be used with SnuggleTeX"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Luk/ac/ed/ph/snuggletex/SnuggleRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static serializeNode(Lorg/w3c/dom/Node;Luk/ac/ed/ph/snuggletex/SerializationSpecifier;)Ljava/lang/String;
    .locals 1

    new-instance v0, Luk/ac/ed/ph/snuggletex/utilities/StylesheetManager;

    invoke-direct {v0}, Luk/ac/ed/ph/snuggletex/utilities/StylesheetManager;-><init>()V

    invoke-static {v0, p0, p1}, Luk/ac/ed/ph/snuggletex/internal/util/XMLUtilities;->serializeNode(Luk/ac/ed/ph/snuggletex/utilities/StylesheetManager;Lorg/w3c/dom/Node;Luk/ac/ed/ph/snuggletex/SerializationSpecifier;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static serializeNode(Luk/ac/ed/ph/snuggletex/utilities/StylesheetManager;Lorg/w3c/dom/Node;Luk/ac/ed/ph/snuggletex/SerializationSpecifier;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1, p2}, Luk/ac/ed/ph/snuggletex/utilities/StylesheetManager;->getSerializer(Ljava/lang/String;Luk/ac/ed/ph/snuggletex/SerializationSpecifier;)Ljavax/xml/transform/Transformer;

    move-result-object p0

    new-instance p2, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {p2, p1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    new-instance p1, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {p1, v0}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, p2, p1}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Luk/ac/ed/ph/snuggletex/SnuggleRuntimeException;

    const-string p2, "Could not serialize DOM"

    invoke-direct {p1, p2, p0}, Luk/ac/ed/ph/snuggletex/SnuggleRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static serializeNodeChildren(Luk/ac/ed/ph/snuggletex/utilities/StylesheetManager;Lorg/w3c/dom/Node;Luk/ac/ed/ph/snuggletex/SerializationSpecifier;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    :try_start_0
    const-string v1, "classpath:/uk/ac/ed/ph/snuggletex/extract-child-nodes.xsl"

    invoke-virtual {p0, v1, p2}, Luk/ac/ed/ph/snuggletex/utilities/StylesheetManager;->getSerializer(Ljava/lang/String;Luk/ac/ed/ph/snuggletex/SerializationSpecifier;)Ljavax/xml/transform/Transformer;

    move-result-object p0

    new-instance p2, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {p2, p1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    new-instance p1, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {p1, v0}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, p2, p1}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Luk/ac/ed/ph/snuggletex/SnuggleRuntimeException;

    const-string p2, "Could not serialize DOM"

    invoke-direct {p1, p2, p0}, Luk/ac/ed/ph/snuggletex/SnuggleRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static setIndentation(Ljavax/xml/transform/Transformer;I)V
    .locals 2

    const-string v0, "indent"

    if-ltz p1, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "yes"

    invoke-virtual {p0, v0, v1}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "{http://xml.apache.org/xslt}indent-amount"

    invoke-virtual {p0, v0, p1}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "{http://saxon.sf.net/}indent-spaces"

    goto :goto_0

    :cond_0
    const-string p1, "no"

    :goto_0
    invoke-virtual {p0, v0, p1}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static supportsXSLT20(Ljavax/xml/transform/Transformer;)Z
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "net.sf.saxon."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static supportsXSLT20(Ljavax/xml/transform/TransformerFactory;)Z
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "net.sf.saxon."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
