.class public final Luk/ac/ed/ph/snuggletex/utilities/MathMLUtilities;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ANNOTATION_LOCAL_NAME:Ljava/lang/String; = "annotation"

.field public static final ANNOTATION_XML_LOCAL_NAME:Ljava/lang/String; = "annotation-xml"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ensureMathMLContainer(Lorg/w3c/dom/Element;)V
    .locals 1

    const-string v0, "math"

    invoke-static {p0, v0}, Luk/ac/ed/ph/snuggletex/utilities/MathMLUtilities;->isMathMLElement(Lorg/w3c/dom/Node;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Not a MathML <math/> element"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static ensureMathMLDocument(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .locals 1

    invoke-interface {p0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Luk/ac/ed/ph/snuggletex/utilities/MathMLUtilities;->ensureMathMLContainer(Lorg/w3c/dom/Element;)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Document does not have a document element"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static extractAnnotationElement(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 6

    invoke-static {p0}, Luk/ac/ed/ph/snuggletex/utilities/MathMLUtilities;->ensureMathMLContainer(Lorg/w3c/dom/Element;)V

    const-string v0, "encoding"

    invoke-static {p2, v0}, Luk/ac/ed/ph/snuggletex/internal/util/ConstraintUtilities;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    const-string v2, "semantics"

    invoke-static {p0, v2}, Luk/ac/ed/ph/snuggletex/utilities/MathMLUtilities;->isMathMLElement(Lorg/w3c/dom/Node;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    check-cast p0, Lorg/w3c/dom/Element;

    invoke-interface {p0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p0

    const/4 v2, 0x0

    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_2

    invoke-interface {p0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-static {v4, p1}, Luk/ac/ed/ph/snuggletex/utilities/MathMLUtilities;->isMathMLElement(Lorg/w3c/dom/Node;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    check-cast v4, Lorg/w3c/dom/Element;

    invoke-interface {v4, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    return-object v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v1
.end method

.method public static extractAnnotationString(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "annotation"

    invoke-static {p0, v0, p1}, Luk/ac/ed/ph/snuggletex/utilities/MathMLUtilities;->extractAnnotationElement(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Luk/ac/ed/ph/snuggletex/internal/util/XMLUtilities;->extractTextElementValue(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static extractAnnotationXML(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 1

    const-string v0, "annotation-xml"

    invoke-static {p0, v0, p1}, Luk/ac/ed/ph/snuggletex/utilities/MathMLUtilities;->extractAnnotationElement(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static extractFirstSemanticsBranch(Lorg/w3c/dom/Element;)Lorg/w3c/dom/Element;
    .locals 2

    invoke-static {p0}, Luk/ac/ed/ph/snuggletex/utilities/MathMLUtilities;->ensureMathMLContainer(Lorg/w3c/dom/Element;)V

    invoke-interface {p0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    const-string v1, "semantics"

    invoke-static {p0, v1}, Luk/ac/ed/ph/snuggletex/utilities/MathMLUtilities;->isMathMLElement(Lorg/w3c/dom/Node;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p0, Lorg/w3c/dom/Element;

    invoke-interface {p0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lorg/w3c/dom/Element;

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static isMathMLElement(Lorg/w3c/dom/Node;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Luk/ac/ed/ph/snuggletex/utilities/MathMLUtilities;->isMathMLElement(Lorg/w3c/dom/Node;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isMathMLElement(Lorg/w3c/dom/Node;Ljava/lang/String;)Z
    .locals 3

    const-string v0, "Node"

    invoke-static {p0, v0}, Luk/ac/ed/ph/snuggletex/internal/util/ConstraintUtilities;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    const-string v2, "http://www.w3.org/1998/Math/MathML"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public static isolateAnnotationXML(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Document;
    .locals 0

    invoke-static {p0, p1}, Luk/ac/ed/ph/snuggletex/utilities/MathMLUtilities;->extractAnnotationXML(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p0, p1}, Luk/ac/ed/ph/snuggletex/utilities/MathMLUtilities;->isolateDescendant(Lorg/w3c/dom/Element;Lorg/w3c/dom/NodeList;)Lorg/w3c/dom/Document;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static isolateAnnotationXML(Luk/ac/ed/ph/snuggletex/utilities/UnwrappedParallelMathMLDOM;Ljava/lang/String;)Lorg/w3c/dom/Document;
    .locals 1

    const-string v0, "UnwrappedParallelMathMLDOM"

    invoke-static {p0, v0}, Luk/ac/ed/ph/snuggletex/internal/util/ConstraintUtilities;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Luk/ac/ed/ph/snuggletex/utilities/UnwrappedParallelMathMLDOM;->getXmlAnnotations()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/NodeList;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Luk/ac/ed/ph/snuggletex/utilities/UnwrappedParallelMathMLDOM;->getMathElement()Lorg/w3c/dom/Element;

    move-result-object p0

    invoke-static {p0, p1}, Luk/ac/ed/ph/snuggletex/utilities/MathMLUtilities;->isolateDescendant(Lorg/w3c/dom/Element;Lorg/w3c/dom/NodeList;)Lorg/w3c/dom/Document;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static isolateDescendant(Lorg/w3c/dom/Element;Lorg/w3c/dom/Element;)Lorg/w3c/dom/Document;
    .locals 2

    invoke-static {}, Luk/ac/ed/ph/snuggletex/internal/util/XMLUtilities;->createNSAwareDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Lorg/w3c/dom/Element;->cloneNode(Z)Lorg/w3c/dom/Node;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Element;

    invoke-interface {v0, p0}, Lorg/w3c/dom/Document;->adoptNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {v0, p0}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->cloneNode(Z)Lorg/w3c/dom/Node;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Element;

    invoke-interface {v0, p1}, Lorg/w3c/dom/Document;->adoptNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-object v0
.end method

.method private static isolateDescendant(Lorg/w3c/dom/Element;Lorg/w3c/dom/NodeList;)Lorg/w3c/dom/Document;
    .locals 5

    invoke-static {}, Luk/ac/ed/ph/snuggletex/internal/util/XMLUtilities;->createNSAwareDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Lorg/w3c/dom/Element;->cloneNode(Z)Lorg/w3c/dom/Node;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Element;

    invoke-interface {v0, p0}, Lorg/w3c/dom/Document;->adoptNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {v0, p0}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lorg/w3c/dom/Node;->cloneNode(Z)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/w3c/dom/Document;->adoptNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {p0, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static isolateFirstSemanticsBranch(Lorg/w3c/dom/Element;)Lorg/w3c/dom/Document;
    .locals 1

    invoke-static {p0}, Luk/ac/ed/ph/snuggletex/utilities/MathMLUtilities;->extractFirstSemanticsBranch(Lorg/w3c/dom/Element;)Lorg/w3c/dom/Element;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0, v0}, Luk/ac/ed/ph/snuggletex/utilities/MathMLUtilities;->isolateDescendant(Lorg/w3c/dom/Element;Lorg/w3c/dom/Element;)Lorg/w3c/dom/Document;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static isolateFirstSemanticsBranch(Luk/ac/ed/ph/snuggletex/utilities/UnwrappedParallelMathMLDOM;)Lorg/w3c/dom/Document;
    .locals 1

    const-string v0, "UnwrappedParallelMathMLDOM"

    invoke-static {p0, v0}, Luk/ac/ed/ph/snuggletex/internal/util/ConstraintUtilities;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Luk/ac/ed/ph/snuggletex/utilities/UnwrappedParallelMathMLDOM;->getFirstBranch()Lorg/w3c/dom/Element;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Luk/ac/ed/ph/snuggletex/utilities/UnwrappedParallelMathMLDOM;->getMathElement()Lorg/w3c/dom/Element;

    move-result-object p0

    invoke-static {p0, v0}, Luk/ac/ed/ph/snuggletex/utilities/MathMLUtilities;->isolateDescendant(Lorg/w3c/dom/Element;Lorg/w3c/dom/Element;)Lorg/w3c/dom/Document;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static parseMathMLDocumentString(Ljava/lang/String;)Lorg/w3c/dom/Document;
    .locals 3

    const-string v0, "mathmlDocument"

    invoke-static {p0, v0}, Luk/ac/ed/ph/snuggletex/internal/util/ConstraintUtilities;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Luk/ac/ed/ph/snuggletex/internal/util/XMLUtilities;->createNSAwareDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    new-instance v1, Lorg/xml/sax/InputSource;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object p0

    return-object p0
.end method

.method public static serializeDocument(Lorg/w3c/dom/Document;)Ljava/lang/String;
    .locals 2

    const-string v0, "document"

    invoke-static {p0, v0}, Luk/ac/ed/ph/snuggletex/internal/util/ConstraintUtilities;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "UTF-8"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v1}, Luk/ac/ed/ph/snuggletex/utilities/MathMLUtilities;->serializeNode(Lorg/w3c/dom/Node;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static serializeDocument(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "document"

    invoke-static {p0, v0}, Luk/ac/ed/ph/snuggletex/internal/util/ConstraintUtilities;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {p0, p1, v0, v0}, Luk/ac/ed/ph/snuggletex/utilities/MathMLUtilities;->serializeNode(Lorg/w3c/dom/Node;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static serializeDocument(Lorg/w3c/dom/Document;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    const-string v0, "document"

    invoke-static {p0, v0}, Luk/ac/ed/ph/snuggletex/internal/util/ConstraintUtilities;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Luk/ac/ed/ph/snuggletex/utilities/MathMLUtilities;->serializeNode(Lorg/w3c/dom/Node;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static serializeDocument(Lorg/w3c/dom/Document;Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "document"

    invoke-static {p0, v0}, Luk/ac/ed/ph/snuggletex/internal/util/ConstraintUtilities;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2, p3}, Luk/ac/ed/ph/snuggletex/utilities/MathMLUtilities;->serializeNode(Lorg/w3c/dom/Node;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static serializeDocument(Lorg/w3c/dom/Document;Luk/ac/ed/ph/snuggletex/SerializationSpecifier;)Ljava/lang/String;
    .locals 1

    const-string v0, "document"

    invoke-static {p0, v0}, Luk/ac/ed/ph/snuggletex/internal/util/ConstraintUtilities;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Luk/ac/ed/ph/snuggletex/utilities/MathMLUtilities;->serializeNode(Lorg/w3c/dom/Node;Luk/ac/ed/ph/snuggletex/SerializationSpecifier;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static serializeDocument(Lorg/w3c/dom/Document;Luk/ac/ed/ph/snuggletex/SerializationSpecifier;Luk/ac/ed/ph/snuggletex/utilities/StylesheetManager;)Ljava/lang/String;
    .locals 1

    const-string v0, "stylesheetManager"

    invoke-static {p2, v0}, Luk/ac/ed/ph/snuggletex/internal/util/ConstraintUtilities;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "document"

    invoke-static {p0, v0}, Luk/ac/ed/ph/snuggletex/internal/util/ConstraintUtilities;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p0, p1}, Luk/ac/ed/ph/snuggletex/utilities/MathMLUtilities;->serializeNode(Luk/ac/ed/ph/snuggletex/utilities/StylesheetManager;Lorg/w3c/dom/Node;Luk/ac/ed/ph/snuggletex/SerializationSpecifier;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static serializeDocument(Lorg/w3c/dom/Document;ZZ)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "document"

    invoke-static {p0, v0}, Luk/ac/ed/ph/snuggletex/internal/util/ConstraintUtilities;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Luk/ac/ed/ph/snuggletex/utilities/MathMLUtilities;->serializeNode(Lorg/w3c/dom/Node;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static serializeElement(Lorg/w3c/dom/Element;)Ljava/lang/String;
    .locals 2

    const-string v0, "element"

    invoke-static {p0, v0}, Luk/ac/ed/ph/snuggletex/internal/util/ConstraintUtilities;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "UTF-8"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v1}, Luk/ac/ed/ph/snuggletex/utilities/MathMLUtilities;->serializeNode(Lorg/w3c/dom/Node;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static serializeElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "element"

    invoke-static {p0, v0}, Luk/ac/ed/ph/snuggletex/internal/util/ConstraintUtilities;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {p0, p1, v0, v0}, Luk/ac/ed/ph/snuggletex/utilities/MathMLUtilities;->serializeNode(Lorg/w3c/dom/Node;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static serializeElement(Lorg/w3c/dom/Element;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    const-string v0, "element"

    invoke-static {p0, v0}, Luk/ac/ed/ph/snuggletex/internal/util/ConstraintUtilities;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Luk/ac/ed/ph/snuggletex/utilities/MathMLUtilities;->serializeNode(Lorg/w3c/dom/Node;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static serializeElement(Lorg/w3c/dom/Element;Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "element"

    invoke-static {p0, v0}, Luk/ac/ed/ph/snuggletex/internal/util/ConstraintUtilities;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2, p3}, Luk/ac/ed/ph/snuggletex/utilities/MathMLUtilities;->serializeNode(Lorg/w3c/dom/Node;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static serializeElement(Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/SerializationSpecifier;)Ljava/lang/String;
    .locals 1

    const-string v0, "element"

    invoke-static {p0, v0}, Luk/ac/ed/ph/snuggletex/internal/util/ConstraintUtilities;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Luk/ac/ed/ph/snuggletex/utilities/MathMLUtilities;->serializeNode(Lorg/w3c/dom/Node;Luk/ac/ed/ph/snuggletex/SerializationSpecifier;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static serializeElement(Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/SerializationSpecifier;Luk/ac/ed/ph/snuggletex/utilities/StylesheetManager;)Ljava/lang/String;
    .locals 1

    const-string v0, "element"

    invoke-static {p0, v0}, Luk/ac/ed/ph/snuggletex/internal/util/ConstraintUtilities;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stylesheetManager"

    invoke-static {p2, v0}, Luk/ac/ed/ph/snuggletex/internal/util/ConstraintUtilities;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p0, p1}, Luk/ac/ed/ph/snuggletex/utilities/MathMLUtilities;->serializeNode(Luk/ac/ed/ph/snuggletex/utilities/StylesheetManager;Lorg/w3c/dom/Node;Luk/ac/ed/ph/snuggletex/SerializationSpecifier;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static serializeElement(Lorg/w3c/dom/Element;Z)Ljava/lang/String;
    .locals 2

    const-string v0, "element"

    invoke-static {p0, v0}, Luk/ac/ed/ph/snuggletex/internal/util/ConstraintUtilities;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1}, Luk/ac/ed/ph/snuggletex/utilities/MathMLUtilities;->serializeNode(Lorg/w3c/dom/Node;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static serializeElement(Lorg/w3c/dom/Element;ZZ)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "element"

    invoke-static {p0, v0}, Luk/ac/ed/ph/snuggletex/internal/util/ConstraintUtilities;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Luk/ac/ed/ph/snuggletex/utilities/MathMLUtilities;->serializeNode(Lorg/w3c/dom/Node;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static serializeNode(Lorg/w3c/dom/Node;Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 1

    new-instance v0, Luk/ac/ed/ph/snuggletex/utilities/SerializationOptions;

    invoke-direct {v0}, Luk/ac/ed/ph/snuggletex/utilities/SerializationOptions;-><init>()V

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "UTF-8"

    :goto_0
    invoke-interface {v0, p1}, Luk/ac/ed/ph/snuggletex/SerializationSpecifier;->setEncoding(Ljava/lang/String;)V

    invoke-interface {v0, p2}, Luk/ac/ed/ph/snuggletex/SerializationSpecifier;->setIndenting(Z)V

    xor-int/lit8 p1, p3, 0x1

    invoke-interface {v0, p1}, Luk/ac/ed/ph/snuggletex/SerializationSpecifier;->setIncludingXMLDeclaration(Z)V

    invoke-static {p0, v0}, Luk/ac/ed/ph/snuggletex/internal/util/XMLUtilities;->serializeNode(Lorg/w3c/dom/Node;Luk/ac/ed/ph/snuggletex/SerializationSpecifier;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static serializeNode(Lorg/w3c/dom/Node;Luk/ac/ed/ph/snuggletex/SerializationSpecifier;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Luk/ac/ed/ph/snuggletex/internal/util/XMLUtilities;->serializeNode(Lorg/w3c/dom/Node;Luk/ac/ed/ph/snuggletex/SerializationSpecifier;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static serializeNode(Luk/ac/ed/ph/snuggletex/utilities/StylesheetManager;Lorg/w3c/dom/Node;Luk/ac/ed/ph/snuggletex/SerializationSpecifier;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1, p2}, Luk/ac/ed/ph/snuggletex/internal/util/XMLUtilities;->serializeNode(Luk/ac/ed/ph/snuggletex/utilities/StylesheetManager;Lorg/w3c/dom/Node;Luk/ac/ed/ph/snuggletex/SerializationSpecifier;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static unwrapParallelMathMLDOM(Lorg/w3c/dom/Element;)Luk/ac/ed/ph/snuggletex/utilities/UnwrappedParallelMathMLDOM;
    .locals 7

    invoke-static {p0}, Luk/ac/ed/ph/snuggletex/utilities/MathMLUtilities;->ensureMathMLContainer(Lorg/w3c/dom/Element;)V

    invoke-interface {p0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    const-string v2, "semantics"

    invoke-static {v0, v2}, Luk/ac/ed/ph/snuggletex/utilities/MathMLUtilities;->isMathMLElement(Lorg/w3c/dom/Node;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_3

    :cond_0
    new-instance v2, Luk/ac/ed/ph/snuggletex/utilities/UnwrappedParallelMathMLDOM;

    invoke-direct {v2}, Luk/ac/ed/ph/snuggletex/utilities/UnwrappedParallelMathMLDOM;-><init>()V

    invoke-virtual {v2, p0}, Luk/ac/ed/ph/snuggletex/utilities/UnwrappedParallelMathMLDOM;->setMathElement(Lorg/w3c/dom/Element;)V

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-virtual {v2, v0}, Luk/ac/ed/ph/snuggletex/utilities/UnwrappedParallelMathMLDOM;->setFirstBranch(Lorg/w3c/dom/Element;)V

    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    const/4 v1, 0x1

    :goto_0
    if-ge v1, v0, :cond_4

    invoke-interface {p0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-static {v3}, Luk/ac/ed/ph/snuggletex/utilities/MathMLUtilities;->isMathMLElement(Lorg/w3c/dom/Node;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v4, v3

    check-cast v4, Lorg/w3c/dom/Element;

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "annotation"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "encoding"

    if-eqz v5, :cond_2

    invoke-virtual {v2}, Luk/ac/ed/ph/snuggletex/utilities/UnwrappedParallelMathMLDOM;->getTextAnnotations()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v4, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Luk/ac/ed/ph/snuggletex/internal/util/XMLUtilities;->extractTextElementValue(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "annotation-xml"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Luk/ac/ed/ph/snuggletex/utilities/UnwrappedParallelMathMLDOM;->getXmlAnnotations()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v4, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-object v2

    :cond_5
    :goto_3
    return-object v1
.end method
