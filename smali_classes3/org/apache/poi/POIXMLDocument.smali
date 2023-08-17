.class public abstract Lorg/apache/poi/POIXMLDocument;
.super Lorg/apache/poi/POIXMLDocumentPart;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final DOCUMENT_CREATOR:Ljava/lang/String; = "Apache POI"

.field public static final OLE_OBJECT_REL_TYPE:Ljava/lang/String; = "http://schemas.openxmlformats.org/officeDocument/2006/relationships/oleObject"

.field public static final PACK_OBJECT_REL_TYPE:Ljava/lang/String; = "http://schemas.openxmlformats.org/officeDocument/2006/relationships/package"


# instance fields
.field private pkg:Lorg/apache/poi/openxml4j/opc/OPCPackage;

.field private properties:Lorg/apache/poi/POIXMLProperties;


# direct methods
.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/POIXMLDocumentPart;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    invoke-direct {p0, p1}, Lorg/apache/poi/POIXMLDocument;->init(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/POIXMLDocumentPart;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/apache/poi/POIXMLDocument;->init(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    return-void
.end method

.method private init(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V
    .locals 1

    iput-object p1, p0, Lorg/apache/poi/POIXMLDocument;->pkg:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    invoke-static {}, Lorg/apache/xmlbeans/impl/common/SystemCache;->get()Lorg/apache/xmlbeans/impl/common/SystemCache;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/apache/xmlbeans/impl/common/SystemCache;->setSaxLoader(Ljava/lang/Object;)V

    return-void
.end method

.method public static openPackage(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/OPCPackage;
    .locals 2

    :try_start_0
    invoke-static {p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->open(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object p0
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/POIXMLDocument;->pkg:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPackageAccess()Lorg/apache/poi/openxml4j/opc/PackageAccess;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/openxml4j/opc/PackageAccess;->READ:Lorg/apache/poi/openxml4j/opc/PackageAccess;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/POIXMLDocument;->pkg:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->revert()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/POIXMLDocument;->pkg:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->close()V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/POIXMLDocument;->pkg:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    :cond_1
    return-void
.end method

.method public abstract getAllEmbedds()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/openxml4j/opc/PackagePart;",
            ">;"
        }
    .end annotation
.end method

.method public getCorePart()Lorg/apache/poi/openxml4j/opc/PackagePart;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    return-object v0
.end method

.method public getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/POIXMLDocument;->pkg:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    return-object v0
.end method

.method public getProperties()Lorg/apache/poi/POIXMLProperties;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/POIXMLDocument;->properties:Lorg/apache/poi/POIXMLProperties;

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Lorg/apache/poi/POIXMLProperties;

    iget-object v1, p0, Lorg/apache/poi/POIXMLDocument;->pkg:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    invoke-direct {v0, v1}, Lorg/apache/poi/POIXMLProperties;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    iput-object v0, p0, Lorg/apache/poi/POIXMLDocument;->properties:Lorg/apache/poi/POIXMLProperties;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/poi/POIXMLException;

    invoke-direct {v1, v0}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/poi/POIXMLDocument;->properties:Lorg/apache/poi/POIXMLProperties;

    return-object v0
.end method

.method public getRelatedByType(Ljava/lang/String;)[Lorg/apache/poi/openxml4j/opc/PackagePart;
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelationshipsByType(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/poi/openxml4j/opc/PackagePart;

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelatedPart(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final load(Lorg/apache/poi/POIXMLFactory;)V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/POIXMLDocumentPart;->read(Lorg/apache/poi/POIXMLFactory;Ljava/util/Map;)V
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/OpenXML4JException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->onDocumentRead()V

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lorg/apache/poi/POIXMLException;

    invoke-direct {v0, p1}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final write(Ljava/io/OutputStream;)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocument;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0, v1}, Lorg/apache/poi/POIXMLDocumentPart;->onSave(Ljava/util/Set;)V

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocument;->getProperties()Lorg/apache/poi/POIXMLProperties;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/POIXMLProperties;->commit()V

    invoke-virtual {v0, p1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->save(Ljava/io/OutputStream;)V

    return-void

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Cannot write data, document seems to have been closed already"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
