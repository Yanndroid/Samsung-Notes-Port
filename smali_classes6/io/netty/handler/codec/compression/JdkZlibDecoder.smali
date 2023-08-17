.class public Lio/netty/handler/codec/compression/JdkZlibDecoder;
.super Lio/netty/handler/codec/compression/ZlibDecoder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;
    }
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z = false

.field private static final FCOMMENT:I = 0x10

.field private static final FEXTRA:I = 0x4

.field private static final FHCRC:I = 0x2

.field private static final FNAME:I = 0x8

.field private static final FRESERVED:I = 0xe0


# instance fields
.field private final crc:Lio/netty/handler/codec/compression/ByteBufChecksum;

.field private decideZlibOrNone:Z

.field private final decompressConcatenated:Z

.field private final dictionary:[B

.field private volatile finished:Z

.field private flags:I

.field private gzipState:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

.field private inflater:Ljava/util/zip/Inflater;

.field private xlen:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    sget-object v0, Lio/netty/handler/codec/compression/ZlibWrapper;->ZLIB:Lio/netty/handler/codec/compression/ZlibWrapper;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v2}, Lio/netty/handler/codec/compression/JdkZlibDecoder;-><init>(Lio/netty/handler/codec/compression/ZlibWrapper;[BZI)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    sget-object v0, Lio/netty/handler/codec/compression/ZlibWrapper;->ZLIB:Lio/netty/handler/codec/compression/ZlibWrapper;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Lio/netty/handler/codec/compression/JdkZlibDecoder;-><init>(Lio/netty/handler/codec/compression/ZlibWrapper;[BZI)V

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/compression/ZlibWrapper;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lio/netty/handler/codec/compression/JdkZlibDecoder;-><init>(Lio/netty/handler/codec/compression/ZlibWrapper;[BZI)V

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/compression/ZlibWrapper;I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Lio/netty/handler/codec/compression/JdkZlibDecoder;-><init>(Lio/netty/handler/codec/compression/ZlibWrapper;[BZI)V

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/compression/ZlibWrapper;Z)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lio/netty/handler/codec/compression/JdkZlibDecoder;-><init>(Lio/netty/handler/codec/compression/ZlibWrapper;[BZI)V

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/compression/ZlibWrapper;ZI)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lio/netty/handler/codec/compression/JdkZlibDecoder;-><init>(Lio/netty/handler/codec/compression/ZlibWrapper;[BZI)V

    return-void
.end method

.method private constructor <init>(Lio/netty/handler/codec/compression/ZlibWrapper;[BZI)V
    .locals 2

    invoke-direct {p0, p4}, Lio/netty/handler/codec/compression/ZlibDecoder;-><init>(I)V

    sget-object p4, Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;->HEADER_START:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    iput-object p4, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->gzipState:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    const/4 p4, -0x1

    iput p4, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->flags:I

    iput p4, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->xlen:I

    const-string p4, "wrapper"

    invoke-static {p1, p4}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-boolean p3, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->decompressConcatenated:Z

    sget-object p3, Lio/netty/handler/codec/compression/JdkZlibDecoder$1;->$SwitchMap$io$netty$handler$codec$compression$ZlibWrapper:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    aget p3, p3, p4

    const/4 p4, 0x1

    if-eq p3, p4, :cond_3

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p3, v0, :cond_2

    const/4 v0, 0x3

    if-eq p3, v0, :cond_1

    const/4 v0, 0x4

    if-ne p3, v0, :cond_0

    iput-boolean p4, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->decideZlibOrNone:Z

    goto :goto_1

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Only GZIP or ZLIB is supported, but you used "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    new-instance p1, Ljava/util/zip/Inflater;

    invoke-direct {p1}, Ljava/util/zip/Inflater;-><init>()V

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/util/zip/Inflater;

    invoke-direct {p1, p4}, Ljava/util/zip/Inflater;-><init>(Z)V

    :goto_0
    iput-object p1, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->inflater:Ljava/util/zip/Inflater;

    :goto_1
    iput-object v1, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->crc:Lio/netty/handler/codec/compression/ByteBufChecksum;

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/util/zip/Inflater;

    invoke-direct {p1, p4}, Ljava/util/zip/Inflater;-><init>(Z)V

    iput-object p1, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->inflater:Ljava/util/zip/Inflater;

    new-instance p1, Ljava/util/zip/CRC32;

    invoke-direct {p1}, Ljava/util/zip/CRC32;-><init>()V

    invoke-static {p1}, Lio/netty/handler/codec/compression/ByteBufChecksum;->wrapChecksum(Ljava/util/zip/Checksum;)Lio/netty/handler/codec/compression/ByteBufChecksum;

    move-result-object p1

    iput-object p1, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->crc:Lio/netty/handler/codec/compression/ByteBufChecksum;

    :goto_2
    iput-object p2, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->dictionary:[B

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 3

    sget-object v0, Lio/netty/handler/codec/compression/ZlibWrapper;->GZIP:Lio/netty/handler/codec/compression/ZlibWrapper;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lio/netty/handler/codec/compression/JdkZlibDecoder;-><init>(Lio/netty/handler/codec/compression/ZlibWrapper;[BZI)V

    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 2

    sget-object v0, Lio/netty/handler/codec/compression/ZlibWrapper;->GZIP:Lio/netty/handler/codec/compression/ZlibWrapper;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lio/netty/handler/codec/compression/JdkZlibDecoder;-><init>(Lio/netty/handler/codec/compression/ZlibWrapper;[BZI)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    sget-object v0, Lio/netty/handler/codec/compression/ZlibWrapper;->ZLIB:Lio/netty/handler/codec/compression/ZlibWrapper;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, v1}, Lio/netty/handler/codec/compression/JdkZlibDecoder;-><init>(Lio/netty/handler/codec/compression/ZlibWrapper;[BZI)V

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 2

    sget-object v0, Lio/netty/handler/codec/compression/ZlibWrapper;->ZLIB:Lio/netty/handler/codec/compression/ZlibWrapper;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, p2}, Lio/netty/handler/codec/compression/JdkZlibDecoder;-><init>(Lio/netty/handler/codec/compression/ZlibWrapper;[BZI)V

    return-void
.end method

.method private handleGzipFooter(Lio/netty/buffer/ByteBuf;)Z
    .locals 1

    invoke-direct {p0, p1}, Lio/netty/handler/codec/compression/JdkZlibDecoder;->readGZIPFooter(Lio/netty/buffer/ByteBuf;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->decompressConcatenated:Z

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->finished:Z

    iget-boolean p1, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->finished:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {p1}, Ljava/util/zip/Inflater;->reset()V

    iget-object p1, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->crc:Lio/netty/handler/codec/compression/ByteBufChecksum;

    invoke-interface {p1}, Ljava/util/zip/Checksum;->reset()V

    sget-object p1, Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;->HEADER_START:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    iput-object p1, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->gzipState:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private static looksLikeZlib(S)Z
    .locals 2

    and-int/lit16 v0, p0, 0x7800

    const/16 v1, 0x7800

    if-ne v0, v1, :cond_0

    rem-int/lit8 p0, p0, 0x1f

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private readGZIPFooter(Lio/netty/buffer/ByteBuf;)Z
    .locals 4

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    invoke-direct {p0, p1}, Lio/netty/handler/codec/compression/JdkZlibDecoder;->verifyCrc(Lio/netty/buffer/ByteBuf;)Z

    move v0, v2

    :goto_0
    const/4 v1, 0x4

    if-ge v2, v1, :cond_1

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    move-result v1

    mul-int/lit8 v3, v2, 0x8

    shl-int/2addr v1, v3

    or-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {p1}, Ljava/util/zip/Inflater;->getTotalOut()I

    move-result p1

    if-ne v0, p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    new-instance v1, Lio/netty/handler/codec/compression/DecompressionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Number of bytes mismatch. Expected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", Got: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private readGZIPHeader(Lio/netty/buffer/ByteBuf;)Z
    .locals 7

    sget-object v0, Lio/netty/handler/codec/compression/JdkZlibDecoder$1;->$SwitchMap$io$netty$handler$codec$compression$JdkZlibDecoder$GzipState:[I

    iget-object v1, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->gzipState:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x8

    const/4 v3, 0x4

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :pswitch_0
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    const/16 v5, 0xa

    if-ge v0, v5, :cond_0

    return v4

    :cond_0
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readByte()B

    move-result v0

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readByte()B

    move-result v5

    const/16 v6, 0x1f

    if-ne v0, v6, :cond_a

    iget-object v6, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->crc:Lio/netty/handler/codec/compression/ByteBufChecksum;

    invoke-interface {v6, v0}, Ljava/util/zip/Checksum;->update(I)V

    iget-object v0, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->crc:Lio/netty/handler/codec/compression/ByteBufChecksum;

    invoke-interface {v0, v5}, Ljava/util/zip/Checksum;->update(I)V

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    move-result v0

    if-ne v0, v2, :cond_9

    iget-object v5, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->crc:Lio/netty/handler/codec/compression/ByteBufChecksum;

    invoke-interface {v5, v0}, Ljava/util/zip/Checksum;->update(I)V

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    move-result v0

    iput v0, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->flags:I

    iget-object v5, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->crc:Lio/netty/handler/codec/compression/ByteBufChecksum;

    invoke-interface {v5, v0}, Ljava/util/zip/Checksum;->update(I)V

    iget v0, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->flags:I

    and-int/lit16 v0, v0, 0xe0

    if-nez v0, :cond_8

    iget-object v0, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->crc:Lio/netty/handler/codec/compression/ByteBufChecksum;

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v5

    invoke-virtual {v0, p1, v5, v3}, Lio/netty/handler/codec/compression/ByteBufChecksum;->update(Lio/netty/buffer/ByteBuf;II)V

    invoke-virtual {p1, v3}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    iget-object v0, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->crc:Lio/netty/handler/codec/compression/ByteBufChecksum;

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    move-result v5

    invoke-interface {v0, v5}, Ljava/util/zip/Checksum;->update(I)V

    iget-object v0, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->crc:Lio/netty/handler/codec/compression/ByteBufChecksum;

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    move-result v5

    invoke-interface {v0, v5}, Ljava/util/zip/Checksum;->update(I)V

    sget-object v0, Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;->FLG_READ:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    iput-object v0, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->gzipState:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    :pswitch_1
    iget v0, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->flags:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    if-ge v0, v1, :cond_1

    return v4

    :cond_1
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    move-result v0

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    move-result v3

    iget-object v5, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->crc:Lio/netty/handler/codec/compression/ByteBufChecksum;

    invoke-interface {v5, v0}, Ljava/util/zip/Checksum;->update(I)V

    iget-object v5, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->crc:Lio/netty/handler/codec/compression/ByteBufChecksum;

    invoke-interface {v5, v3}, Ljava/util/zip/Checksum;->update(I)V

    iget v5, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->xlen:I

    shl-int/2addr v0, v2

    or-int/2addr v0, v3

    or-int/2addr v0, v5

    iput v0, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->xlen:I

    :cond_2
    sget-object v0, Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;->XLEN_READ:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    iput-object v0, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->gzipState:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    :pswitch_2
    iget v0, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->xlen:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_4

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    iget v3, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->xlen:I

    if-ge v0, v3, :cond_3

    return v4

    :cond_3
    iget-object v0, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->crc:Lio/netty/handler/codec/compression/ByteBufChecksum;

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v3

    iget v5, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->xlen:I

    invoke-virtual {v0, p1, v3, v5}, Lio/netty/handler/codec/compression/ByteBufChecksum;->update(Lio/netty/buffer/ByteBuf;II)V

    iget v0, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->xlen:I

    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    :cond_4
    sget-object v0, Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;->SKIP_FNAME:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    iput-object v0, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->gzipState:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    :pswitch_3
    invoke-direct {p0, p1, v2}, Lio/netty/handler/codec/compression/JdkZlibDecoder;->skipIfNeeded(Lio/netty/buffer/ByteBuf;I)Z

    move-result v0

    if-nez v0, :cond_5

    return v4

    :cond_5
    sget-object v0, Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;->SKIP_COMMENT:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    iput-object v0, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->gzipState:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    :pswitch_4
    const/16 v0, 0x10

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/compression/JdkZlibDecoder;->skipIfNeeded(Lio/netty/buffer/ByteBuf;I)Z

    move-result v0

    if-nez v0, :cond_6

    return v4

    :cond_6
    sget-object v0, Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;->PROCESS_FHCRC:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    iput-object v0, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->gzipState:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    :pswitch_5
    iget v0, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->flags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    invoke-direct {p0, p1}, Lio/netty/handler/codec/compression/JdkZlibDecoder;->verifyCrc16(Lio/netty/buffer/ByteBuf;)Z

    move-result p1

    if-nez p1, :cond_7

    return v4

    :cond_7
    iget-object p1, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->crc:Lio/netty/handler/codec/compression/ByteBufChecksum;

    invoke-interface {p1}, Ljava/util/zip/Checksum;->reset()V

    sget-object p1, Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;->HEADER_END:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    iput-object p1, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->gzipState:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    :pswitch_6
    const/4 p1, 0x1

    return p1

    :cond_8
    new-instance p1, Lio/netty/handler/codec/compression/DecompressionException;

    const-string v0, "Reserved flags are set in the GZIP header"

    invoke-direct {p1, v0}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    new-instance p1, Lio/netty/handler/codec/compression/DecompressionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported compression method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " in the GZIP header"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    new-instance p1, Lio/netty/handler/codec/compression/DecompressionException;

    const-string v0, "Input is not in the GZIP format"

    invoke-direct {p1, v0}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private skipIfNeeded(Lio/netty/buffer/ByteBuf;I)Z
    .locals 1

    iget v0, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->flags:I

    and-int/2addr p2, v0

    if-eqz p2, :cond_2

    :cond_0
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    move-result p2

    iget-object v0, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->crc:Lio/netty/handler/codec/compression/ByteBufChecksum;

    invoke-interface {v0, p2}, Ljava/util/zip/Checksum;->update(I)V

    if-nez p2, :cond_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private verifyCrc(Lio/netty/buffer/ByteBuf;)Z
    .locals 7

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    const-wide/16 v3, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    move-result v0

    int-to-long v5, v0

    mul-int/lit8 v0, v1, 0x8

    shl-long/2addr v5, v0

    or-long/2addr v3, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->crc:Lio/netty/handler/codec/compression/ByteBufChecksum;

    invoke-interface {p1}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v0

    cmp-long p1, v3, v0

    if-nez p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    new-instance p1, Lio/netty/handler/codec/compression/DecompressionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CRC value mismatch. Expected: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", Got: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private verifyCrc16(Lio/netty/buffer/ByteBuf;)Z
    .locals 13

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->crc:Lio/netty/handler/codec/compression/ByteBufChecksum;

    invoke-interface {v0}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    move-wide v7, v5

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    move-result v0

    int-to-long v9, v0

    mul-int/lit8 v0, v1, 0x8

    shl-long/2addr v9, v0

    or-long/2addr v5, v9

    shr-long v9, v3, v0

    const-wide/16 v11, 0xff

    and-long/2addr v9, v11

    shl-long/2addr v9, v0

    or-long/2addr v7, v9

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    cmp-long p1, v5, v7

    if-nez p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    new-instance p1, Lio/netty/handler/codec/compression/DecompressionException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CRC16 value mismatch. Expected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", Got: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Lio/netty/buffer/ByteBuf;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->finished:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result p1

    invoke-virtual {p2, p1}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    return-void

    :cond_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-boolean v1, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->decideZlibOrNone:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v1

    invoke-virtual {p2, v1}, Lio/netty/buffer/ByteBuf;->getShort(I)S

    move-result v1

    invoke-static {v1}, Lio/netty/handler/codec/compression/JdkZlibDecoder;->looksLikeZlib(S)Z

    move-result v1

    xor-int/2addr v1, v3

    new-instance v4, Ljava/util/zip/Inflater;

    invoke-direct {v4, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    iput-object v4, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->inflater:Ljava/util/zip/Inflater;

    iput-boolean v2, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->decideZlibOrNone:Z

    :cond_3
    iget-object v1, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->crc:Lio/netty/handler/codec/compression/ByteBufChecksum;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->gzipState:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    sget-object v4, Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;->HEADER_END:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    if-eq v1, v4, :cond_6

    sget-object v0, Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;->FOOTER_START:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    if-ne v1, v0, :cond_4

    invoke-direct {p0, p2}, Lio/netty/handler/codec/compression/JdkZlibDecoder;->handleGzipFooter(Lio/netty/buffer/ByteBuf;)Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    :cond_4
    invoke-direct {p0, p2}, Lio/netty/handler/codec/compression/JdkZlibDecoder;->readGZIPHeader(Lio/netty/buffer/ByteBuf;)Z

    move-result v0

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    if-nez v0, :cond_6

    return-void

    :cond_6
    iget-object v1, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->array()[B

    move-result-object v4

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->arrayOffset()I

    move-result v5

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v1, v4, v5, v0}, Ljava/util/zip/Inflater;->setInput([BII)V

    goto :goto_0

    :cond_7
    new-array v1, v0, [B

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v4

    invoke-virtual {p2, v4, v1}, Lio/netty/buffer/ByteBuf;->getBytes(I[B)Lio/netty/buffer/ByteBuf;

    iget-object v4, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v4, v1}, Ljava/util/zip/Inflater;->setInput([B)V

    :cond_8
    :goto_0
    const/4 v1, 0x0

    iget-object v4, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v4}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v4

    shl-int/2addr v4, v3

    invoke-virtual {p0, p1, v1, v4}, Lio/netty/handler/codec/compression/ZlibDecoder;->prepareDecompressBuffer(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    :goto_1
    :try_start_0
    iget-object v4, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v4}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v4

    if-nez v4, :cond_e

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->array()[B

    move-result-object v4

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v5

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->arrayOffset()I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->writableBytes()I

    move-result v7

    iget-object v8, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v8, v4, v6, v7}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v7

    if-lez v7, :cond_9

    add-int/2addr v5, v7

    invoke-virtual {v1, v5}, Lio/netty/buffer/ByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;

    iget-object v5, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->crc:Lio/netty/handler/codec/compression/ByteBufChecksum;

    if-eqz v5, :cond_b

    invoke-interface {v5, v4, v6, v7}, Ljava/util/zip/Checksum;->update([BII)V

    goto :goto_2

    :cond_9
    iget-object v4, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v4}, Ljava/util/zip/Inflater;->needsDictionary()Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->dictionary:[B

    if-eqz v4, :cond_a

    iget-object v5, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v5, v4}, Ljava/util/zip/Inflater;->setDictionary([B)V

    goto :goto_2

    :cond_a
    new-instance p1, Lio/netty/handler/codec/compression/DecompressionException;

    const-string p2, "decompression failure, unable to set dictionary as non was specified"

    invoke-direct {p1, p2}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    :goto_2
    iget-object v4, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v4}, Ljava/util/zip/Inflater;->finished()Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object p1, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->crc:Lio/netty/handler/codec/compression/ByteBufChecksum;

    if-nez p1, :cond_c

    iput-boolean v3, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->finished:Z

    goto :goto_3

    :cond_c
    move v2, v3

    goto :goto_3

    :cond_d
    iget-object v4, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v4}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v4

    shl-int/2addr v4, v3

    invoke-virtual {p0, p1, v1, v4}, Lio/netty/handler/codec/compression/ZlibDecoder;->prepareDecompressBuffer(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    goto :goto_1

    :cond_e
    :goto_3
    iget-object p1, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {p1}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result p1

    sub-int/2addr v0, p1

    invoke-virtual {p2, v0}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    if-eqz v2, :cond_f

    sget-object p1, Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;->FOOTER_START:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    iput-object p1, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->gzipState:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    invoke-direct {p0, p2}, Lio/netty/handler/codec/compression/JdkZlibDecoder;->handleGzipFooter(Lio/netty/buffer/ByteBuf;)Z
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_f
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result p1

    if-eqz p1, :cond_10

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_10
    invoke-interface {v1}, Lio/netty/util/ReferenceCounted;->release()Z

    :goto_4
    return-void

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_0
    move-exception p1

    :try_start_1
    new-instance p2, Lio/netty/handler/codec/compression/DecompressionException;

    const-string v0, "decompression failure"

    invoke-direct {p2, v0, p1}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_5
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result p2

    if-eqz p2, :cond_11

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_11
    invoke-interface {v1}, Lio/netty/util/ReferenceCounted;->release()Z

    :goto_6
    throw p1
.end method

.method public decompressionBufferExhausted(Lio/netty/buffer/ByteBuf;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->finished:Z

    return-void
.end method

.method public handlerRemoved0(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0

    invoke-super {p0, p1}, Lio/netty/handler/codec/ByteToMessageDecoder;->handlerRemoved0(Lio/netty/channel/ChannelHandlerContext;)V

    iget-object p1, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->inflater:Ljava/util/zip/Inflater;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/zip/Inflater;->end()V

    :cond_0
    return-void
.end method

.method public isClosed()Z
    .locals 1

    iget-boolean v0, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->finished:Z

    return v0
.end method
