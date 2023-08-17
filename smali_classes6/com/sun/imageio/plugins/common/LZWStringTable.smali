.class public Lcom/sun/imageio/plugins/common/LZWStringTable;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final HASHSIZE:S = 0x26f5s

.field private static final HASHSTEP:S = 0x7f7s

.field private static final HASH_FREE:S = -0x1s

.field private static final MAXBITS:I = 0xc

.field private static final MAXSTR:I = 0x1000

.field private static final NEXT_FIRST:S = -0x1s

.field private static final RES_CODES:I = 0x2


# instance fields
.field public numStrings:S

.field public strChr:[B

.field public strHsh:[S

.field public strLen:[I

.field public strNxt:[S


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1000

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/sun/imageio/plugins/common/LZWStringTable;->strChr:[B

    new-array v1, v0, [S

    iput-object v1, p0, Lcom/sun/imageio/plugins/common/LZWStringTable;->strNxt:[S

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sun/imageio/plugins/common/LZWStringTable;->strLen:[I

    const/16 v0, 0x26f5

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/sun/imageio/plugins/common/LZWStringTable;->strHsh:[S

    return-void
.end method

.method public static hash(SB)I
    .locals 0

    shl-int/lit8 p1, p1, 0x8

    int-to-short p1, p1

    xor-int/2addr p0, p1

    const p1, 0xffff

    and-int/2addr p0, p1

    rem-int/lit16 p0, p0, 0x26f5

    return p0
.end method


# virtual methods
.method public addCharString(SB)I
    .locals 4

    iget-short v0, p0, Lcom/sun/imageio/plugins/common/LZWStringTable;->numStrings:S

    const/16 v1, 0x1000

    if-lt v0, v1, :cond_0

    const p1, 0xffff

    return p1

    :cond_0
    invoke-static {p1, p2}, Lcom/sun/imageio/plugins/common/LZWStringTable;->hash(SB)I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/sun/imageio/plugins/common/LZWStringTable;->strHsh:[S

    aget-short v2, v1, v0

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    add-int/lit16 v0, v0, 0x7f7

    rem-int/lit16 v0, v0, 0x26f5

    goto :goto_0

    :cond_1
    iget-short v2, p0, Lcom/sun/imageio/plugins/common/LZWStringTable;->numStrings:S

    aput-short v2, v1, v0

    iget-object v0, p0, Lcom/sun/imageio/plugins/common/LZWStringTable;->strChr:[B

    aput-byte p2, v0, v2

    const/4 p2, 0x1

    if-ne p1, v3, :cond_2

    iget-object p1, p0, Lcom/sun/imageio/plugins/common/LZWStringTable;->strNxt:[S

    aput-short v3, p1, v2

    iget-object p1, p0, Lcom/sun/imageio/plugins/common/LZWStringTable;->strLen:[I

    aput p2, p1, v2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/sun/imageio/plugins/common/LZWStringTable;->strNxt:[S

    aput-short p1, v0, v2

    iget-object v0, p0, Lcom/sun/imageio/plugins/common/LZWStringTable;->strLen:[I

    aget p1, v0, p1

    add-int/2addr p1, p2

    aput p1, v0, v2

    :goto_1
    add-int/lit8 p1, v2, 0x1

    int-to-short p1, p1

    iput-short p1, p0, Lcom/sun/imageio/plugins/common/LZWStringTable;->numStrings:S

    return v2
.end method

.method public clearTable(I)V
    .locals 4

    const/4 v0, 0x0

    iput-short v0, p0, Lcom/sun/imageio/plugins/common/LZWStringTable;->numStrings:S

    move v1, v0

    :goto_0
    const/16 v2, 0x26f5

    const/4 v3, -0x1

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/sun/imageio/plugins/common/LZWStringTable;->strHsh:[S

    aput-short v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    shl-int p1, v1, p1

    add-int/lit8 p1, p1, 0x2

    :goto_1
    if-ge v0, p1, :cond_1

    int-to-byte v1, v0

    invoke-virtual {p0, v3, v1}, Lcom/sun/imageio/plugins/common/LZWStringTable;->addCharString(SB)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public dump(Ljava/io/PrintStream;)V
    .locals 3

    const/16 v0, 0x102

    :goto_0
    iget-short v1, p0, Lcom/sun/imageio/plugins/common/LZWStringTable;->numStrings:S

    if-ge v0, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " strNxt["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sun/imageio/plugins/common/LZWStringTable;->strNxt:[S

    aget-short v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " strChr "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sun/imageio/plugins/common/LZWStringTable;->strChr:[B

    aget-byte v2, v2, v0

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " strLen "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sun/imageio/plugins/common/LZWStringTable;->strLen:[I

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public expandCode([BISI)I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, -0x2

    if-ne p2, v1, :cond_0

    const/4 v1, 0x1

    if-ne p4, v1, :cond_0

    move p4, v0

    :cond_0
    const/4 v1, -0x1

    if-eq p3, v1, :cond_6

    iget-object v2, p0, Lcom/sun/imageio/plugins/common/LZWStringTable;->strLen:[I

    aget v3, v2, p3

    if-ne p4, v3, :cond_1

    goto :goto_1

    :cond_1
    aget v0, v2, p3

    sub-int/2addr v0, p4

    array-length p4, p1

    sub-int/2addr p4, p2

    if-le p4, v0, :cond_2

    move p4, v0

    :cond_2
    sub-int v2, v0, p4

    add-int v3, p2, p4

    :goto_0
    if-le v3, p2, :cond_4

    if-eq p3, v1, :cond_4

    add-int/2addr v2, v1

    if-gez v2, :cond_3

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Lcom/sun/imageio/plugins/common/LZWStringTable;->strChr:[B

    aget-byte v4, v4, p3

    aput-byte v4, p1, v3

    :cond_3
    iget-object v4, p0, Lcom/sun/imageio/plugins/common/LZWStringTable;->strNxt:[S

    aget-short p3, v4, p3

    goto :goto_0

    :cond_4
    if-le v0, p4, :cond_5

    neg-int p1, p4

    return p1

    :cond_5
    return p4

    :cond_6
    :goto_1
    return v0
.end method

.method public findCharString(SB)S
    .locals 4

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    and-int/lit16 p1, p2, 0xff

    int-to-short p1, p1

    return p1

    :cond_0
    invoke-static {p1, p2}, Lcom/sun/imageio/plugins/common/LZWStringTable;->hash(SB)I

    move-result v1

    :goto_0
    iget-object v2, p0, Lcom/sun/imageio/plugins/common/LZWStringTable;->strHsh:[S

    aget-short v2, v2, v1

    if-eq v2, v0, :cond_2

    iget-object v3, p0, Lcom/sun/imageio/plugins/common/LZWStringTable;->strNxt:[S

    aget-short v3, v3, v2

    if-ne v3, p1, :cond_1

    iget-object v3, p0, Lcom/sun/imageio/plugins/common/LZWStringTable;->strChr:[B

    aget-byte v3, v3, v2

    if-ne v3, p2, :cond_1

    int-to-short p1, v2

    return p1

    :cond_1
    add-int/lit16 v1, v1, 0x7f7

    rem-int/lit16 v1, v1, 0x26f5

    goto :goto_0

    :cond_2
    return v0
.end method
