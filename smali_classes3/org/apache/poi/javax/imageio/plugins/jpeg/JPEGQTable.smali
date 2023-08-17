.class public Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGQTable;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final K1Div2Luminance:Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGQTable;

.field public static final K1Luminance:Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGQTable;

.field public static final K2Chrominance:Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGQTable;

.field public static final K2Div2Chrominance:Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGQTable;

.field private static final k1:[I

.field private static final k1div2:[I

.field private static final k2:[I

.field private static final k2div2:[I


# instance fields
.field private qTable:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const/16 v0, 0x40

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGQTable;->k1:[I

    new-array v2, v0, [I

    fill-array-data v2, :array_1

    sput-object v2, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGQTable;->k1div2:[I

    new-array v3, v0, [I

    fill-array-data v3, :array_2

    sput-object v3, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGQTable;->k2:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGQTable;->k2div2:[I

    new-instance v4, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGQTable;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5}, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGQTable;-><init>([IZ)V

    sput-object v4, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGQTable;->K1Luminance:Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGQTable;

    new-instance v1, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGQTable;

    invoke-direct {v1, v2, v5}, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGQTable;-><init>([IZ)V

    sput-object v1, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGQTable;->K1Div2Luminance:Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGQTable;

    new-instance v1, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGQTable;

    invoke-direct {v1, v3, v5}, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGQTable;-><init>([IZ)V

    sput-object v1, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGQTable;->K2Chrominance:Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGQTable;

    new-instance v1, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGQTable;

    invoke-direct {v1, v0, v5}, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGQTable;-><init>([IZ)V

    sput-object v1, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGQTable;->K2Div2Chrominance:Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGQTable;

    return-void

    :array_0
    .array-data 4
        0x10
        0xb
        0xa
        0x10
        0x18
        0x28
        0x33
        0x3d
        0xc
        0xc
        0xe
        0x13
        0x1a
        0x3a
        0x3c
        0x37
        0xe
        0xd
        0x10
        0x18
        0x28
        0x39
        0x45
        0x38
        0xe
        0x11
        0x16
        0x1d
        0x33
        0x57
        0x50
        0x3e
        0x12
        0x16
        0x25
        0x38
        0x44
        0x6d
        0x67
        0x4d
        0x18
        0x23
        0x37
        0x40
        0x51
        0x68
        0x71
        0x5c
        0x31
        0x40
        0x4e
        0x57
        0x67
        0x79
        0x78
        0x65
        0x48
        0x5c
        0x5f
        0x62
        0x70
        0x64
        0x67
        0x63
    .end array-data

    :array_1
    .array-data 4
        0x8
        0x6
        0x5
        0x8
        0xc
        0x14
        0x1a
        0x1f
        0x6
        0x6
        0x7
        0xa
        0xd
        0x1d
        0x1e
        0x1c
        0x7
        0x7
        0x8
        0xc
        0x14
        0x1d
        0x23
        0x1c
        0x7
        0x9
        0xb
        0xf
        0x1a
        0x2c
        0x28
        0x1f
        0x9
        0xb
        0x13
        0x1c
        0x22
        0x37
        0x34
        0x27
        0xc
        0x12
        0x1c
        0x20
        0x29
        0x34
        0x39
        0x2e
        0x19
        0x20
        0x27
        0x2c
        0x34
        0x3d
        0x3c
        0x33
        0x24
        0x2e
        0x30
        0x31
        0x38
        0x32
        0x34
        0x32
    .end array-data

    :array_2
    .array-data 4
        0x11
        0x12
        0x18
        0x2f
        0x63
        0x63
        0x63
        0x63
        0x12
        0x15
        0x1a
        0x42
        0x63
        0x63
        0x63
        0x63
        0x18
        0x1a
        0x38
        0x63
        0x63
        0x63
        0x63
        0x63
        0x2f
        0x42
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
    .end array-data

    :array_3
    .array-data 4
        0x9
        0x9
        0xc
        0x18
        0x32
        0x32
        0x32
        0x32
        0x9
        0xb
        0xd
        0x21
        0x32
        0x32
        0x32
        0x32
        0xc
        0xd
        0x1c
        0x32
        0x32
        0x32
        0x32
        0x32
        0x18
        0x21
        0x32
        0x32
        0x32
        0x32
        0x32
        0x32
        0x32
        0x32
        0x32
        0x32
        0x32
        0x32
        0x32
        0x32
        0x32
        0x32
        0x32
        0x32
        0x32
        0x32
        0x32
        0x32
        0x32
        0x32
        0x32
        0x32
        0x32
        0x32
        0x32
        0x32
        0x32
        0x32
        0x32
        0x32
        0x32
        0x32
        0x32
        0x32
    .end array-data
.end method

.method public constructor <init>([I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    array-length v0, p1

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGQTable;->qTable:[I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "table.length != 64"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "table must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private constructor <init>([IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    array-length p2, p1

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGQTable;->qTable:[I

    return-void
.end method


# virtual methods
.method public getScaledInstance(FZ)Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGQTable;
    .locals 4

    if-eqz p2, :cond_0

    const/16 p2, 0xff

    goto :goto_0

    :cond_0
    const/16 p2, 0x7fff

    :goto_0
    iget-object v0, p0, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGQTable;->qTable:[I

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGQTable;->qTable:[I

    array-length v3, v2

    if-ge v1, v3, :cond_3

    aget v2, v2, v1

    int-to-float v2, v2

    mul-float/2addr v2, p1

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    move v2, v3

    :cond_1
    if-le v2, p2, :cond_2

    move v2, p2

    :cond_2
    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    new-instance p1, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGQTable;

    invoke-direct {p1, v0}, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGQTable;-><init>([I)V

    return-object p1
.end method

.method public getTable()[I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGQTable;->qTable:[I

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const-string v0, "line.separator"

    const-string v1, "\n"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JPEGQTable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGQTable;->qTable:[I

    array-length v3, v3

    if-ge v2, v3, :cond_2

    rem-int/lit8 v3, v2, 0x8

    if-nez v3, :cond_0

    const/16 v4, 0x9

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v4, p0, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGQTable;->qTable:[I

    aget v4, v4, v2

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v4, 0x7

    if-ne v3, v4, :cond_1

    move-object v3, v0

    goto :goto_1

    :cond_1
    const/16 v3, 0x20

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
