.class public Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final StdACChrominance:Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;

.field private static final StdACChrominanceLengths:[S

.field private static final StdACChrominanceValues:[S

.field public static final StdACLuminance:Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;

.field private static final StdACLuminanceLengths:[S

.field private static final StdACLuminanceValues:[S

.field public static final StdDCChrominance:Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;

.field private static final StdDCChrominanceLengths:[S

.field private static final StdDCChrominanceValues:[S

.field public static final StdDCLuminance:Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;

.field private static final StdDCLuminanceLengths:[S

.field private static final StdDCLuminanceValues:[S


# instance fields
.field private lengths:[S

.field private values:[S


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    const/16 v0, 0x10

    new-array v1, v0, [S

    fill-array-data v1, :array_0

    sput-object v1, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;->StdDCLuminanceLengths:[S

    const/16 v2, 0xc

    new-array v3, v2, [S

    fill-array-data v3, :array_1

    sput-object v3, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;->StdDCLuminanceValues:[S

    new-array v4, v0, [S

    fill-array-data v4, :array_2

    sput-object v4, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;->StdDCChrominanceLengths:[S

    new-array v2, v2, [S

    fill-array-data v2, :array_3

    sput-object v2, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;->StdDCChrominanceValues:[S

    new-array v5, v0, [S

    fill-array-data v5, :array_4

    sput-object v5, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;->StdACLuminanceLengths:[S

    const/16 v6, 0xa2

    new-array v7, v6, [S

    fill-array-data v7, :array_5

    sput-object v7, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;->StdACLuminanceValues:[S

    new-array v0, v0, [S

    fill-array-data v0, :array_6

    sput-object v0, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;->StdACChrominanceLengths:[S

    new-array v6, v6, [S

    fill-array-data v6, :array_7

    sput-object v6, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;->StdACChrominanceValues:[S

    new-instance v8, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;

    const/4 v9, 0x0

    invoke-direct {v8, v1, v3, v9}, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;-><init>([S[SZ)V

    sput-object v8, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;->StdDCLuminance:Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;

    new-instance v1, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;

    invoke-direct {v1, v4, v2, v9}, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;-><init>([S[SZ)V

    sput-object v1, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;->StdDCChrominance:Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;

    new-instance v1, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;

    invoke-direct {v1, v5, v7, v9}, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;-><init>([S[SZ)V

    sput-object v1, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;->StdACLuminance:Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;

    new-instance v1, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;

    invoke-direct {v1, v0, v6, v9}, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;-><init>([S[SZ)V

    sput-object v1, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;->StdACChrominance:Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;

    return-void

    :array_0
    .array-data 2
        0x0s
        0x1s
        0x5s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
    .end array-data

    :array_1
    .array-data 2
        0x0s
        0x1s
        0x2s
        0x3s
        0x4s
        0x5s
        0x6s
        0x7s
        0x8s
        0x9s
        0xas
        0xbs
    .end array-data

    :array_2
    .array-data 2
        0x0s
        0x3s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
    .end array-data

    :array_3
    .array-data 2
        0x0s
        0x1s
        0x2s
        0x3s
        0x4s
        0x5s
        0x6s
        0x7s
        0x8s
        0x9s
        0xas
        0xbs
    .end array-data

    :array_4
    .array-data 2
        0x0s
        0x2s
        0x1s
        0x3s
        0x3s
        0x2s
        0x4s
        0x3s
        0x5s
        0x5s
        0x4s
        0x4s
        0x0s
        0x0s
        0x1s
        0x7ds
    .end array-data

    :array_5
    .array-data 2
        0x1s
        0x2s
        0x3s
        0x0s
        0x4s
        0x11s
        0x5s
        0x12s
        0x21s
        0x31s
        0x41s
        0x6s
        0x13s
        0x51s
        0x61s
        0x7s
        0x22s
        0x71s
        0x14s
        0x32s
        0x81s
        0x91s
        0xa1s
        0x8s
        0x23s
        0x42s
        0xb1s
        0xc1s
        0x15s
        0x52s
        0xd1s
        0xf0s
        0x24s
        0x33s
        0x62s
        0x72s
        0x82s
        0x9s
        0xas
        0x16s
        0x17s
        0x18s
        0x19s
        0x1as
        0x25s
        0x26s
        0x27s
        0x28s
        0x29s
        0x2as
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x3as
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x83s
        0x84s
        0x85s
        0x86s
        0x87s
        0x88s
        0x89s
        0x8as
        0x92s
        0x93s
        0x94s
        0x95s
        0x96s
        0x97s
        0x98s
        0x99s
        0x9as
        0xa2s
        0xa3s
        0xa4s
        0xa5s
        0xa6s
        0xa7s
        0xa8s
        0xa9s
        0xaas
        0xb2s
        0xb3s
        0xb4s
        0xb5s
        0xb6s
        0xb7s
        0xb8s
        0xb9s
        0xbas
        0xc2s
        0xc3s
        0xc4s
        0xc5s
        0xc6s
        0xc7s
        0xc8s
        0xc9s
        0xcas
        0xd2s
        0xd3s
        0xd4s
        0xd5s
        0xd6s
        0xd7s
        0xd8s
        0xd9s
        0xdas
        0xe1s
        0xe2s
        0xe3s
        0xe4s
        0xe5s
        0xe6s
        0xe7s
        0xe8s
        0xe9s
        0xeas
        0xf1s
        0xf2s
        0xf3s
        0xf4s
        0xf5s
        0xf6s
        0xf7s
        0xf8s
        0xf9s
        0xfas
    .end array-data

    :array_6
    .array-data 2
        0x0s
        0x2s
        0x1s
        0x2s
        0x4s
        0x4s
        0x3s
        0x4s
        0x7s
        0x5s
        0x4s
        0x4s
        0x0s
        0x1s
        0x2s
        0x77s
    .end array-data

    :array_7
    .array-data 2
        0x0s
        0x1s
        0x2s
        0x3s
        0x11s
        0x4s
        0x5s
        0x21s
        0x31s
        0x6s
        0x12s
        0x41s
        0x51s
        0x7s
        0x61s
        0x71s
        0x13s
        0x22s
        0x32s
        0x81s
        0x8s
        0x14s
        0x42s
        0x91s
        0xa1s
        0xb1s
        0xc1s
        0x9s
        0x23s
        0x33s
        0x52s
        0xf0s
        0x15s
        0x62s
        0x72s
        0xd1s
        0xas
        0x16s
        0x24s
        0x34s
        0xe1s
        0x25s
        0xf1s
        0x17s
        0x18s
        0x19s
        0x1as
        0x26s
        0x27s
        0x28s
        0x29s
        0x2as
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x3as
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x82s
        0x83s
        0x84s
        0x85s
        0x86s
        0x87s
        0x88s
        0x89s
        0x8as
        0x92s
        0x93s
        0x94s
        0x95s
        0x96s
        0x97s
        0x98s
        0x99s
        0x9as
        0xa2s
        0xa3s
        0xa4s
        0xa5s
        0xa6s
        0xa7s
        0xa8s
        0xa9s
        0xaas
        0xb2s
        0xb3s
        0xb4s
        0xb5s
        0xb6s
        0xb7s
        0xb8s
        0xb9s
        0xbas
        0xc2s
        0xc3s
        0xc4s
        0xc5s
        0xc6s
        0xc7s
        0xc8s
        0xc9s
        0xcas
        0xd2s
        0xd3s
        0xd4s
        0xd5s
        0xd6s
        0xd7s
        0xd8s
        0xd9s
        0xdas
        0xe2s
        0xe3s
        0xe4s
        0xe5s
        0xe6s
        0xe7s
        0xe8s
        0xe9s
        0xeas
        0xf2s
        0xf3s
        0xf4s
        0xf5s
        0xf6s
        0xf7s
        0xf8s
        0xf9s
        0xfas
    .end array-data
.end method

.method public constructor <init>([S[S)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    array-length v0, p1

    if-eqz v0, :cond_4

    array-length v0, p2

    if-eqz v0, :cond_4

    array-length v0, p1

    const/16 v1, 0x10

    if-gt v0, v1, :cond_4

    array-length v0, p2

    const/16 v1, 0x100

    if-gt v0, v1, :cond_4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    const-string v3, "] < 0"

    if-ge v1, v2, :cond_1

    aget-short v2, p1, v1

    if-ltz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "lengths["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_3

    aget-short v1, p2, v0

    if-ltz v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "values["

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;->lengths:[S

    array-length p1, p2

    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;->values:[S

    invoke-direct {p0}, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;->validate()V

    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Illegal lengths or values"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private constructor <init>([S[SZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_0

    array-length p3, p1

    invoke-static {p1, p3}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;->lengths:[S

    array-length p1, p2

    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;->values:[S

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;->lengths:[S

    iput-object p2, p0, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;->values:[S

    :goto_0
    return-void
.end method

.method private validate()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;->lengths:[S

    array-length v3, v2

    if-ge v0, v3, :cond_0

    aget-short v2, v2, v0

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;->values:[S

    array-length v0, v0

    if-ne v1, v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "lengths do not correspond to length of value table"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getLengths()[S
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;->lengths:[S

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object v0

    return-object v0
.end method

.method public getValues()[S
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;->values:[S

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    const-string v0, "line.separator"

    const-string v1, "\n"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "JPEGHuffmanTable"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "lengths:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget-object v4, p0, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;->lengths:[S

    array-length v4, v4

    const-string v5, " "

    if-ge v3, v4, :cond_0

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;->lengths:[S

    aget-short v4, v4, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "values:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    iget-object v0, p0, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;->values:[S

    array-length v0, v0

    if-ge v2, v0, :cond_1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;->values:[S

    aget-short v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
