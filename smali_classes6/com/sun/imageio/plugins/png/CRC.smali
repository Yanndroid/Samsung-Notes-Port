.class Lcom/sun/imageio/plugins/png/CRC;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static crcTable:[I


# instance fields
.field private crc:I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    const/16 v0, 0x100

    new-array v1, v0, [I

    sput-object v1, Lcom/sun/imageio/plugins/png/CRC;->crcTable:[I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    move v3, v1

    move v4, v2

    :goto_1
    const/16 v5, 0x8

    if-ge v3, v5, :cond_1

    and-int/lit8 v5, v4, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    const v5, -0x12477ce0

    ushr-int/lit8 v4, v4, 0x1

    xor-int/2addr v4, v5

    goto :goto_2

    :cond_0
    ushr-int/lit8 v4, v4, 0x1

    :goto_2
    sget-object v5, Lcom/sun/imageio/plugins/png/CRC;->crcTable:[I

    aput v4, v5, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sun/imageio/plugins/png/CRC;->crc:I

    return-void
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/sun/imageio/plugins/png/CRC;->crc:I

    not-int v0, v0

    return v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/sun/imageio/plugins/png/CRC;->crc:I

    return-void
.end method

.method public update(I)V
    .locals 2

    sget-object v0, Lcom/sun/imageio/plugins/png/CRC;->crcTable:[I

    iget v1, p0, Lcom/sun/imageio/plugins/png/CRC;->crc:I

    xor-int/2addr p1, v1

    and-int/lit16 p1, p1, 0xff

    aget p1, v0, p1

    ushr-int/lit8 v0, v1, 0x8

    xor-int/2addr p1, v0

    iput p1, p0, Lcom/sun/imageio/plugins/png/CRC;->crc:I

    return-void
.end method

.method public update([BII)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    sget-object v1, Lcom/sun/imageio/plugins/png/CRC;->crcTable:[I

    iget v2, p0, Lcom/sun/imageio/plugins/png/CRC;->crc:I

    add-int v3, p2, v0

    aget-byte v3, p1, v3

    xor-int/2addr v3, v2

    and-int/lit16 v3, v3, 0xff

    aget v1, v1, v3

    ushr-int/lit8 v2, v2, 0x8

    xor-int/2addr v1, v2

    iput v1, p0, Lcom/sun/imageio/plugins/png/CRC;->crc:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
