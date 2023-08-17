.class public final Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/PackagePropertiesUnmarshaller;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/openxml4j/opc/internal/PartUnmarshaller;


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


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private loadCategory(Lorg/w3c/dom/Document;)Ljava/lang/String;
    .locals 2

    const-string v0, "category"

    const-string v1, "http://schemas.openxmlformats.org/package/2006/metadata/core-properties"

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/PackagePropertiesUnmarshaller;->readElement(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private loadContentStatus(Lorg/w3c/dom/Document;)Ljava/lang/String;
    .locals 2

    const-string v0, "contentStatus"

    const-string v1, "http://schemas.openxmlformats.org/package/2006/metadata/core-properties"

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/PackagePropertiesUnmarshaller;->readElement(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private loadContentType(Lorg/w3c/dom/Document;)Ljava/lang/String;
    .locals 2

    const-string v0, "contentType"

    const-string v1, "http://schemas.openxmlformats.org/package/2006/metadata/core-properties"

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/PackagePropertiesUnmarshaller;->readElement(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private loadCreated(Lorg/w3c/dom/Document;)Ljava/lang/String;
    .locals 2

    const-string v0, "created"

    const-string v1, "http://purl.org/dc/terms/"

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/PackagePropertiesUnmarshaller;->readElement(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private loadCreator(Lorg/w3c/dom/Document;)Ljava/lang/String;
    .locals 2

    const-string v0, "creator"

    const-string v1, "http://purl.org/dc/elements/1.1/"

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/PackagePropertiesUnmarshaller;->readElement(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private loadDescription(Lorg/w3c/dom/Document;)Ljava/lang/String;
    .locals 2

    const-string v0, "description"

    const-string v1, "http://purl.org/dc/elements/1.1/"

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/PackagePropertiesUnmarshaller;->readElement(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private loadIdentifier(Lorg/w3c/dom/Document;)Ljava/lang/String;
    .locals 2

    const-string v0, "identifier"

    const-string v1, "http://purl.org/dc/elements/1.1/"

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/PackagePropertiesUnmarshaller;->readElement(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private loadKeywords(Lorg/w3c/dom/Document;)Ljava/lang/String;
    .locals 2

    const-string v0, "keywords"

    const-string v1, "http://schemas.openxmlformats.org/package/2006/metadata/core-properties"

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/PackagePropertiesUnmarshaller;->readElement(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private loadLanguage(Lorg/w3c/dom/Document;)Ljava/lang/String;
    .locals 2

    const-string v0, "language"

    const-string v1, "http://purl.org/dc/elements/1.1/"

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/PackagePropertiesUnmarshaller;->readElement(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private loadLastModifiedBy(Lorg/w3c/dom/Document;)Ljava/lang/String;
    .locals 2

    const-string v0, "lastModifiedBy"

    const-string v1, "http://schemas.openxmlformats.org/package/2006/metadata/core-properties"

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/PackagePropertiesUnmarshaller;->readElement(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private loadLastPrinted(Lorg/w3c/dom/Document;)Ljava/lang/String;
    .locals 2

    const-string v0, "lastPrinted"

    const-string v1, "http://schemas.openxmlformats.org/package/2006/metadata/core-properties"

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/PackagePropertiesUnmarshaller;->readElement(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private loadModified(Lorg/w3c/dom/Document;)Ljava/lang/String;
    .locals 2

    const-string v0, "modified"

    const-string v1, "http://purl.org/dc/terms/"

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/PackagePropertiesUnmarshaller;->readElement(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private loadRevision(Lorg/w3c/dom/Document;)Ljava/lang/String;
    .locals 2

    const-string v0, "revision"

    const-string v1, "http://schemas.openxmlformats.org/package/2006/metadata/core-properties"

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/PackagePropertiesUnmarshaller;->readElement(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private loadSubject(Lorg/w3c/dom/Document;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "subject"

    const-string v1, "http://purl.org/dc/elements/1.1/"

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/PackagePropertiesUnmarshaller;->readElement(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private loadTitle(Lorg/w3c/dom/Document;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "title"

    const-string v1, "http://purl.org/dc/elements/1.1/"

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/PackagePropertiesUnmarshaller;->readElement(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private loadVersion(Lorg/w3c/dom/Document;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "version"

    const-string v1, "http://schemas.openxmlformats.org/package/2006/metadata/core-properties"

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/PackagePropertiesUnmarshaller;->readElement(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private readElement(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p1

    invoke-interface {p1, p3, p2}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Element;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public checkElementForOPCCompliance(Lorg/w3c/dom/Element;)V
    .locals 7

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    invoke-interface {v0, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Attr;

    invoke-interface {v4}, Lorg/w3c/dom/Attr;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    const-string v6, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://schemas.openxmlformats.org/markup-compatibility/2006"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    const-string v0, "OPC Compliance error [M4.2]: A format consumer shall consider the use of the Markup Compatibility namespace to be an error."

    invoke-direct {p1, v0}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getLocalName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    const-string v3, "http://purl.org/dc/terms/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v4, "modified"

    const-string v5, "created"

    if-eqz v1, :cond_4

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    new-instance p1, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    const-string v0, "OPC Compliance error [M4.3]: Producers shall not create a document element that contains refinements to the Dublin Core elements, except for the two specified in the schema: <dcterms:created> and <dcterms:modified> Consumers shall consider a document element that violates this constraint to be an error."

    invoke-direct {p1, v0}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_2
    const-string v1, "http://www.w3.org/XML/1998/namespace"

    const-string v6, "lang"

    invoke-interface {p1, v1, v6}, Lorg/w3c/dom/Element;->getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v1

    if-nez v1, :cond_b

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    new-instance p1, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Namespace error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " shouldn\'t have the following naemspace -> "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_3
    const-string v1, "http://www.w3.org/2001/XMLSchema-instance"

    const-string/jumbo v3, "type"

    invoke-interface {p1, v1, v3}, Lorg/w3c/dom/Element;->getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v1

    const-string v3, "The element \'"

    if-eqz v1, :cond_8

    invoke-interface {v1}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":W3CDTF"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_4

    :cond_7
    new-instance v2, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' must have the \'xsi:type\' attribute with the value \'"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getPrefix()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":W3CDTF\', but had \'"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' !"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_8
    new-instance p1, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' must have the \'xsi:type\' attribute present !"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    :goto_4
    const-string v0, "*"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    :goto_5
    if-ge v2, v0, :cond_a

    invoke-interface {p1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    invoke-virtual {p0, v1}, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/PackagePropertiesUnmarshaller;->checkElementForOPCCompliance(Lorg/w3c/dom/Element;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_a
    return-void

    :cond_b
    new-instance p1, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    const-string v0, "OPC Compliance error [M4.4]: Producers shall not create a document element that contains the xml:lang attribute. Consumers shall consider a document element that violates this constraint to be an error."

    invoke-direct {p1, v0}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public unmarshall(Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/UnmarshallContext;Ljava/io/InputStream;)Lorg/apache/poi/openxml4j/opc/PackagePart;
    .locals 3

    new-instance v0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/UnmarshallContext;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/UnmarshallContext;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;Lorg/apache/poi/openxml4j/opc/PackagePartName;)V

    if-nez p2, :cond_2

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/UnmarshallContext;->getZipEntry()Ljava/util/zip/ZipEntry;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/UnmarshallContext;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object p2

    check-cast p2, Lorg/apache/poi/openxml4j/opc/ZipPackage;

    invoke-virtual {p2}, Lorg/apache/poi/openxml4j/opc/ZipPackage;->getZipArchive()Lorg/apache/poi/openxml4j/util/ZipEntrySource;

    move-result-object p2

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/UnmarshallContext;->getZipEntry()Ljava/util/zip/ZipEntry;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/apache/poi/openxml4j/util/ZipEntrySource;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/UnmarshallContext;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/UnmarshallContext;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object p2

    check-cast p2, Lorg/apache/poi/openxml4j/opc/ZipPackage;

    invoke-static {p2}, Lorg/apache/poi/openxml4j/opc/internal/ZipHelper;->getCorePropertiesZipEntry(Lorg/apache/poi/openxml4j/opc/ZipPackage;)Ljava/util/zip/ZipEntry;

    move-result-object p2

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/UnmarshallContext;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/openxml4j/opc/ZipPackage;

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/ZipPackage;->getZipArchive()Lorg/apache/poi/openxml4j/util/ZipEntrySource;

    move-result-object p1

    invoke-interface {p1, p2}, Lorg/apache/poi/openxml4j/util/ZipEntrySource;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p2

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Error while trying to get the part input stream."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    :try_start_0
    invoke-static {p2}, Lorg/apache/poi/util/DocumentHelper;->readDocument(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object p1

    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/PackagePropertiesUnmarshaller;->checkElementForOPCCompliance(Lorg/w3c/dom/Element;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/PackagePropertiesUnmarshaller;->loadCategory(Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->setCategoryProperty(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/PackagePropertiesUnmarshaller;->loadContentStatus(Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->setContentStatusProperty(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/PackagePropertiesUnmarshaller;->loadContentType(Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->setContentTypeProperty(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/PackagePropertiesUnmarshaller;->loadCreated(Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->setCreatedProperty(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/PackagePropertiesUnmarshaller;->loadCreator(Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->setCreatorProperty(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/PackagePropertiesUnmarshaller;->loadDescription(Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->setDescriptionProperty(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/PackagePropertiesUnmarshaller;->loadIdentifier(Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->setIdentifierProperty(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/PackagePropertiesUnmarshaller;->loadKeywords(Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->setKeywordsProperty(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/PackagePropertiesUnmarshaller;->loadLanguage(Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->setLanguageProperty(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/PackagePropertiesUnmarshaller;->loadLastModifiedBy(Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->setLastModifiedByProperty(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/PackagePropertiesUnmarshaller;->loadLastPrinted(Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->setLastPrintedProperty(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/PackagePropertiesUnmarshaller;->loadModified(Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->setModifiedProperty(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/PackagePropertiesUnmarshaller;->loadRevision(Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->setRevisionProperty(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/PackagePropertiesUnmarshaller;->loadSubject(Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->setSubjectProperty(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/PackagePropertiesUnmarshaller;->loadTitle(Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->setTitleProperty(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/PackagePropertiesUnmarshaller;->loadVersion(Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->setVersionProperty(Ljava/lang/String;)V

    return-object v0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
