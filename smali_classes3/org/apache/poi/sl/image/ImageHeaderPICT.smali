.class public Lorg/apache/poi/sl/image/ImageHeaderPICT;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field public static final DEFAULT_RESOLUTION:D = 72.0

.field public static final PICT_HEADER_OFFSET:I = 0x200

.field private static final V2_HEADER:[B


# instance fields
.field private final bounds:Lorg/apache/poi/java/awt/Rectangle;

.field private final hRes:D

.field private final vRes:D


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/poi/sl/image/ImageHeaderPICT;->V2_HEADER:[B

    return-void

    :array_0
    .array-data 1
        0x0t
        0x11t
        0x2t
        -0x1t
        0xct
        0x0t
        -0x1t
        -0x2t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>([BI)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    add-int/lit8 p2, p2, 0x2

    invoke-static {p1, p2}, Lorg/apache/poi/sl/image/ImageHeaderPICT;->readUnsignedShort([BI)I

    move-result v0

    add-int/lit8 p2, p2, 0x2

    invoke-static {p1, p2}, Lorg/apache/poi/sl/image/ImageHeaderPICT;->readUnsignedShort([BI)I

    move-result v1

    add-int/lit8 p2, p2, 0x2

    invoke-static {p1, p2}, Lorg/apache/poi/sl/image/ImageHeaderPICT;->readUnsignedShort([BI)I

    move-result v2

    add-int/lit8 p2, p2, 0x2

    invoke-static {p1, p2}, Lorg/apache/poi/sl/image/ImageHeaderPICT;->readUnsignedShort([BI)I

    move-result v3

    add-int/lit8 p2, p2, 0x2

    sget-object v4, Lorg/apache/poi/sl/image/ImageHeaderPICT;->V2_HEADER:[B

    array-length v5, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_1

    aget-byte v8, v4, v7

    add-int/lit8 v9, p2, 0x1

    aget-byte p2, p1, p2

    if-eq v8, p2, :cond_0

    move p2, v9

    goto :goto_1

    :cond_0
    add-int/lit8 v7, v7, 0x1

    move p2, v9

    goto :goto_0

    :cond_1
    const/4 v6, 0x1

    :goto_1
    if-eqz v6, :cond_2

    invoke-static {p1, p2}, Lorg/apache/poi/sl/image/ImageHeaderPICT;->readFixedPoint([BI)D

    move-result-wide v4

    iput-wide v4, p0, Lorg/apache/poi/sl/image/ImageHeaderPICT;->hRes:D

    add-int/lit8 p2, p2, 0x4

    invoke-static {p1, p2}, Lorg/apache/poi/sl/image/ImageHeaderPICT;->readFixedPoint([BI)D

    move-result-wide p1

    goto :goto_2

    :cond_2
    const-wide/high16 p1, 0x4052000000000000L    # 72.0

    iput-wide p1, p0, Lorg/apache/poi/sl/image/ImageHeaderPICT;->hRes:D

    :goto_2
    iput-wide p1, p0, Lorg/apache/poi/sl/image/ImageHeaderPICT;->vRes:D

    new-instance p1, Lorg/apache/poi/java/awt/Rectangle;

    sub-int/2addr v3, v1

    sub-int/2addr v2, v0

    invoke-direct {p1, v1, v0, v3, v2}, Lorg/apache/poi/java/awt/Rectangle;-><init>(IIII)V

    iput-object p1, p0, Lorg/apache/poi/sl/image/ImageHeaderPICT;->bounds:Lorg/apache/poi/java/awt/Rectangle;

    return-void
.end method

.method private static readFixedPoint([BI)D
    .locals 3

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p1, v0, 0x18

    shl-int/lit8 v0, v1, 0x10

    or-int/2addr p1, v0

    shl-int/lit8 v0, v2, 0x8

    or-int/2addr p1, v0

    or-int/2addr p0, p1

    int-to-double p0, p0

    const-wide/high16 v0, 0x40f0000000000000L    # 65536.0

    div-double/2addr p0, v0

    return-wide p0
.end method

.method private static readUnsignedShort([BI)I
    .locals 1

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p1, v0, 0x8

    or-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public getBounds()Lorg/apache/poi/java/awt/Rectangle;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/image/ImageHeaderPICT;->bounds:Lorg/apache/poi/java/awt/Rectangle;

    return-object v0
.end method

.method public getSize()Lorg/apache/poi/java/awt/Dimension;
    .locals 6

    iget-object v0, p0, Lorg/apache/poi/sl/image/ImageHeaderPICT;->bounds:Lorg/apache/poi/java/awt/Rectangle;

    iget v0, v0, Lorg/apache/poi/java/awt/Rectangle;->height:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4052000000000000L    # 72.0

    mul-double/2addr v0, v2

    iget-wide v4, p0, Lorg/apache/poi/sl/image/ImageHeaderPICT;->vRes:D

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    iget-object v1, p0, Lorg/apache/poi/sl/image/ImageHeaderPICT;->bounds:Lorg/apache/poi/java/awt/Rectangle;

    iget v1, v1, Lorg/apache/poi/java/awt/Rectangle;->width:I

    int-to-double v4, v1

    mul-double/2addr v4, v2

    iget-wide v1, p0, Lorg/apache/poi/sl/image/ImageHeaderPICT;->hRes:D

    div-double/2addr v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v1, v1

    new-instance v2, Lorg/apache/poi/java/awt/Dimension;

    invoke-direct {v2, v1, v0}, Lorg/apache/poi/java/awt/Dimension;-><init>(II)V

    return-object v2
.end method
