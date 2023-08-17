.class public Lorg/apache/poi/POIXMLDocumentPart;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/POIXMLDocumentPart$RelationPart;
    }
.end annotation


# static fields
.field private static final logger:Lorg/apache/poi/util/POILogger;


# instance fields
.field private coreDocumentRel:Ljava/lang/String;

.field private packagePart:Lorg/apache/poi/openxml4j/opc/PackagePart;

.field private parent:Lorg/apache/poi/POIXMLDocumentPart;

.field private relationCounter:I

.field private relations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/POIXMLDocumentPart$RelationPart;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/POIXMLDocumentPart;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/POIXMLDocumentPart;->logger:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/officeDocument"

    iput-object v0, p0, Lorg/apache/poi/POIXMLDocumentPart;->coreDocumentRel:Ljava/lang/String;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/POIXMLDocumentPart;->relations:Ljava/util/Map;

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/POIXMLDocumentPart;->relationCounter:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/POIXMLDocumentPart;Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/officeDocument"

    iput-object v0, p0, Lorg/apache/poi/POIXMLDocumentPart;->coreDocumentRel:Ljava/lang/String;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/POIXMLDocumentPart;->relations:Ljava/util/Map;

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/POIXMLDocumentPart;->relationCounter:I

    iput-object p2, p0, Lorg/apache/poi/POIXMLDocumentPart;->packagePart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    iput-object p1, p0, Lorg/apache/poi/POIXMLDocumentPart;->parent:Lorg/apache/poi/POIXMLDocumentPart;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V
    .locals 1

    const-string v0, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/officeDocument"

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/POIXMLDocumentPart;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2}, Lorg/apache/poi/POIXMLDocumentPart;->getPartFromOPCPackage(Lorg/apache/poi/openxml4j/opc/OPCPackage;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/POIXMLDocumentPart;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    iput-object p2, p0, Lorg/apache/poi/POIXMLDocumentPart;->coreDocumentRel:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/POIXMLDocumentPart;-><init>(Lorg/apache/poi/POIXMLDocumentPart;Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-void
.end method

.method public static _invokeOnDocumentRead(Lorg/apache/poi/POIXMLDocumentPart;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->onDocumentRead()V

    return-void
.end method

.method private addRelation(Lorg/apache/poi/openxml4j/opc/PackageRelationship;Lorg/apache/poi/POIXMLDocumentPart;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/POIXMLDocumentPart;->relations:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;

    invoke-direct {v2, p1, p2}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;-><init>(Lorg/apache/poi/openxml4j/opc/PackageRelationship;Lorg/apache/poi/POIXMLDocumentPart;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lorg/apache/poi/POIXMLDocumentPart;->incrementRelationCounter()I

    return-void
.end method

.method private static getPartFromOPCPackage(Lorg/apache/poi/openxml4j/opc/OPCPackage;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePart;
    .locals 2

    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getRelationshipsByType(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->getRelationship(I)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPart(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lorg/apache/poi/POIXMLException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OOXML file structure broken/invalid - core document \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetURI()Ljava/net/URI;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' not found."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-string p1, "http://purl.oclc.org/ooxml/officeDocument/relationships/officeDocument"

    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getRelationshipsByType(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object p0

    invoke-virtual {p0, v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->getRelationship(I)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object p0

    if-eqz p0, :cond_2

    new-instance p0, Lorg/apache/poi/POIXMLException;

    const-string p1, "Strict OOXML isn\'t currently supported, please see bug #57699"

    invoke-direct {p0, p1}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lorg/apache/poi/POIXMLException;

    const-string p1, "OOXML file structure broken/invalid - no core document found!"

    invoke-direct {p0, p1}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final addRelation(Ljava/lang/String;Lorg/apache/poi/POIXMLRelation;Lorg/apache/poi/POIXMLDocumentPart;)Lorg/apache/poi/POIXMLDocumentPart$RelationPart;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/POIXMLDocumentPart;->packagePart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    invoke-virtual {p3}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->findExistingRelation(Lorg/apache/poi/openxml4j/opc/PackagePart;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p3}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/poi/POIXMLRelation;->getRelation()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lorg/apache/poi/POIXMLDocumentPart;->packagePart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    sget-object v2, Lorg/apache/poi/openxml4j/opc/TargetMode;->INTERNAL:Lorg/apache/poi/openxml4j/opc/TargetMode;

    invoke-virtual {v1, v0, v2, p2, p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->addRelationship(Lorg/apache/poi/openxml4j/opc/PackagePartName;Lorg/apache/poi/openxml4j/opc/TargetMode;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v0

    :cond_0
    invoke-direct {p0, v0, p3}, Lorg/apache/poi/POIXMLDocumentPart;->addRelation(Lorg/apache/poi/openxml4j/opc/PackageRelationship;Lorg/apache/poi/POIXMLDocumentPart;)V

    new-instance p1, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;

    invoke-direct {p1, v0, p3}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;-><init>(Lorg/apache/poi/openxml4j/opc/PackageRelationship;Lorg/apache/poi/POIXMLDocumentPart;)V

    return-object p1
.end method

.method public commit()V
    .locals 0

    return-void
.end method

.method public final createRelationship(Lorg/apache/poi/POIXMLRelation;Lorg/apache/poi/POIXMLFactory;IZ)Lorg/apache/poi/POIXMLDocumentPart$RelationPart;
    .locals 4

    :try_start_0
    invoke-virtual {p1, p3}, Lorg/apache/poi/POIXMLRelation;->getFileName(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object p3

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/apache/poi/POIXMLDocumentPart;->packagePart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/poi/POIXMLRelation;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p3, v2}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->createPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    if-nez p4, :cond_0

    iget-object v0, p0, Lorg/apache/poi/POIXMLDocumentPart;->packagePart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    sget-object v2, Lorg/apache/poi/openxml4j/opc/TargetMode;->INTERNAL:Lorg/apache/poi/openxml4j/opc/TargetMode;

    invoke-virtual {p1}, Lorg/apache/poi/POIXMLRelation;->getRelation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p3, v2, v3}, Lorg/apache/poi/openxml4j/opc/PackagePart;->addRelationship(Lorg/apache/poi/openxml4j/opc/PackagePartName;Lorg/apache/poi/openxml4j/opc/TargetMode;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v0

    :cond_0
    invoke-virtual {p2, p1}, Lorg/apache/poi/POIXMLFactory;->newDocumentPart(Lorg/apache/poi/POIXMLRelation;)Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object p1

    iput-object v1, p1, Lorg/apache/poi/POIXMLDocumentPart;->packagePart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    iput-object p0, p1, Lorg/apache/poi/POIXMLDocumentPart;->parent:Lorg/apache/poi/POIXMLDocumentPart;

    if-nez p4, :cond_1

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/POIXMLDocumentPart;->addRelation(Lorg/apache/poi/openxml4j/opc/PackageRelationship;Lorg/apache/poi/POIXMLDocumentPart;)V

    :cond_1
    new-instance p2, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;

    invoke-direct {p2, v0, p1}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;-><init>(Lorg/apache/poi/openxml4j/opc/PackageRelationship;Lorg/apache/poi/POIXMLDocumentPart;)V
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/PartAlreadyExistsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    new-instance p2, Lorg/apache/poi/POIXMLException;

    invoke-direct {p2, p1}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    throw p1
.end method

.method public final createRelationship(Lorg/apache/poi/POIXMLRelation;Lorg/apache/poi/POIXMLFactory;)Lorg/apache/poi/POIXMLDocumentPart;
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/apache/poi/POIXMLDocumentPart;->createRelationship(Lorg/apache/poi/POIXMLRelation;Lorg/apache/poi/POIXMLFactory;IZ)Lorg/apache/poi/POIXMLDocumentPart$RelationPart;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object p1

    return-object p1
.end method

.method public final createRelationship(Lorg/apache/poi/POIXMLRelation;Lorg/apache/poi/POIXMLFactory;I)Lorg/apache/poi/POIXMLDocumentPart;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/poi/POIXMLDocumentPart;->createRelationship(Lorg/apache/poi/POIXMLRelation;Lorg/apache/poi/POIXMLFactory;IZ)Lorg/apache/poi/POIXMLDocumentPart$RelationPart;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object p1

    return-object p1
.end method

.method public decrementRelationCounter()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/POIXMLDocumentPart;->relationCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/poi/POIXMLDocumentPart;->relationCounter:I

    return v0
.end method

.method public final getNextPartNumber(Lorg/apache/poi/POIXMLRelation;I)I
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/POIXMLDocumentPart;->packagePart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v0

    :try_start_0
    invoke-virtual {p1}, Lorg/apache/poi/POIXMLRelation;->getDefaultFileName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x270f

    invoke-virtual {p1, v2}, Lorg/apache/poi/POIXMLRelation;->getFileName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_1

    invoke-static {v1}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->containPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Z

    move-result p1

    if-eqz p1, :cond_0

    return v3

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    if-gez p2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    move v1, p2

    :goto_0
    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getParts()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr p2, v2

    :goto_1
    if-gt v1, p2, :cond_4

    invoke-virtual {p1, v1}, Lorg/apache/poi/POIXMLRelation;->getFileName(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->containPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Z

    move-result v2
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_3

    return v1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return v3

    :catch_0
    move-exception p1

    new-instance p2, Lorg/apache/poi/POIXMLException;

    invoke-direct {p2, p1}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/POIXMLDocumentPart;->packagePart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    return-object v0
.end method

.method public final getParent()Lorg/apache/poi/POIXMLDocumentPart;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/POIXMLDocumentPart;->parent:Lorg/apache/poi/POIXMLDocumentPart;

    return-object v0
.end method

.method public final getRelationById(Ljava/lang/String;)Lorg/apache/poi/POIXMLDocumentPart;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/POIXMLDocumentPart;->relations:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getRelationCounter()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/POIXMLDocumentPart;->relationCounter:I

    return v0
.end method

.method public final getRelationId(Lorg/apache/poi/POIXMLDocumentPart;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/POIXMLDocumentPart;->relations:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;

    invoke-virtual {v1}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getRelationship()Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getRelationParts()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/POIXMLDocumentPart$RelationPart;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/poi/POIXMLDocumentPart;->relations:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getRelations()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/POIXMLDocumentPart;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/POIXMLDocumentPart;->relations:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;

    invoke-virtual {v2}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTargetPart(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)Lorg/apache/poi/openxml4j/opc/PackagePart;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelatedPart(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p1

    return-object p1
.end method

.method public incrementRelationCounter()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/POIXMLDocumentPart;->relationCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/poi/POIXMLDocumentPart;->relationCounter:I

    return v0
.end method

.method public onDocumentCreate()V
    .locals 0

    return-void
.end method

.method public onDocumentRead()V
    .locals 0

    return-void
.end method

.method public onDocumentRemove()V
    .locals 0

    return-void
.end method

.method public final onSave(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/apache/poi/openxml4j/opc/PackagePart;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->prepareForCommit()V

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->commit()V

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/apache/poi/POIXMLDocumentPart;->relations:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;

    invoke-virtual {v1}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, p1}, Lorg/apache/poi/POIXMLDocumentPart;->onSave(Ljava/util/Set;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public prepareForCommit()V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->clear()V

    :cond_0
    return-void
.end method

.method public read(Lorg/apache/poi/POIXMLFactory;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/POIXMLFactory;",
            "Ljava/util/Map<",
            "Lorg/apache/poi/openxml4j/opc/PackagePart;",
            "Lorg/apache/poi/POIXMLDocumentPart;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-interface {p2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/POIXMLDocumentPart;

    if-eqz v1, :cond_1

    if-ne v1, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/apache/poi/POIXMLException;

    const-string p2, "Unique PackagePart-POIXMLDocumentPart relation broken!"

    invoke-direct {p1, p2}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->hasRelationships()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lorg/apache/poi/POIXMLDocumentPart;->packagePart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelationships()Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetMode()Lorg/apache/poi/openxml4j/opc/TargetMode;

    move-result-object v3

    sget-object v4, Lorg/apache/poi/openxml4j/opc/TargetMode;->INTERNAL:Lorg/apache/poi/openxml4j/opc/TargetMode;

    if-ne v3, v4, :cond_3

    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetURI()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->getRawFragment()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v3

    goto :goto_2

    :cond_4
    invoke-static {v3}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/net/URI;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v3

    :goto_2
    iget-object v4, p0, Lorg/apache/poi/POIXMLDocumentPart;->packagePart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    invoke-virtual {v4}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v3

    if-nez v3, :cond_5

    sget-object v3, Lorg/apache/poi/POIXMLDocumentPart;->logger:Lorg/apache/poi/util/POILogger;

    const/4 v4, 0x7

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skipped invalid entry "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/POIXMLDocumentPart;

    if-nez v4, :cond_6

    invoke-virtual {p1, p0, v3}, Lorg/apache/poi/POIXMLFactory;->createDocumentPart(Lorg/apache/poi/POIXMLDocumentPart;Lorg/apache/poi/openxml4j/opc/PackagePart;)Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v4

    iput-object p0, v4, Lorg/apache/poi/POIXMLDocumentPart;->parent:Lorg/apache/poi/POIXMLDocumentPart;

    invoke-interface {p2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-direct {p0, v2, v4}, Lorg/apache/poi/POIXMLDocumentPart;->addRelation(Lorg/apache/poi/openxml4j/opc/PackageRelationship;Lorg/apache/poi/POIXMLDocumentPart;)V

    goto :goto_1

    :cond_7
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/POIXMLDocumentPart;

    invoke-virtual {v1, p1, p2}, Lorg/apache/poi/POIXMLDocumentPart;->read(Lorg/apache/poi/POIXMLFactory;Ljava/util/Map;)V

    goto :goto_3

    :cond_8
    return-void
.end method

.method public final rebase(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V
    .locals 3

    iget-object p1, p0, Lorg/apache/poi/POIXMLDocumentPart;->packagePart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    iget-object v0, p0, Lorg/apache/poi/POIXMLDocumentPart;->coreDocumentRel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelationshipsByType(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/POIXMLDocumentPart;->packagePart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->getRelationship(I)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelatedPart(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/POIXMLDocumentPart;->packagePart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tried to rebase using "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/poi/POIXMLDocumentPart;->coreDocumentRel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " but found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " parts of the right type"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final removeRelation(Lorg/apache/poi/POIXMLDocumentPart;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/POIXMLDocumentPart;->removeRelation(Lorg/apache/poi/POIXMLDocumentPart;Z)Z

    return-void
.end method

.method public final removeRelation(Lorg/apache/poi/POIXMLDocumentPart;Z)Z
    .locals 2

    invoke-virtual {p0, p1}, Lorg/apache/poi/POIXMLDocumentPart;->getRelationId(Lorg/apache/poi/POIXMLDocumentPart;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/POIXMLDocumentPart;->decrementRelationCounter()I

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->removeRelationship(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/poi/POIXMLDocumentPart;->relations:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lorg/apache/poi/POIXMLDocumentPart;->getRelationCounter()I

    move-result p2

    if-nez p2, :cond_1

    :try_start_0
    invoke-virtual {p1}, Lorg/apache/poi/POIXMLDocumentPart;->onDocumentRemove()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object p2

    invoke-virtual {p1}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->removePart(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Lorg/apache/poi/POIXMLException;

    invoke-direct {p2, p1}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/POIXMLDocumentPart;->packagePart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
