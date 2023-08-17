.class public Lorg/apache/poi/POIXMLProperties;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/POIXMLProperties$CustomProperties;,
        Lorg/apache/poi/POIXMLProperties$ExtendedProperties;,
        Lorg/apache/poi/POIXMLProperties$CoreProperties;
    }
.end annotation


# static fields
.field private static final NEW_CUST_INSTANCE:Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;

.field private static final NEW_EXT_INSTANCE:Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;


# instance fields
.field private core:Lorg/apache/poi/POIXMLProperties$CoreProperties;

.field private cust:Lorg/apache/poi/POIXMLProperties$CustomProperties;

.field private custPart:Lorg/apache/poi/openxml4j/opc/PackagePart;

.field private ext:Lorg/apache/poi/POIXMLProperties$ExtendedProperties;

.field private extPart:Lorg/apache/poi/openxml4j/opc/PackagePart;

.field private pkg:Lorg/apache/poi/openxml4j/opc/OPCPackage;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument$Factory;->newInstance()Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/POIXMLProperties;->NEW_EXT_INSTANCE:Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;->addNewProperties()Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;

    invoke-static {}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument$Factory;->newInstance()Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/POIXMLProperties;->NEW_CUST_INSTANCE:Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;->addNewProperties()Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperties;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/POIXMLProperties;->pkg:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    new-instance v0, Lorg/apache/poi/POIXMLProperties$CoreProperties;

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPackageProperties()Lorg/apache/poi/openxml4j/opc/PackageProperties;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/apache/poi/POIXMLProperties$CoreProperties;-><init>(Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;Lorg/apache/poi/POIXMLProperties$1;)V

    iput-object v0, p0, Lorg/apache/poi/POIXMLProperties;->core:Lorg/apache/poi/POIXMLProperties$CoreProperties;

    iget-object p1, p0, Lorg/apache/poi/POIXMLProperties;->pkg:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    const-string v0, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/extended-properties"

    invoke-virtual {p1, v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getRelationshipsByType(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->size()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lorg/apache/poi/POIXMLProperties;->pkg:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    invoke-virtual {p1, v2}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->getRelationship(I)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPart(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/POIXMLProperties;->extPart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    sget-object v0, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {p1, v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument$Factory;->parse(Ljava/io/InputStream;Lorg/apache/xmlbeans/XmlOptions;)Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;

    move-result-object p1

    new-instance v0, Lorg/apache/poi/POIXMLProperties$ExtendedProperties;

    invoke-direct {v0, p1, v1}, Lorg/apache/poi/POIXMLProperties$ExtendedProperties;-><init>(Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;Lorg/apache/poi/POIXMLProperties$1;)V

    iput-object v0, p0, Lorg/apache/poi/POIXMLProperties;->ext:Lorg/apache/poi/POIXMLProperties$ExtendedProperties;

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lorg/apache/poi/POIXMLProperties;->extPart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    new-instance p1, Lorg/apache/poi/POIXMLProperties$ExtendedProperties;

    sget-object v0, Lorg/apache/poi/POIXMLProperties;->NEW_EXT_INSTANCE:Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlObject;->copy()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;

    invoke-direct {p1, v0, v1}, Lorg/apache/poi/POIXMLProperties$ExtendedProperties;-><init>(Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;Lorg/apache/poi/POIXMLProperties$1;)V

    iput-object p1, p0, Lorg/apache/poi/POIXMLProperties;->ext:Lorg/apache/poi/POIXMLProperties$ExtendedProperties;

    :goto_0
    iget-object p1, p0, Lorg/apache/poi/POIXMLProperties;->pkg:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    const-string v0, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/custom-properties"

    invoke-virtual {p1, v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getRelationshipsByType(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->size()I

    move-result v0

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lorg/apache/poi/POIXMLProperties;->pkg:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    invoke-virtual {p1, v2}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->getRelationship(I)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPart(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/POIXMLProperties;->custPart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    sget-object v0, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {p1, v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument$Factory;->parse(Ljava/io/InputStream;Lorg/apache/xmlbeans/XmlOptions;)Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;

    move-result-object p1

    new-instance v0, Lorg/apache/poi/POIXMLProperties$CustomProperties;

    invoke-direct {v0, p1, v1}, Lorg/apache/poi/POIXMLProperties$CustomProperties;-><init>(Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;Lorg/apache/poi/POIXMLProperties$1;)V

    iput-object v0, p0, Lorg/apache/poi/POIXMLProperties;->cust:Lorg/apache/poi/POIXMLProperties$CustomProperties;

    goto :goto_1

    :cond_1
    iput-object v1, p0, Lorg/apache/poi/POIXMLProperties;->custPart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    new-instance p1, Lorg/apache/poi/POIXMLProperties$CustomProperties;

    sget-object v0, Lorg/apache/poi/POIXMLProperties;->NEW_CUST_INSTANCE:Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlObject;->copy()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;

    invoke-direct {p1, v0, v1}, Lorg/apache/poi/POIXMLProperties$CustomProperties;-><init>(Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;Lorg/apache/poi/POIXMLProperties$1;)V

    iput-object p1, p0, Lorg/apache/poi/POIXMLProperties;->cust:Lorg/apache/poi/POIXMLProperties$CustomProperties;

    :goto_1
    return-void
.end method


# virtual methods
.method public commit()V
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/POIXMLProperties;->extPart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/poi/POIXMLProperties;->NEW_EXT_INSTANCE:Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/POIXMLProperties;->ext:Lorg/apache/poi/POIXMLProperties$ExtendedProperties;

    invoke-static {v1}, Lorg/apache/poi/POIXMLProperties$ExtendedProperties;->access$300(Lorg/apache/poi/POIXMLProperties$ExtendedProperties;)Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "/docProps/app.xml"

    invoke-static {v0}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/POIXMLProperties;->pkg:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    sget-object v2, Lorg/apache/poi/openxml4j/opc/TargetMode;->INTERNAL:Lorg/apache/poi/openxml4j/opc/TargetMode;

    const-string v3, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/extended-properties"

    invoke-virtual {v1, v0, v2, v3}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->addRelationship(Lorg/apache/poi/openxml4j/opc/PackagePartName;Lorg/apache/poi/openxml4j/opc/TargetMode;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    iget-object v1, p0, Lorg/apache/poi/POIXMLProperties;->pkg:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    const-string v2, "application/vnd.openxmlformats-officedocument.extended-properties+xml"

    invoke-virtual {v1, v0, v2}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->createPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/POIXMLProperties;->extPart:Lorg/apache/poi/openxml4j/opc/PackagePart;
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/poi/POIXMLException;

    invoke-direct {v1, v0}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/poi/POIXMLProperties;->custPart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    if-nez v0, :cond_1

    sget-object v0, Lorg/apache/poi/POIXMLProperties;->NEW_CUST_INSTANCE:Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/POIXMLProperties;->cust:Lorg/apache/poi/POIXMLProperties$CustomProperties;

    invoke-static {v1}, Lorg/apache/poi/POIXMLProperties$CustomProperties;->access$400(Lorg/apache/poi/POIXMLProperties$CustomProperties;)Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_1
    const-string v0, "/docProps/custom.xml"

    invoke-static {v0}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/POIXMLProperties;->pkg:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    sget-object v2, Lorg/apache/poi/openxml4j/opc/TargetMode;->INTERNAL:Lorg/apache/poi/openxml4j/opc/TargetMode;

    const-string v3, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/custom-properties"

    invoke-virtual {v1, v0, v2, v3}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->addRelationship(Lorg/apache/poi/openxml4j/opc/PackagePartName;Lorg/apache/poi/openxml4j/opc/TargetMode;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    iget-object v1, p0, Lorg/apache/poi/POIXMLProperties;->pkg:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    const-string v2, "application/vnd.openxmlformats-officedocument.custom-properties+xml"

    invoke-virtual {v1, v0, v2}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->createPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/POIXMLProperties;->custPart:Lorg/apache/poi/openxml4j/opc/PackagePart;
    :try_end_1
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v1, Lorg/apache/poi/POIXMLException;

    invoke-direct {v1, v0}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/apache/poi/POIXMLProperties;->extPart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/POIXMLProperties;->extPart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getSize()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    iget-object v1, p0, Lorg/apache/poi/POIXMLProperties;->extPart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->clear()V

    :cond_2
    iget-object v1, p0, Lorg/apache/poi/POIXMLProperties;->ext:Lorg/apache/poi/POIXMLProperties$ExtendedProperties;

    invoke-static {v1}, Lorg/apache/poi/POIXMLProperties$ExtendedProperties;->access$300(Lorg/apache/poi/POIXMLProperties$ExtendedProperties;)Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-interface {v1, v0, v2}, Lorg/apache/xmlbeans/XmlTokenSource;->save(Ljava/io/OutputStream;Lorg/apache/xmlbeans/XmlOptions;)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_3
    iget-object v0, p0, Lorg/apache/poi/POIXMLProperties;->custPart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/POIXMLProperties;->cust:Lorg/apache/poi/POIXMLProperties$CustomProperties;

    invoke-static {v1}, Lorg/apache/poi/POIXMLProperties$CustomProperties;->access$400(Lorg/apache/poi/POIXMLProperties$CustomProperties;)Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-interface {v1, v0, v2}, Lorg/apache/xmlbeans/XmlTokenSource;->save(Ljava/io/OutputStream;Lorg/apache/xmlbeans/XmlOptions;)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_4
    return-void
.end method

.method public getCoreProperties()Lorg/apache/poi/POIXMLProperties$CoreProperties;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/POIXMLProperties;->core:Lorg/apache/poi/POIXMLProperties$CoreProperties;

    return-object v0
.end method

.method public getCustomProperties()Lorg/apache/poi/POIXMLProperties$CustomProperties;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/POIXMLProperties;->cust:Lorg/apache/poi/POIXMLProperties$CustomProperties;

    return-object v0
.end method

.method public getExtendedProperties()Lorg/apache/poi/POIXMLProperties$ExtendedProperties;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/POIXMLProperties;->ext:Lorg/apache/poi/POIXMLProperties$ExtendedProperties;

    return-object v0
.end method

.method public getThumbnailFilename()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLProperties;->getThumbnailPart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnailImage()Ljava/io/InputStream;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLProperties;->getThumbnailPart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnailPart()Lorg/apache/poi/openxml4j/opc/PackagePart;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/POIXMLProperties;->pkg:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    const-string v1, "http://schemas.openxmlformats.org/package/2006/relationships/metadata/thumbnail"

    invoke-virtual {v0, v1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getRelationshipsByType(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lorg/apache/poi/POIXMLProperties;->pkg:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->getRelationship(I)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPart(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public setThumbnail(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLProperties;->getThumbnailPart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/POIXMLProperties;->pkg:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->addThumbnail(Ljava/lang/String;Ljava/io/InputStream;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lorg/apache/poi/openxml4j/opc/ContentTypes;->getContentTypeFromFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    invoke-static {p2, p1}, Lorg/apache/poi/openxml4j/opc/StreamHelper;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)Z

    :goto_0
    return-void

    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t set a Thumbnail of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " when existing one is of a different type "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getContentType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
