.class public Lorg/xiph/speex/OggCrc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static crc_lookup:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x100

    new-array v0, v0, [I

    sput-object v0, Lorg/xiph/speex/OggCrc;->crc_lookup:[I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v2, Lorg/xiph/speex/OggCrc;->crc_lookup:[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    shl-int/lit8 v2, v1, 0x18

    move v3, v0

    :goto_1
    const/16 v4, 0x8

    if-ge v3, v4, :cond_1

    const/high16 v4, -0x80000000

    and-int/2addr v4, v2

    shl-int/lit8 v2, v2, 0x1

    if-eqz v4, :cond_0

    const v4, 0x4c11db7

    xor-int/2addr v2, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    sget-object v3, Lorg/xiph/speex/OggCrc;->crc_lookup:[I

    and-int/lit8 v2, v2, -0x1

    aput v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checksum(I[BII)I
    .locals 3

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_0

    shl-int/lit8 v0, p0, 0x8

    sget-object v1, Lorg/xiph/speex/OggCrc;->crc_lookup:[I

    ushr-int/lit8 p0, p0, 0x18

    and-int/lit16 p0, p0, 0xff

    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    xor-int/2addr p0, v2

    aget p0, v1, p0

    xor-int/2addr p0, v0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return p0
.end method
