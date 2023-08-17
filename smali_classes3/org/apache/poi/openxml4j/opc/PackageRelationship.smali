.class public final Lorg/apache/poi/openxml4j/opc/PackageRelationship;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ID_ATTRIBUTE_NAME:Ljava/lang/String; = "Id"

.field public static final RELATIONSHIPS_TAG_NAME:Ljava/lang/String; = "Relationships"

.field public static final RELATIONSHIP_TAG_NAME:Ljava/lang/String; = "Relationship"

.field public static final TARGET_ATTRIBUTE_NAME:Ljava/lang/String; = "Target"

.field public static final TARGET_MODE_ATTRIBUTE_NAME:Ljava/lang/String; = "TargetMode"

.field public static final TYPE_ATTRIBUTE_NAME:Ljava/lang/String; = "Type"

.field private static containerRelationshipPart:Ljava/net/URI;


# instance fields
.field private container:Lorg/apache/poi/openxml4j/opc/OPCPackage;

.field private id:Ljava/lang/String;

.field private relationshipType:Ljava/lang/String;

.field private source:Lorg/apache/poi/openxml4j/opc/PackagePart;

.field private targetMode:Lorg/apache/poi/openxml4j/opc/TargetMode;

.field private targetUri:Ljava/net/URI;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    :try_start_0
    new-instance v0, Ljava/net/URI;

    const-string v1, "/_rels/.rels"

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->containerRelationshipPart:Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;Lorg/apache/poi/openxml4j/opc/PackagePart;Ljava/net/URI;Lorg/apache/poi/openxml4j/opc/TargetMode;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_3

    if-eqz p3, :cond_2

    if-eqz p5, :cond_1

    if-eqz p6, :cond_0

    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->container:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    iput-object p2, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->source:Lorg/apache/poi/openxml4j/opc/PackagePart;

    iput-object p3, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->targetUri:Ljava/net/URI;

    iput-object p4, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->targetMode:Lorg/apache/poi/openxml4j/opc/TargetMode;

    iput-object p5, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->relationshipType:Ljava/lang/String;

    iput-object p6, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->id:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "id"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "relationshipType"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "targetUri"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "pkg"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getContainerPartRelationship()Ljava/net/URI;
    .locals 1

    sget-object v0, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->containerRelationshipPart:Ljava/net/URI;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->id:Ljava/lang/String;

    iget-object v2, p1, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->relationshipType:Ljava/lang/String;

    iget-object v2, p1, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->relationshipType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->source:Lorg/apache/poi/openxml4j/opc/PackagePart;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->source:Lorg/apache/poi/openxml4j/opc/PackagePart;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->targetMode:Lorg/apache/poi/openxml4j/opc/TargetMode;

    iget-object v2, p1, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->targetMode:Lorg/apache/poi/openxml4j/opc/TargetMode;

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->targetUri:Ljava/net/URI;

    iget-object p1, p1, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->targetUri:Ljava/net/URI;

    invoke-virtual {v0, p1}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->container:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    return-object v0
.end method

.method public getRelationshipType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->relationshipType:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Lorg/apache/poi/openxml4j/opc/PackagePart;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->source:Lorg/apache/poi/openxml4j/opc/PackagePart;

    return-object v0
.end method

.method public getSourceURI()Ljava/net/URI;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->source:Lorg/apache/poi/openxml4j/opc/PackagePart;

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->PACKAGE_ROOT_URI:Ljava/net/URI;

    return-object v0

    :cond_0
    iget-object v0, v0, Lorg/apache/poi/openxml4j/opc/PackagePart;->_partName:Lorg/apache/poi/openxml4j/opc/PackagePartName;

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getURI()Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public getTargetMode()Lorg/apache/poi/openxml4j/opc/TargetMode;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->targetMode:Lorg/apache/poi/openxml4j/opc/TargetMode;

    return-object v0
.end method

.method public getTargetURI()Ljava/net/URI;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->targetMode:Lorg/apache/poi/openxml4j/opc/TargetMode;

    sget-object v1, Lorg/apache/poi/openxml4j/opc/TargetMode;->EXTERNAL:Lorg/apache/poi/openxml4j/opc/TargetMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->targetUri:Ljava/net/URI;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->targetUri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getSourceURI()Ljava/net/URI;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->targetUri:Ljava/net/URI;

    invoke-static {v0, v1}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->resolvePartUri(Ljava/net/URI;Ljava/net/URI;)Ljava/net/URI;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->targetUri:Ljava/net/URI;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->relationshipType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->source:Lorg/apache/poi/openxml4j/opc/PackagePart;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->targetMode:Lorg/apache/poi/openxml4j/opc/TargetMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->targetUri:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->id:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "id=null"

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->container:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    if-nez v1, :cond_1

    const-string v1, " - container=null"

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " - container="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->container:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->relationshipType:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, " - relationshipType=null"

    goto :goto_2

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " - relationshipType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->relationshipType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->source:Lorg/apache/poi/openxml4j/opc/PackagePart;

    if-nez v1, :cond_3

    const-string v1, " - source=null"

    goto :goto_3

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " - source="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getSourceURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->targetUri:Ljava/net/URI;

    if-nez v1, :cond_4

    const-string v1, " - target=null"

    goto :goto_4

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " - target="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->targetMode:Lorg/apache/poi/openxml4j/opc/TargetMode;

    if-nez v1, :cond_5

    const-string v1, ",targetMode=null"

    goto :goto_5

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ",targetMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->targetMode:Lorg/apache/poi/openxml4j/opc/TargetMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
