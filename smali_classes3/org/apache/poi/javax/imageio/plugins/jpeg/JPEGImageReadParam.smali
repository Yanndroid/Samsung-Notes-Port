.class public Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGImageReadParam;
.super Lorg/apache/poi/javax/imageio/ImageReadParam;
.source "SourceFile"


# instance fields
.field private ACHuffmanTables:[Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;

.field private DCHuffmanTables:[Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;

.field private qTables:[Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGQTable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/javax/imageio/ImageReadParam;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGImageReadParam;->qTables:[Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGQTable;

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGImageReadParam;->DCHuffmanTables:[Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGImageReadParam;->ACHuffmanTables:[Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;

    return-void
.end method


# virtual methods
.method public areTablesSet()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGImageReadParam;->qTables:[Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGQTable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getACHuffmanTables()[Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGImageReadParam;->ACHuffmanTables:[Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, [Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getDCHuffmanTables()[Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGImageReadParam;->DCHuffmanTables:[Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, [Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getQTables()[Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGQTable;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGImageReadParam;->qTables:[Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGQTable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, [Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGQTable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGQTable;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public setDecodeTables([Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGQTable;[Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;[Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;)V
    .locals 2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    array-length v0, p1

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    array-length v0, p2

    if-gt v0, v1, :cond_0

    array-length v0, p3

    if-gt v0, v1, :cond_0

    array-length v0, p2

    array-length v1, p3

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, [Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGQTable;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGQTable;

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGImageReadParam;->qTables:[Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGQTable;

    invoke-virtual {p2}, [Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGImageReadParam;->DCHuffmanTables:[Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;

    invoke-virtual {p3}, [Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGImageReadParam;->ACHuffmanTables:[Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid JPEG table arrays"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public unsetDecodeTables()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGImageReadParam;->qTables:[Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGQTable;

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGImageReadParam;->DCHuffmanTables:[Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGImageReadParam;->ACHuffmanTables:[Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;

    return-void
.end method
