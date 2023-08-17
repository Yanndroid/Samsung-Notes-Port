.class public Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/openxml4j/opc/internal/PartMarshaller;


# static fields
.field public static final KEYWORD_CATEGORY:Ljava/lang/String; = "category"

.field public static final KEYWORD_CONTENT_STATUS:Ljava/lang/String; = "contentStatus"

.field public static final KEYWORD_CONTENT_TYPE:Ljava/lang/String; = "contentType"

.field public static final KEYWORD_CREATED:Ljava/lang/String; = "created"

.field public static final KEYWORD_CREATOR:Ljava/lang/String; = "creator"

.field public static final KEYWORD_DESCRIPTION:Ljava/lang/String; = "description"

.field public static final KEYWORD_IDENTIFIER:Ljava/lang/String; = "identifier"

.field public static final KEYWORD_KEYWORDS:Ljava/lang/String; = "keywords"

.field public static final KEYWORD_LANGUAGE:Ljava/lang/String; = "language"

.field public static final KEYWORD_LAST_MODIFIED_BY:Ljava/lang/String; = "lastModifiedBy"

.field public static final KEYWORD_LAST_PRINTED:Ljava/lang/String; = "lastPrinted"

.field public static final KEYWORD_MODIFIED:Ljava/lang/String; = "modified"

.field public static final KEYWORD_REVISION:Ljava/lang/String; = "revision"

.field public static final KEYWORD_SUBJECT:Ljava/lang/String; = "subject"

.field public static final KEYWORD_TITLE:Ljava/lang/String; = "title"

.field public static final KEYWORD_VERSION:Ljava/lang/String; = "version"

.field private static final namespaceCoreProperties:Lorg/apache/poi/javax/xml/stream/events/Namespace;

.field private static final namespaceDC:Lorg/apache/poi/javax/xml/stream/events/Namespace;

.field private static final namespaceDcTerms:Lorg/apache/poi/javax/xml/stream/events/Namespace;

.field private static final namespaceXSI:Lorg/apache/poi/javax/xml/stream/events/Namespace;


# instance fields
.field public propsPart:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

.field public xmlDoc:Lorg/w3c/dom/Document;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lorg/apache/poi/javax/xml/stream/XMLEventFactory;->newInstance()Lorg/apache/poi/javax/xml/stream/XMLEventFactory;

    move-result-object v0

    const-string v1, "dc"

    const-string v2, "http://purl.org/dc/elements/1.1/"

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/javax/xml/stream/XMLEventFactory;->createNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/stream/events/Namespace;

    move-result-object v1

    sput-object v1, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->namespaceDC:Lorg/apache/poi/javax/xml/stream/events/Namespace;

    const-string v1, "cp"

    const-string v2, "http://schemas.openxmlformats.org/package/2006/metadata/core-properties"

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/javax/xml/stream/XMLEventFactory;->createNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/stream/events/Namespace;

    move-result-object v1

    sput-object v1, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->namespaceCoreProperties:Lorg/apache/poi/javax/xml/stream/events/Namespace;

    const-string v1, "dcterms"

    const-string v2, "http://purl.org/dc/terms/"

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/javax/xml/stream/XMLEventFactory;->createNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/stream/events/Namespace;

    move-result-object v1

    sput-object v1, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->namespaceDcTerms:Lorg/apache/poi/javax/xml/stream/events/Namespace;

    const-string/jumbo v1, "xsi"

    const-string v2, "http://www.w3.org/2001/XMLSchema-instance"

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/javax/xml/stream/XMLEventFactory;->createNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/stream/events/Namespace;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->namespaceXSI:Lorg/apache/poi/javax/xml/stream/events/Namespace;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->xmlDoc:Lorg/w3c/dom/Document;

    return-void
.end method

.method private addCategory()V
    .locals 3

    sget-object v0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->namespaceCoreProperties:Lorg/apache/poi/javax/xml/stream/events/Namespace;

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->propsPart:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getCategoryProperty()Lorg/apache/poi/openxml4j/util/Nullable;

    move-result-object v1

    const-string v2, "category"

    invoke-direct {p0, v2, v0, v1}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->setElementTextContent(Ljava/lang/String;Lorg/apache/poi/javax/xml/stream/events/Namespace;Lorg/apache/poi/openxml4j/util/Nullable;)Lorg/w3c/dom/Element;

    return-void
.end method

.method private addContentStatus()V
    .locals 3

    sget-object v0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->namespaceCoreProperties:Lorg/apache/poi/javax/xml/stream/events/Namespace;

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->propsPart:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getContentStatusProperty()Lorg/apache/poi/openxml4j/util/Nullable;

    move-result-object v1

    const-string v2, "contentStatus"

    invoke-direct {p0, v2, v0, v1}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->setElementTextContent(Ljava/lang/String;Lorg/apache/poi/javax/xml/stream/events/Namespace;Lorg/apache/poi/openxml4j/util/Nullable;)Lorg/w3c/dom/Element;

    return-void
.end method

.method private addContentType()V
    .locals 3

    sget-object v0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->namespaceCoreProperties:Lorg/apache/poi/javax/xml/stream/events/Namespace;

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->propsPart:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getContentTypeProperty()Lorg/apache/poi/openxml4j/util/Nullable;

    move-result-object v1

    const-string v2, "contentType"

    invoke-direct {p0, v2, v0, v1}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->setElementTextContent(Ljava/lang/String;Lorg/apache/poi/javax/xml/stream/events/Namespace;Lorg/apache/poi/openxml4j/util/Nullable;)Lorg/w3c/dom/Element;

    return-void
.end method

.method private addCreated()V
    .locals 6

    sget-object v2, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->namespaceDcTerms:Lorg/apache/poi/javax/xml/stream/events/Namespace;

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->propsPart:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getCreatedProperty()Lorg/apache/poi/openxml4j/util/Nullable;

    move-result-object v3

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->propsPart:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getCreatedPropertyString()Ljava/lang/String;

    move-result-object v4

    const-string v1, "created"

    const-string v5, "dcterms:W3CDTF"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->setElementTextContent(Ljava/lang/String;Lorg/apache/poi/javax/xml/stream/events/Namespace;Lorg/apache/poi/openxml4j/util/Nullable;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    return-void
.end method

.method private addCreator()V
    .locals 3

    sget-object v0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->namespaceDC:Lorg/apache/poi/javax/xml/stream/events/Namespace;

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->propsPart:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getCreatorProperty()Lorg/apache/poi/openxml4j/util/Nullable;

    move-result-object v1

    const-string v2, "creator"

    invoke-direct {p0, v2, v0, v1}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->setElementTextContent(Ljava/lang/String;Lorg/apache/poi/javax/xml/stream/events/Namespace;Lorg/apache/poi/openxml4j/util/Nullable;)Lorg/w3c/dom/Element;

    return-void
.end method

.method private addDescription()V
    .locals 3

    sget-object v0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->namespaceDC:Lorg/apache/poi/javax/xml/stream/events/Namespace;

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->propsPart:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getDescriptionProperty()Lorg/apache/poi/openxml4j/util/Nullable;

    move-result-object v1

    const-string v2, "description"

    invoke-direct {p0, v2, v0, v1}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->setElementTextContent(Ljava/lang/String;Lorg/apache/poi/javax/xml/stream/events/Namespace;Lorg/apache/poi/openxml4j/util/Nullable;)Lorg/w3c/dom/Element;

    return-void
.end method

.method private addIdentifier()V
    .locals 3

    sget-object v0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->namespaceDC:Lorg/apache/poi/javax/xml/stream/events/Namespace;

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->propsPart:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getIdentifierProperty()Lorg/apache/poi/openxml4j/util/Nullable;

    move-result-object v1

    const-string v2, "identifier"

    invoke-direct {p0, v2, v0, v1}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->setElementTextContent(Ljava/lang/String;Lorg/apache/poi/javax/xml/stream/events/Namespace;Lorg/apache/poi/openxml4j/util/Nullable;)Lorg/w3c/dom/Element;

    return-void
.end method

.method private addKeywords()V
    .locals 3

    sget-object v0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->namespaceCoreProperties:Lorg/apache/poi/javax/xml/stream/events/Namespace;

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->propsPart:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getKeywordsProperty()Lorg/apache/poi/openxml4j/util/Nullable;

    move-result-object v1

    const-string v2, "keywords"

    invoke-direct {p0, v2, v0, v1}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->setElementTextContent(Ljava/lang/String;Lorg/apache/poi/javax/xml/stream/events/Namespace;Lorg/apache/poi/openxml4j/util/Nullable;)Lorg/w3c/dom/Element;

    return-void
.end method

.method private addLanguage()V
    .locals 3

    sget-object v0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->namespaceDC:Lorg/apache/poi/javax/xml/stream/events/Namespace;

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->propsPart:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getLanguageProperty()Lorg/apache/poi/openxml4j/util/Nullable;

    move-result-object v1

    const-string v2, "language"

    invoke-direct {p0, v2, v0, v1}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->setElementTextContent(Ljava/lang/String;Lorg/apache/poi/javax/xml/stream/events/Namespace;Lorg/apache/poi/openxml4j/util/Nullable;)Lorg/w3c/dom/Element;

    return-void
.end method

.method private addLastModifiedBy()V
    .locals 3

    sget-object v0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->namespaceCoreProperties:Lorg/apache/poi/javax/xml/stream/events/Namespace;

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->propsPart:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getLastModifiedByProperty()Lorg/apache/poi/openxml4j/util/Nullable;

    move-result-object v1

    const-string v2, "lastModifiedBy"

    invoke-direct {p0, v2, v0, v1}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->setElementTextContent(Ljava/lang/String;Lorg/apache/poi/javax/xml/stream/events/Namespace;Lorg/apache/poi/openxml4j/util/Nullable;)Lorg/w3c/dom/Element;

    return-void
.end method

.method private addLastPrinted()V
    .locals 4

    sget-object v0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->namespaceCoreProperties:Lorg/apache/poi/javax/xml/stream/events/Namespace;

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->propsPart:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getLastPrintedProperty()Lorg/apache/poi/openxml4j/util/Nullable;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->propsPart:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getLastPrintedPropertyString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "lastPrinted"

    invoke-direct {p0, v3, v0, v1, v2}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->setElementTextContent(Ljava/lang/String;Lorg/apache/poi/javax/xml/stream/events/Namespace;Lorg/apache/poi/openxml4j/util/Nullable;Ljava/lang/String;)Lorg/w3c/dom/Element;

    return-void
.end method

.method private addModified()V
    .locals 6

    sget-object v2, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->namespaceDcTerms:Lorg/apache/poi/javax/xml/stream/events/Namespace;

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->propsPart:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getModifiedProperty()Lorg/apache/poi/openxml4j/util/Nullable;

    move-result-object v3

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->propsPart:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getModifiedPropertyString()Ljava/lang/String;

    move-result-object v4

    const-string v1, "modified"

    const-string v5, "dcterms:W3CDTF"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->setElementTextContent(Ljava/lang/String;Lorg/apache/poi/javax/xml/stream/events/Namespace;Lorg/apache/poi/openxml4j/util/Nullable;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    return-void
.end method

.method private addRevision()V
    .locals 3

    sget-object v0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->namespaceCoreProperties:Lorg/apache/poi/javax/xml/stream/events/Namespace;

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->propsPart:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getRevisionProperty()Lorg/apache/poi/openxml4j/util/Nullable;

    move-result-object v1

    const-string v2, "revision"

    invoke-direct {p0, v2, v0, v1}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->setElementTextContent(Ljava/lang/String;Lorg/apache/poi/javax/xml/stream/events/Namespace;Lorg/apache/poi/openxml4j/util/Nullable;)Lorg/w3c/dom/Element;

    return-void
.end method

.method private addSubject()V
    .locals 3

    sget-object v0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->namespaceDC:Lorg/apache/poi/javax/xml/stream/events/Namespace;

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->propsPart:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getSubjectProperty()Lorg/apache/poi/openxml4j/util/Nullable;

    move-result-object v1

    const-string/jumbo v2, "subject"

    invoke-direct {p0, v2, v0, v1}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->setElementTextContent(Ljava/lang/String;Lorg/apache/poi/javax/xml/stream/events/Namespace;Lorg/apache/poi/openxml4j/util/Nullable;)Lorg/w3c/dom/Element;

    return-void
.end method

.method private addTitle()V
    .locals 3

    sget-object v0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->namespaceDC:Lorg/apache/poi/javax/xml/stream/events/Namespace;

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->propsPart:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getTitleProperty()Lorg/apache/poi/openxml4j/util/Nullable;

    move-result-object v1

    const-string/jumbo v2, "title"

    invoke-direct {p0, v2, v0, v1}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->setElementTextContent(Ljava/lang/String;Lorg/apache/poi/javax/xml/stream/events/Namespace;Lorg/apache/poi/openxml4j/util/Nullable;)Lorg/w3c/dom/Element;

    return-void
.end method

.method private addVersion()V
    .locals 3

    sget-object v0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->namespaceCoreProperties:Lorg/apache/poi/javax/xml/stream/events/Namespace;

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->propsPart:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getVersionProperty()Lorg/apache/poi/openxml4j/util/Nullable;

    move-result-object v1

    const-string/jumbo v2, "version"

    invoke-direct {p0, v2, v0, v1}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->setElementTextContent(Ljava/lang/String;Lorg/apache/poi/javax/xml/stream/events/Namespace;Lorg/apache/poi/openxml4j/util/Nullable;)Lorg/w3c/dom/Element;

    return-void
.end method

.method private getQName(Ljava/lang/String;Lorg/apache/poi/javax/xml/stream/events/Namespace;)Ljava/lang/String;
    .locals 1

    invoke-interface {p2}, Lorg/apache/poi/javax/xml/stream/events/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lorg/apache/poi/javax/xml/stream/events/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x3a

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private setElementTextContent(Ljava/lang/String;Lorg/apache/poi/javax/xml/stream/events/Namespace;Lorg/apache/poi/openxml4j/util/Nullable;)Lorg/w3c/dom/Element;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/poi/javax/xml/stream/events/Namespace;",
            "Lorg/apache/poi/openxml4j/util/Nullable<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/w3c/dom/Element;"
        }
    .end annotation

    invoke-virtual {p3}, Lorg/apache/poi/openxml4j/util/Nullable;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->setElementTextContent(Ljava/lang/String;Lorg/apache/poi/javax/xml/stream/events/Namespace;Lorg/apache/poi/openxml4j/util/Nullable;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    return-object p1
.end method

.method private setElementTextContent(Ljava/lang/String;Lorg/apache/poi/javax/xml/stream/events/Namespace;Lorg/apache/poi/openxml4j/util/Nullable;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/poi/javax/xml/stream/events/Namespace;",
            "Lorg/apache/poi/openxml4j/util/Nullable<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lorg/w3c/dom/Element;"
        }
    .end annotation

    invoke-virtual {p3}, Lorg/apache/poi/openxml4j/util/Nullable;->hasValue()Z

    move-result p3

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p3, p0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->xmlDoc:Lorg/w3c/dom/Document;

    invoke-interface {p3}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p3

    invoke-interface {p2}, Lorg/apache/poi/javax/xml/stream/events/Namespace;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0, p1}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->xmlDoc:Lorg/w3c/dom/Document;

    invoke-interface {p2}, Lorg/apache/poi/javax/xml/stream/events/Namespace;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->getQName(Ljava/lang/String;Lorg/apache/poi/javax/xml/stream/events/Namespace;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {p3, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_1
    invoke-interface {v0, p4}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    return-object v0
.end method

.method private setElementTextContent(Ljava/lang/String;Lorg/apache/poi/javax/xml/stream/events/Namespace;Lorg/apache/poi/openxml4j/util/Nullable;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/poi/javax/xml/stream/events/Namespace;",
            "Lorg/apache/poi/openxml4j/util/Nullable<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lorg/w3c/dom/Element;"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->setElementTextContent(Ljava/lang/String;Lorg/apache/poi/javax/xml/stream/events/Namespace;Lorg/apache/poi/openxml4j/util/Nullable;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object p2, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->namespaceXSI:Lorg/apache/poi/javax/xml/stream/events/Namespace;

    invoke-interface {p2}, Lorg/apache/poi/javax/xml/stream/events/Namespace;->getNamespaceURI()Ljava/lang/String;

    move-result-object p3

    const-string/jumbo p4, "type"

    invoke-direct {p0, p4, p2}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->getQName(Ljava/lang/String;Lorg/apache/poi/javax/xml/stream/events/Namespace;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p3, p2, p5}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method


# virtual methods
.method public marshall(Lorg/apache/poi/openxml4j/opc/PackagePart;Ljava/io/OutputStream;)Z
    .locals 2

    instance-of p2, p1, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    if-eqz p2, :cond_0

    check-cast p1, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->propsPart:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    invoke-static {}, Lorg/apache/poi/util/DocumentHelper;->createDocument()Lorg/w3c/dom/Document;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->xmlDoc:Lorg/w3c/dom/Document;

    sget-object p2, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->namespaceCoreProperties:Lorg/apache/poi/javax/xml/stream/events/Namespace;

    invoke-interface {p2}, Lorg/apache/poi/javax/xml/stream/events/Namespace;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    const-string v1, "coreProperties"

    invoke-direct {p0, v1, p2}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->getQName(Ljava/lang/String;Lorg/apache/poi/javax/xml/stream/events/Namespace;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    invoke-static {p1, p2}, Lorg/apache/poi/util/DocumentHelper;->addNamespaceDeclaration(Lorg/w3c/dom/Element;Lorg/apache/poi/javax/xml/stream/events/Namespace;)V

    sget-object p2, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->namespaceDC:Lorg/apache/poi/javax/xml/stream/events/Namespace;

    invoke-static {p1, p2}, Lorg/apache/poi/util/DocumentHelper;->addNamespaceDeclaration(Lorg/w3c/dom/Element;Lorg/apache/poi/javax/xml/stream/events/Namespace;)V

    sget-object p2, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->namespaceDcTerms:Lorg/apache/poi/javax/xml/stream/events/Namespace;

    invoke-static {p1, p2}, Lorg/apache/poi/util/DocumentHelper;->addNamespaceDeclaration(Lorg/w3c/dom/Element;Lorg/apache/poi/javax/xml/stream/events/Namespace;)V

    sget-object p2, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->namespaceXSI:Lorg/apache/poi/javax/xml/stream/events/Namespace;

    invoke-static {p1, p2}, Lorg/apache/poi/util/DocumentHelper;->addNamespaceDeclaration(Lorg/w3c/dom/Element;Lorg/apache/poi/javax/xml/stream/events/Namespace;)V

    iget-object p2, p0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->xmlDoc:Lorg/w3c/dom/Document;

    invoke-interface {p2, p1}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-direct {p0}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->addCategory()V

    invoke-direct {p0}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->addContentStatus()V

    invoke-direct {p0}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->addContentType()V

    invoke-direct {p0}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->addCreated()V

    invoke-direct {p0}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->addCreator()V

    invoke-direct {p0}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->addDescription()V

    invoke-direct {p0}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->addIdentifier()V

    invoke-direct {p0}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->addKeywords()V

    invoke-direct {p0}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->addLanguage()V

    invoke-direct {p0}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->addLastModifiedBy()V

    invoke-direct {p0}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->addLastPrinted()V

    invoke-direct {p0}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->addModified()V

    invoke-direct {p0}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->addRevision()V

    invoke-direct {p0}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->addSubject()V

    invoke-direct {p0}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->addTitle()V

    invoke-direct {p0}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->addVersion()V

    const/4 p1, 0x1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'part\' must be a PackagePropertiesPart instance."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
