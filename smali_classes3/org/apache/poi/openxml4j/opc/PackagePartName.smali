.class public final Lorg/apache/poi/openxml4j/opc/PackagePartName;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/apache/poi/openxml4j/opc/PackagePartName;",
        ">;"
    }
.end annotation


# static fields
.field private static RFC3986_PCHAR_AUTHORIZED_SUP:[Ljava/lang/String;

.field private static RFC3986_PCHAR_SUB_DELIMS:[Ljava/lang/String;

.field private static RFC3986_PCHAR_UNRESERVED_SUP:[Ljava/lang/String;


# instance fields
.field private isRelationship:Z

.field private partNameURI:Ljava/net/URI;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    const-string v0, "!"

    const-string v1, "$"

    const-string v2, "&"

    const-string v3, "\'"

    const-string v4, "("

    const-string v5, ")"

    const-string v6, "*"

    const-string v7, "+"

    const-string v8, ","

    const-string v9, ";"

    const-string v10, "="

    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/openxml4j/opc/PackagePartName;->RFC3986_PCHAR_SUB_DELIMS:[Ljava/lang/String;

    const-string v0, "-"

    const-string v1, "."

    const-string v2, "_"

    const-string/jumbo v3, "~"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/openxml4j/opc/PackagePartName;->RFC3986_PCHAR_UNRESERVED_SUP:[Ljava/lang/String;

    const-string v0, ":"

    const-string v1, "@"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/openxml4j/opc/PackagePartName;->RFC3986_PCHAR_AUTHORIZED_SUP:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_0

    invoke-static {v0}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->throwExceptionIfInvalidPartUri(Ljava/net/URI;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->PACKAGE_ROOT_URI:Ljava/net/URI;

    invoke-virtual {p1, v0}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :goto_0
    iput-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackagePartName;->partNameURI:Ljava/net/URI;

    invoke-direct {p0, v0}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->isRelationshipPartURI(Ljava/net/URI;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/poi/openxml4j/opc/PackagePartName;->isRelationship:Z

    return-void

    :cond_1
    new-instance p1, Lorg/apache/poi/openxml4j/exceptions/OpenXML4JRuntimeException;

    const-string p2, "OCP conformance must be check for ALL part name except special cases : [\'/\']"

    invoke-direct {p1, p2}, Lorg/apache/poi/openxml4j/exceptions/OpenXML4JRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "partName argmument is not a valid OPC part name !"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/net/URI;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    invoke-static {p1}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->throwExceptionIfInvalidPartUri(Ljava/net/URI;)V

    goto :goto_0

    :cond_0
    sget-object p2, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->PACKAGE_ROOT_URI:Ljava/net/URI;

    invoke-virtual {p2, p1}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    :goto_0
    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/PackagePartName;->partNameURI:Ljava/net/URI;

    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->isRelationshipPartURI(Ljava/net/URI;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/poi/openxml4j/opc/PackagePartName;->isRelationship:Z

    return-void

    :cond_1
    new-instance p1, Lorg/apache/poi/openxml4j/exceptions/OpenXML4JRuntimeException;

    const-string p2, "OCP conformance must be check for ALL part name except special cases : [\'/\']"

    invoke-direct {p1, p2}, Lorg/apache/poi/openxml4j/exceptions/OpenXML4JRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static checkPCharCompliance(Ljava/lang/String;)V
    .locals 15

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_15

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x39

    const/16 v5, 0x7a

    const/16 v6, 0x30

    const/16 v7, 0x5a

    const/16 v8, 0x61

    const/16 v9, 0x41

    const/4 v10, 0x1

    if-lt v3, v9, :cond_0

    if-le v3, v7, :cond_2

    :cond_0
    if-lt v3, v8, :cond_1

    if-le v3, v5, :cond_2

    :cond_1
    if-lt v3, v6, :cond_3

    if-gt v3, v4, :cond_3

    :cond_2
    move v11, v1

    goto :goto_5

    :cond_3
    move v11, v1

    :goto_1
    sget-object v12, Lorg/apache/poi/openxml4j/opc/PackagePartName;->RFC3986_PCHAR_UNRESERVED_SUP:[Ljava/lang/String;

    array-length v13, v12

    if-ge v11, v13, :cond_5

    aget-object v12, v12, v11

    invoke-virtual {v12, v1}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-ne v3, v12, :cond_4

    move v11, v1

    goto :goto_2

    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_5
    move v11, v10

    :goto_2
    move v12, v1

    :goto_3
    if-eqz v11, :cond_7

    sget-object v13, Lorg/apache/poi/openxml4j/opc/PackagePartName;->RFC3986_PCHAR_AUTHORIZED_SUP:[Ljava/lang/String;

    array-length v14, v13

    if-ge v12, v14, :cond_7

    aget-object v13, v13, v12

    invoke-virtual {v13, v1}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-ne v3, v13, :cond_6

    move v11, v1

    :cond_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_7
    move v12, v1

    :goto_4
    if-eqz v11, :cond_9

    sget-object v13, Lorg/apache/poi/openxml4j/opc/PackagePartName;->RFC3986_PCHAR_SUB_DELIMS:[Ljava/lang/String;

    array-length v14, v13

    if-ge v12, v14, :cond_9

    aget-object v13, v13, v12

    invoke-virtual {v13, v1}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-ne v3, v13, :cond_8

    move v11, v1

    :cond_8
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_9
    :goto_5
    if-eqz v11, :cond_13

    const/16 v12, 0x25

    if-ne v3, v12, :cond_13

    sub-int v11, v0, v2

    const/4 v12, 0x2

    if-lt v11, v12, :cond_12

    add-int/lit8 v11, v2, 0x1

    add-int/lit8 v12, v2, 0x3

    invoke-virtual {p0, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x10

    invoke-static {v11, v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v11

    int-to-char v11, v11

    add-int/lit8 v2, v2, 0x2

    const/16 v12, 0x2f

    if-eq v11, v12, :cond_11

    const/16 v12, 0x5c

    if-eq v11, v12, :cond_11

    if-lt v11, v9, :cond_a

    if-le v11, v7, :cond_c

    :cond_a
    if-lt v11, v8, :cond_b

    if-le v11, v5, :cond_c

    :cond_b
    if-lt v11, v6, :cond_d

    if-gt v11, v4, :cond_d

    :cond_c
    move v4, v10

    goto :goto_6

    :cond_d
    move v4, v1

    :goto_6
    move v5, v1

    :goto_7
    if-nez v4, :cond_f

    sget-object v6, Lorg/apache/poi/openxml4j/opc/PackagePartName;->RFC3986_PCHAR_UNRESERVED_SUP:[Ljava/lang/String;

    array-length v7, v6

    if-ge v5, v7, :cond_f

    aget-object v6, v6, v5

    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v3, v6, :cond_e

    move v11, v10

    goto :goto_8

    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_f
    move v11, v4

    :goto_8
    if-nez v11, :cond_10

    goto :goto_9

    :cond_10
    new-instance p0, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    const-string v0, "A segment shall not contain percent-encoded unreserved characters. [M1.8]"

    invoke-direct {p0, v0}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    new-instance p0, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    const-string v0, "A segment shall not contain percent-encoded forward slash (\'/\'), or backward slash (\'\') characters. [M1.7]"

    invoke-direct {p0, v0}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_12
    new-instance v0, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The segment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " contain invalid encoded character !"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    :goto_9
    if-nez v11, :cond_14

    add-int/2addr v2, v10

    goto/16 :goto_0

    :cond_14
    new-instance p0, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    const-string v0, "A segment shall not hold any characters other than pchar characters. [M1.6]"

    invoke-direct {p0, v0}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    return-void
.end method

.method public static compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    move v3, v0

    :goto_1
    if-ge v0, v1, :cond_7

    if-ge v3, v2, :cond_7

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_5

    add-int/lit8 v0, v4, -0x1

    :goto_2
    if-ge v4, v1, :cond_3

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v5, -0x1

    :goto_3
    if-ge v5, v2, :cond_4

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_4

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_4
    new-instance v6, Ljava/math/BigInteger;

    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-eqz v0, :cond_6

    return v0

    :cond_5
    if-eq v0, v3, :cond_6

    sub-int/2addr v0, v3

    return v0

    :cond_6
    move v0, v4

    move v3, v5

    goto :goto_1

    :cond_7
    sub-int/2addr v1, v2

    return v1
.end method

.method public static compare(Lorg/apache/poi/openxml4j/opc/PackagePartName;Lorg/apache/poi/openxml4j/opc/PackagePartName;)I
    .locals 1

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0

    :cond_1
    if-nez p1, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getURI()Ljava/net/URI;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getURI()Ljava/net/URI;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private isRelationshipPartURI(Ljava/net/URI;)Z
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^.*/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->RELATIONSHIP_PART_SEGMENT_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/.*\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->RELATIONSHIP_PART_EXTENSION_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "partUri"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static throwExceptionIfAbsoluteUri(Ljava/net/URI;)V
    .locals 3

    invoke-virtual {p0}, Ljava/net/URI;->isAbsolute()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Absolute URI forbidden: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static throwExceptionIfEmptyURI(Ljava/net/URI;)V
    .locals 3

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sget-char v1, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->FORWARD_SLASH_CHAR:C

    if-eq v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v0, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A part name shall not be empty [M1.1]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "partURI"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static throwExceptionIfInvalidPartUri(Ljava/net/URI;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-static {p0}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->throwExceptionIfEmptyURI(Ljava/net/URI;)V

    invoke-static {p0}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->throwExceptionIfAbsoluteUri(Ljava/net/URI;)V

    invoke-static {p0}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->throwExceptionIfPartNameNotStartsWithForwardSlashChar(Ljava/net/URI;)V

    invoke-static {p0}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->throwExceptionIfPartNameEndsWithForwardSlashChar(Ljava/net/URI;)V

    invoke-static {p0}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->throwExceptionIfPartNameHaveInvalidSegments(Ljava/net/URI;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "partUri"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static throwExceptionIfPartNameEndsWithForwardSlashChar(Ljava/net/URI;)V
    .locals 3

    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sget-char v1, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->FORWARD_SLASH_CHAR:C

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A part name shall not have a forward slash as the last character [M1.5]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private static throwExceptionIfPartNameHaveInvalidSegments(Ljava/net/URI;)V
    .locals 6

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const-string v2, "A part name shall not have empty segments [M1.3]: "

    const/4 v3, 0x1

    if-le v1, v3, :cond_4

    const/4 v1, 0x0

    aget-object v1, v0, v1

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_0
    array-length v1, v0

    if-ge v3, v1, :cond_3

    aget-object v1, v0, v3

    if-eqz v1, :cond_2

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "."

    invoke-virtual {v1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "\\\\."

    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v1}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->checkPCharCompliance(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A segment shall include at least one non-dot character. [M1.10]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A segment shall not end with a dot (\'.\') character [M1.9]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-void

    :cond_4
    new-instance v0, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "partUri"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static throwExceptionIfPartNameNotStartsWithForwardSlashChar(Ljava/net/URI;)V
    .locals 3

    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sget-char v1, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->FORWARD_SLASH_CHAR:C

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A part name shall start with a forward slash (\'/\') character [M1.4]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lorg/apache/poi/openxml4j/opc/PackagePartName;

    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->compareTo(Lorg/apache/poi/openxml4j/opc/PackagePartName;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/apache/poi/openxml4j/opc/PackagePartName;)I
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->compare(Lorg/apache/poi/openxml4j/opc/PackagePartName;Lorg/apache/poi/openxml4j/opc/PackagePartName;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lorg/apache/poi/openxml4j/opc/PackagePartName;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackagePartName;->partNameURI:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lorg/apache/poi/openxml4j/opc/PackagePartName;

    iget-object p1, p1, Lorg/apache/poi/openxml4j/opc/PackagePartName;->partNameURI:Ljava/net/URI;

    invoke-virtual {p1}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getExtension()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackagePartName;->partNameURI:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackagePartName;->partNameURI:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getURI()Ljava/net/URI;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackagePartName;->partNameURI:Ljava/net/URI;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackagePartName;->partNameURI:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isRelationshipPartURI()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/openxml4j/opc/PackagePartName;->isRelationship:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
