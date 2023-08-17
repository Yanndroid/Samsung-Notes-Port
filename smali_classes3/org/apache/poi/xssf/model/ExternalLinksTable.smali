.class public Lorg/apache/poi/xssf/model/ExternalLinksTable;
.super Lorg/apache/poi/POIXMLDocumentPart;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/xssf/model/ExternalLinksTable$ExternalName;
    }
.end annotation


# instance fields
.field private link:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalLink;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/POIXMLDocumentPart;-><init>()V

    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalLink$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalLink;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/model/ExternalLinksTable;->link:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalLink;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalLink;->addNewExternalBook()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalBook;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/POIXMLDocumentPart;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/model/ExternalLinksTable;->readFrom(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public commit()V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/model/ExternalLinksTable;->writeTo(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public getCTExternalLink()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalLink;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/model/ExternalLinksTable;->link:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalLink;

    return-object v0
.end method

.method public getDefinedNames()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/usermodel/Name;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/model/ExternalLinksTable;->link:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalLink;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalLink;->getExternalBook()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalBook;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalBook;->getDefinedNames()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalDefinedNames;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalDefinedNames;->getDefinedNameArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalDefinedName;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    new-instance v5, Lorg/apache/poi/xssf/model/ExternalLinksTable$ExternalName;

    invoke-direct {v5, p0, v4}, Lorg/apache/poi/xssf/model/ExternalLinksTable$ExternalName;-><init>(Lorg/apache/poi/xssf/model/ExternalLinksTable;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalDefinedName;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getLinkedFileName()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xssf/model/ExternalLinksTable;->link:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalLink;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalLink;->getExternalBook()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalBook;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalBook;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelationship(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetMode()Lorg/apache/poi/openxml4j/opc/TargetMode;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/openxml4j/opc/TargetMode;->EXTERNAL:Lorg/apache/poi/openxml4j/opc/TargetMode;

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSheetNames()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/model/ExternalLinksTable;->link:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalLink;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalLink;->getExternalBook()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalBook;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalBook;->getSheetNames()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalSheetNames;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalSheetNames;->getSheetNameArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalSheetName;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    invoke-interface {v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalSheetName;->getVal()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public readFrom(Ljava/io/InputStream;)V
    .locals 1

    :try_start_0
    sget-object v0, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {p1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/ExternalLinkDocument$Factory;->parse(Ljava/io/InputStream;Lorg/apache/xmlbeans/XmlOptions;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/ExternalLinkDocument;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/ExternalLinkDocument;->getExternalLink()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalLink;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xssf/model/ExternalLinksTable;->link:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalLink;
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

.method public setLinkedFileName(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/model/ExternalLinksTable;->link:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalLink;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalLink;->getExternalBook()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalBook;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalBook;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->removeRelationship(Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    const-string v1, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/externalLinkPath"

    invoke-virtual {v0, p1, v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->addExternalRelationship(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/poi/xssf/model/ExternalLinksTable;->link:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalLink;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalLink;->getExternalBook()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalBook;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalBook;->setId(Ljava/lang/String;)V

    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 2

    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/ExternalLinkDocument$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/ExternalLinkDocument;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xssf/model/ExternalLinksTable;->link:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalLink;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/ExternalLinkDocument;->setExternalLink(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalLink;)V

    sget-object v1, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-interface {v0, p1, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/ExternalLinkDocument;->save(Ljava/io/OutputStream;Lorg/apache/xmlbeans/XmlOptions;)V

    return-void
.end method
