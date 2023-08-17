.class public Lorg/apache/poi/sun/java2d/cmm/ProfileDataVerifier;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final HEADER_SIZE:I = 0x80

.field private static final MAX_TAG_COUNT:I = 0x64

.field private static final PROFILE_FILE_SIGNATURE:I = 0x61637370

.field private static final TOC_OFFSET:I = 0x84

.field private static final TOC_RECORD_SIZE:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getTagOffset(I[B)I
    .locals 0

    mul-int/lit8 p0, p0, 0xc

    add-int/lit16 p0, p0, 0x84

    add-int/lit8 p0, p0, 0x4

    invoke-static {p1, p0}, Lorg/apache/poi/sun/java2d/cmm/ProfileDataVerifier;->readInt32([BI)I

    move-result p0

    return p0
.end method

.method private static getTagSize(I[B)I
    .locals 0

    mul-int/lit8 p0, p0, 0xc

    add-int/lit16 p0, p0, 0x84

    add-int/lit8 p0, p0, 0x8

    invoke-static {p1, p0}, Lorg/apache/poi/sun/java2d/cmm/ProfileDataVerifier;->readInt32([BI)I

    move-result p0

    return p0
.end method

.method private static readInt32([BI)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v2, p1, 0x1

    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr v1, p1

    add-int/lit8 v0, v0, 0x1

    move p1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static verify([B)V
    .locals 8

    const-string v0, "Invalid ICC Profile Data"

    if-eqz p0, :cond_7

    array-length v1, p0

    const/16 v2, 0x84

    if-lt v1, v2, :cond_6

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lorg/apache/poi/sun/java2d/cmm/ProfileDataVerifier;->readInt32([BI)I

    move-result v3

    const/16 v4, 0x80

    invoke-static {p0, v4}, Lorg/apache/poi/sun/java2d/cmm/ProfileDataVerifier;->readInt32([BI)I

    move-result v4

    if-ltz v4, :cond_5

    const/16 v5, 0x64

    if-gt v4, v5, :cond_5

    mul-int/lit8 v5, v4, 0xc

    add-int/2addr v5, v2

    if-lt v3, v5, :cond_4

    array-length v5, p0

    if-gt v3, v5, :cond_4

    const/16 v5, 0x24

    invoke-static {p0, v5}, Lorg/apache/poi/sun/java2d/cmm/ProfileDataVerifier;->readInt32([BI)I

    move-result v5

    const v6, 0x61637370

    if-ne v6, v5, :cond_3

    :goto_0
    if-ge v1, v4, :cond_2

    invoke-static {v1, p0}, Lorg/apache/poi/sun/java2d/cmm/ProfileDataVerifier;->getTagOffset(I[B)I

    move-result v5

    invoke-static {v1, p0}, Lorg/apache/poi/sun/java2d/cmm/ProfileDataVerifier;->getTagSize(I[B)I

    move-result v6

    if-lt v5, v2, :cond_1

    if-gt v5, v3, :cond_1

    if-ltz v6, :cond_0

    const v7, 0x7fffffff

    sub-int/2addr v7, v5

    if-gt v6, v7, :cond_0

    add-int/2addr v6, v5

    if-gt v6, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
