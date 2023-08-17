.class public Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/handler/codec/http/multipart/InterfaceHttpPostRequestDecoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder$UrlDecoder;,
        Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder$UrlEncodedDetector;
    }
.end annotation


# instance fields
.field private final bodyListHttpData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/netty/handler/codec/http/multipart/InterfaceHttpData;",
            ">;"
        }
    .end annotation
.end field

.field private bodyListHttpDataRank:I

.field private final bodyMapHttpData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lio/netty/handler/codec/http/multipart/InterfaceHttpData;",
            ">;>;"
        }
    .end annotation
.end field

.field private final charset:Ljava/nio/charset/Charset;

.field private currentAttribute:Lio/netty/handler/codec/http/multipart/Attribute;

.field private currentStatus:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

.field private destroyed:Z

.field private discardThreshold:I

.field private final factory:Lio/netty/handler/codec/http/multipart/HttpDataFactory;

.field private isLastChunk:Z

.field private final request:Lio/netty/handler/codec/http/HttpRequest;

.field private undecodedChunk:Lio/netty/buffer/ByteBuf;


# direct methods
.method public constructor <init>(Lio/netty/handler/codec/http/HttpRequest;)V
    .locals 3

    new-instance v0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;

    const-wide/16 v1, 0x4000

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;-><init>(J)V

    sget-object v1, Lio/netty/handler/codec/http/HttpConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0, p1, v1}, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;-><init>(Lio/netty/handler/codec/http/multipart/HttpDataFactory;Lio/netty/handler/codec/http/HttpRequest;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http/multipart/HttpDataFactory;Lio/netty/handler/codec/http/HttpRequest;)V
    .locals 1

    sget-object v0, Lio/netty/handler/codec/http/HttpConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, p2, v0}, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;-><init>(Lio/netty/handler/codec/http/multipart/HttpDataFactory;Lio/netty/handler/codec/http/HttpRequest;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http/multipart/HttpDataFactory;Lio/netty/handler/codec/http/HttpRequest;Ljava/nio/charset/Charset;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->bodyListHttpData:Ljava/util/List;

    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Lio/netty/handler/codec/http/multipart/CaseIgnoringComparator;->INSTANCE:Lio/netty/handler/codec/http/multipart/CaseIgnoringComparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->bodyMapHttpData:Ljava/util/Map;

    sget-object v0, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->NOTSTARTED:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    iput-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->currentStatus:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    const/high16 v0, 0xa00000

    iput v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->discardThreshold:I

    const-string v0, "request"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http/HttpRequest;

    iput-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->request:Lio/netty/handler/codec/http/HttpRequest;

    const-string v0, "charset"

    invoke-static {p3, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/nio/charset/Charset;

    iput-object p3, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->charset:Ljava/nio/charset/Charset;

    const-string p3, "factory"

    invoke-static {p1, p3}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/handler/codec/http/multipart/HttpDataFactory;

    iput-object p1, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->factory:Lio/netty/handler/codec/http/multipart/HttpDataFactory;

    :try_start_0
    instance-of p1, p2, Lio/netty/handler/codec/http/HttpContent;

    if-eqz p1, :cond_0

    check-cast p2, Lio/netty/handler/codec/http/HttpContent;

    invoke-virtual {p0, p2}, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->offer(Lio/netty/handler/codec/http/HttpContent;)Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->parseBody()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->destroy()V

    invoke-static {p1}, Lio/netty/util/internal/PlatformDependent;->throwException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private checkDestroyed()V
    .locals 3

    iget-boolean v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->destroyed:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " was destroyed already"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static decodeAttribute(Lio/netty/buffer/ByteBuf;Ljava/nio/charset/Charset;)Lio/netty/buffer/ByteBuf;
    .locals 5

    new-instance v0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder$UrlEncodedDetector;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder$UrlEncodedDetector;-><init>(Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder$1;)V

    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->forEachByte(Lio/netty/util/ByteProcessor;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v0

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    invoke-interface {v0, v1}, Lio/netty/buffer/ByteBufAllocator;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    new-instance v1, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder$UrlDecoder;

    invoke-direct {v1, v0}, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder$UrlDecoder;-><init>(Lio/netty/buffer/ByteBuf;)V

    invoke-virtual {p0, v1}, Lio/netty/buffer/ByteBuf;->forEachByte(Lio/netty/util/ByteProcessor;)I

    move-result v3

    invoke-static {v1}, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder$UrlDecoder;->access$100(Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder$UrlDecoder;)I

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    if-ne v3, v2, :cond_1

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v2

    add-int/lit8 v3, v2, -0x1

    :cond_1
    invoke-static {v1}, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder$UrlDecoder;->access$100(Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder$UrlDecoder;)I

    move-result v1

    sub-int/2addr v1, v4

    sub-int/2addr v3, v1

    invoke-interface {v0}, Lio/netty/util/ReferenceCounted;->release()Z

    new-instance v0, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->toString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v4

    const-string p0, "Invalid hex byte at index \'%d\' in string: \'%s\'"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-object v0
.end method

.method private static decodeAttribute(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-static {p0, p1}, Lio/netty/handler/codec/http/QueryStringDecoder;->decodeComponent(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    new-instance v0, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad string: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x27

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private parseBody()V
    .locals 2

    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->currentStatus:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    sget-object v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->PREEPILOGUE:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    if-eq v0, v1, :cond_1

    sget-object v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->EPILOGUE:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->parseBodyAttributes()V

    return-void

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->isLastChunk:Z

    if-eqz v0, :cond_2

    sget-object v0, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->EPILOGUE:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    iput-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->currentStatus:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    :cond_2
    return-void
.end method

.method private parseBodyAttributes()V
    .locals 8

    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->hasArray()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->parseBodyAttributesStandard()V

    return-void

    :cond_1
    new-instance v0, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;

    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    invoke-direct {v0, v1}, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;-><init>(Lio/netty/buffer/ByteBuf;)V

    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v1

    iget-object v2, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->currentStatus:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    sget-object v3, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->NOTSTARTED:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    if-ne v2, v3, :cond_2

    sget-object v2, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->DISPOSITION:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    iput-object v2, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->currentStatus:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    :cond_2
    :goto_0
    move v2, v1

    :cond_3
    :goto_1
    :try_start_0
    iget v3, v0, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    iget v4, v0, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->limit:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ge v3, v4, :cond_c

    iget-object v4, v0, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->bytes:[B

    add-int/lit8 v7, v3, 0x1

    iput v7, v0, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    aget-byte v3, v4, v3

    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    add-int/lit8 v1, v1, 0x1

    sget-object v4, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder$1;->$SwitchMap$io$netty$handler$codec$http$multipart$HttpPostRequestDecoder$MultiPartStatus:[I

    iget-object v7, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->currentStatus:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v4, v4, v7

    const/16 v7, 0x26

    if-eq v4, v6, :cond_9

    const/4 v6, 0x2

    if-eq v4, v6, :cond_4

    invoke-virtual {v0, v5}, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->setReadPosition(I)V

    :goto_2
    move v6, v5

    goto/16 :goto_4

    :cond_4
    if-ne v3, v7, :cond_5

    sget-object v3, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->DISPOSITION:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    iput-object v3, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->currentStatus:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    add-int/lit8 v3, v1, -0x1

    iget-object v4, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    sub-int/2addr v3, v2

    invoke-virtual {v4, v2, v3}, Lio/netty/buffer/ByteBuf;->retainedSlice(II)Lio/netty/buffer/ByteBuf;

    move-result-object v3

    invoke-direct {p0, v3}, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->setFinalBuffer(Lio/netty/buffer/ByteBuf;)V

    goto :goto_0

    :cond_5
    const/16 v4, 0xd

    const/16 v6, 0xa

    if-ne v3, v4, :cond_8

    iget v3, v0, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    iget v4, v0, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->limit:I

    if-ge v3, v4, :cond_7

    iget-object v4, v0, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->bytes:[B

    add-int/lit8 v7, v3, 0x1

    iput v7, v0, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    aget-byte v3, v4, v3

    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    add-int/lit8 v1, v1, 0x1

    if-ne v3, v6, :cond_6

    sget-object v3, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->PREEPILOGUE:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    iput-object v3, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->currentStatus:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    add-int/lit8 v3, v1, -0x2

    invoke-virtual {v0, v5}, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->setReadPosition(I)V

    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    sub-int/2addr v3, v2

    invoke-virtual {v0, v2, v3}, Lio/netty/buffer/ByteBuf;->retainedSlice(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    goto :goto_3

    :cond_6
    invoke-virtual {v0, v5}, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->setReadPosition(I)V

    new-instance v0, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    const-string v1, "Bad end of line"

    invoke-direct {v0, v1}, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    if-lez v4, :cond_3

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_8
    if-ne v3, v6, :cond_3

    sget-object v3, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->PREEPILOGUE:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    iput-object v3, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->currentStatus:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v0, v5}, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->setReadPosition(I)V

    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    sub-int/2addr v3, v2

    invoke-virtual {v0, v2, v3}, Lio/netty/buffer/ByteBuf;->retainedSlice(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    :goto_3
    invoke-direct {p0, v0}, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->setFinalBuffer(Lio/netty/buffer/ByteBuf;)V

    move v2, v1

    goto :goto_2

    :cond_9
    const/16 v4, 0x3d

    if-ne v3, v4, :cond_a

    sget-object v3, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->FIELD:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    iput-object v3, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->currentStatus:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    add-int/lit8 v3, v1, -0x1

    iget-object v4, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    sub-int/2addr v3, v2

    iget-object v5, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v2, v3, v5}, Lio/netty/buffer/ByteBuf;->toString(IILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->charset:Ljava/nio/charset/Charset;

    invoke-static {v3, v4}, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->decodeAttribute(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->factory:Lio/netty/handler/codec/http/multipart/HttpDataFactory;

    iget-object v5, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->request:Lio/netty/handler/codec/http/HttpRequest;

    invoke-interface {v4, v5, v3}, Lio/netty/handler/codec/http/multipart/HttpDataFactory;->createAttribute(Lio/netty/handler/codec/http/HttpRequest;Ljava/lang/String;)Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v3

    iput-object v3, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->currentAttribute:Lio/netty/handler/codec/http/multipart/Attribute;

    goto/16 :goto_0

    :cond_a
    if-ne v3, v7, :cond_3

    sget-object v3, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->DISPOSITION:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    iput-object v3, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->currentStatus:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    add-int/lit8 v3, v1, -0x1

    iget-object v4, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    sub-int/2addr v3, v2

    iget-object v5, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v2, v3, v5}, Lio/netty/buffer/ByteBuf;->toString(IILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->charset:Ljava/nio/charset/Charset;

    invoke-static {v3, v4}, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->decodeAttribute(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b

    iget-object v4, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->factory:Lio/netty/handler/codec/http/multipart/HttpDataFactory;

    iget-object v5, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->request:Lio/netty/handler/codec/http/HttpRequest;

    invoke-interface {v4, v5, v3}, Lio/netty/handler/codec/http/multipart/HttpDataFactory;->createAttribute(Lio/netty/handler/codec/http/HttpRequest;Ljava/lang/String;)Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v3

    iput-object v3, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->currentAttribute:Lio/netty/handler/codec/http/multipart/Attribute;

    const-string v4, ""

    invoke-interface {v3, v4}, Lio/netty/handler/codec/http/multipart/Attribute;->setValue(Ljava/lang/String;)V

    iget-object v3, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->currentAttribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-virtual {p0, v3}, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->addHttpData(Lio/netty/handler/codec/http/multipart/InterfaceHttpData;)V

    :cond_b
    const/4 v3, 0x0

    iput-object v3, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->currentAttribute:Lio/netty/handler/codec/http/multipart/Attribute;

    goto/16 :goto_0

    :cond_c
    :goto_4
    iget-boolean v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->isLastChunk:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->currentAttribute:Lio/netty/handler/codec/http/multipart/Attribute;

    if-eqz v0, :cond_f

    if-le v1, v2, :cond_d

    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    sub-int v3, v1, v2

    invoke-virtual {v0, v2, v3}, Lio/netty/buffer/ByteBuf;->retainedSlice(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    :goto_5
    invoke-direct {p0, v0}, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->setFinalBuffer(Lio/netty/buffer/ByteBuf;)V

    goto :goto_6

    :cond_d
    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/HttpData;->isCompleted()Z

    move-result v0

    if-nez v0, :cond_e

    sget-object v0, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;
    :try_end_0
    .catch Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_5

    :cond_e
    :goto_6
    :try_start_1
    sget-object v0, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->EPILOGUE:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    iput-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->currentStatus:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;
    :try_end_1
    .catch Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    move v2, v1

    goto :goto_8

    :catch_1
    move-exception v0

    move v2, v1

    goto :goto_9

    :catch_2
    move-exception v0

    move v2, v1

    goto :goto_a

    :cond_f
    if-eqz v6, :cond_10

    :try_start_2
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->currentAttribute:Lio/netty/handler/codec/http/multipart/Attribute;

    if-eqz v0, :cond_10

    iget-object v3, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->currentStatus:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    sget-object v4, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->FIELD:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    if-ne v3, v4, :cond_10

    iget-object v3, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    sub-int v4, v1, v2

    invoke-virtual {v3, v2, v4}, Lio/netty/buffer/ByteBuf;->retainedSlice(II)Lio/netty/buffer/ByteBuf;

    move-result-object v3

    invoke-interface {v0, v3, v5}, Lio/netty/handler/codec/http/multipart/HttpData;->addContent(Lio/netty/buffer/ByteBuf;Z)V

    :goto_7
    move v2, v1

    :cond_10
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, v2}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;
    :try_end_2
    .catch Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3

    return-void

    :catch_3
    move-exception v0

    :goto_8
    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v1, v2}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    new-instance v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    invoke-direct {v1, v0}, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_4
    move-exception v0

    :goto_9
    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v1, v2}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    new-instance v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    invoke-direct {v1, v0}, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_5
    move-exception v0

    :goto_a
    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v1, v2}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    throw v0
.end method

.method private parseBodyAttributesStandard()V
    .locals 9

    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->currentStatus:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    sget-object v2, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->NOTSTARTED:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    if-ne v1, v2, :cond_0

    sget-object v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->DISPOSITION:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    iput-object v1, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->currentStatus:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v2, v0

    move v3, v1

    :cond_1
    :goto_1
    :try_start_0
    iget-object v4, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_a

    if-eqz v3, :cond_a

    iget-object v4, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    move-result v4

    int-to-char v4, v4

    add-int/lit8 v0, v0, 0x1

    sget-object v6, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder$1;->$SwitchMap$io$netty$handler$codec$http$multipart$HttpPostRequestDecoder$MultiPartStatus:[I

    iget-object v7, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->currentStatus:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v6, v6, v7

    const/16 v7, 0x26

    if-eq v6, v1, :cond_7

    const/4 v8, 0x2

    if-eq v6, v8, :cond_2

    :goto_2
    move v3, v5

    goto :goto_1

    :cond_2
    if-ne v4, v7, :cond_3

    sget-object v3, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->DISPOSITION:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    iput-object v3, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->currentStatus:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    add-int/lit8 v3, v0, -0x1

    iget-object v4, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    sub-int/2addr v3, v2

    invoke-virtual {v4, v2, v3}, Lio/netty/buffer/ByteBuf;->retainedSlice(II)Lio/netty/buffer/ByteBuf;

    move-result-object v3

    invoke-direct {p0, v3}, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->setFinalBuffer(Lio/netty/buffer/ByteBuf;)V

    goto :goto_0

    :cond_3
    const/16 v6, 0xd

    const/16 v7, 0xa

    if-ne v4, v6, :cond_6

    iget-object v4, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v3, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    move-result v3

    int-to-char v3, v3

    add-int/lit8 v0, v0, 0x1

    if-ne v3, v7, :cond_4

    sget-object v3, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->PREEPILOGUE:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    iput-object v3, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->currentStatus:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    add-int/lit8 v3, v0, -0x2

    iget-object v4, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    sub-int/2addr v3, v2

    invoke-virtual {v4, v2, v3}, Lio/netty/buffer/ByteBuf;->retainedSlice(II)Lio/netty/buffer/ByteBuf;

    move-result-object v3

    goto :goto_3

    :cond_4
    new-instance v0, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    const-string v1, "Bad end of line"

    invoke-direct {v0, v1}, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_6
    if-ne v4, v7, :cond_1

    sget-object v3, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->PREEPILOGUE:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    iput-object v3, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->currentStatus:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    add-int/lit8 v3, v0, -0x1

    iget-object v4, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    sub-int/2addr v3, v2

    invoke-virtual {v4, v2, v3}, Lio/netty/buffer/ByteBuf;->retainedSlice(II)Lio/netty/buffer/ByteBuf;

    move-result-object v3

    :goto_3
    invoke-direct {p0, v3}, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->setFinalBuffer(Lio/netty/buffer/ByteBuf;)V

    move v2, v0

    goto :goto_2

    :cond_7
    const/16 v5, 0x3d

    if-ne v4, v5, :cond_8

    sget-object v4, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->FIELD:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    iput-object v4, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->currentStatus:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    add-int/lit8 v4, v0, -0x1

    iget-object v5, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    sub-int/2addr v4, v2

    iget-object v6, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v2, v4, v6}, Lio/netty/buffer/ByteBuf;->toString(IILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->charset:Ljava/nio/charset/Charset;

    invoke-static {v4, v5}, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->decodeAttribute(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->factory:Lio/netty/handler/codec/http/multipart/HttpDataFactory;

    iget-object v6, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->request:Lio/netty/handler/codec/http/HttpRequest;

    invoke-interface {v5, v6, v4}, Lio/netty/handler/codec/http/multipart/HttpDataFactory;->createAttribute(Lio/netty/handler/codec/http/HttpRequest;Ljava/lang/String;)Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v4

    iput-object v4, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->currentAttribute:Lio/netty/handler/codec/http/multipart/Attribute;

    move v2, v0

    goto/16 :goto_1

    :cond_8
    if-ne v4, v7, :cond_1

    sget-object v3, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->DISPOSITION:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    iput-object v3, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->currentStatus:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    add-int/lit8 v3, v0, -0x1

    iget-object v4, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    sub-int/2addr v3, v2

    iget-object v5, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v2, v3, v5}, Lio/netty/buffer/ByteBuf;->toString(IILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->charset:Ljava/nio/charset/Charset;

    invoke-static {v3, v4}, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->decodeAttribute(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    iget-object v4, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->factory:Lio/netty/handler/codec/http/multipart/HttpDataFactory;

    iget-object v5, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->request:Lio/netty/handler/codec/http/HttpRequest;

    invoke-interface {v4, v5, v3}, Lio/netty/handler/codec/http/multipart/HttpDataFactory;->createAttribute(Lio/netty/handler/codec/http/HttpRequest;Ljava/lang/String;)Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v3

    iput-object v3, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->currentAttribute:Lio/netty/handler/codec/http/multipart/Attribute;

    const-string v4, ""

    invoke-interface {v3, v4}, Lio/netty/handler/codec/http/multipart/Attribute;->setValue(Ljava/lang/String;)V

    iget-object v3, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->currentAttribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-virtual {p0, v3}, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->addHttpData(Lio/netty/handler/codec/http/multipart/InterfaceHttpData;)V

    :cond_9
    const/4 v3, 0x0

    iput-object v3, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->currentAttribute:Lio/netty/handler/codec/http/multipart/Attribute;

    goto/16 :goto_0

    :cond_a
    iget-boolean v1, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->isLastChunk:Z

    if-eqz v1, :cond_d

    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->currentAttribute:Lio/netty/handler/codec/http/multipart/Attribute;

    if-eqz v1, :cond_d

    if-le v0, v2, :cond_b

    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    sub-int v3, v0, v2

    invoke-virtual {v1, v2, v3}, Lio/netty/buffer/ByteBuf;->retainedSlice(II)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    :goto_4
    invoke-direct {p0, v1}, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->setFinalBuffer(Lio/netty/buffer/ByteBuf;)V

    goto :goto_5

    :cond_b
    invoke-interface {v1}, Lio/netty/handler/codec/http/multipart/HttpData;->isCompleted()Z

    move-result v1

    if-nez v1, :cond_c

    sget-object v1, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;
    :try_end_0
    .catch Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_4

    :cond_c
    :goto_5
    :try_start_1
    sget-object v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->EPILOGUE:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    iput-object v1, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->currentStatus:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;
    :try_end_1
    .catch Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    :cond_d
    if-eqz v3, :cond_e

    :try_start_2
    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->currentAttribute:Lio/netty/handler/codec/http/multipart/Attribute;

    if-eqz v1, :cond_e

    iget-object v3, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->currentStatus:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    sget-object v4, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->FIELD:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    if-ne v3, v4, :cond_e

    iget-object v3, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    sub-int v4, v0, v2

    invoke-virtual {v3, v2, v4}, Lio/netty/buffer/ByteBuf;->retainedSlice(II)Lio/netty/buffer/ByteBuf;

    move-result-object v3

    invoke-interface {v1, v3, v5}, Lio/netty/handler/codec/http/multipart/HttpData;->addContent(Lio/netty/buffer/ByteBuf;Z)V
    :try_end_2
    .catch Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_6

    :cond_e
    move v0, v2

    :goto_6
    :try_start_3
    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v1, v0}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;
    :try_end_3
    .catch Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0

    return-void

    :catch_0
    move-exception v1

    move v2, v0

    move-object v0, v1

    goto :goto_7

    :catch_1
    move-exception v1

    move v2, v0

    move-object v0, v1

    goto :goto_8

    :catch_2
    move-exception v1

    move v2, v0

    move-object v0, v1

    goto :goto_9

    :catch_3
    move-exception v0

    :goto_7
    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v1, v2}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    new-instance v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    invoke-direct {v1, v0}, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_4
    move-exception v0

    :goto_8
    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v1, v2}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    new-instance v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    invoke-direct {v1, v0}, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_5
    move-exception v0

    :goto_9
    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v1, v2}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    throw v0
.end method

.method private setFinalBuffer(Lio/netty/buffer/ByteBuf;)V
    .locals 2

    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->currentAttribute:Lio/netty/handler/codec/http/multipart/Attribute;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lio/netty/handler/codec/http/multipart/HttpData;->addContent(Lio/netty/buffer/ByteBuf;Z)V

    iget-object p1, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->currentAttribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {p1}, Lio/netty/handler/codec/http/multipart/HttpData;->getByteBuf()Lio/netty/buffer/ByteBuf;

    move-result-object p1

    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->charset:Ljava/nio/charset/Charset;

    invoke-static {p1, v0}, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->decodeAttribute(Lio/netty/buffer/ByteBuf;Ljava/nio/charset/Charset;)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->currentAttribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0, p1}, Lio/netty/handler/codec/http/multipart/HttpData;->setContent(Lio/netty/buffer/ByteBuf;)V

    :cond_0
    iget-object p1, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->currentAttribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->addHttpData(Lio/netty/handler/codec/http/multipart/InterfaceHttpData;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->currentAttribute:Lio/netty/handler/codec/http/multipart/Attribute;

    return-void
.end method


# virtual methods
.method public addHttpData(Lio/netty/handler/codec/http/multipart/InterfaceHttpData;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->bodyMapHttpData:Ljava/util/Map;

    invoke-interface {p1}, Lio/netty/handler/codec/http/multipart/InterfaceHttpData;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->bodyMapHttpData:Ljava/util/Map;

    invoke-interface {p1}, Lio/netty/handler/codec/http/multipart/InterfaceHttpData;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->bodyListHttpData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public cleanFiles()V
    .locals 2

    invoke-direct {p0}, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->checkDestroyed()V

    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->factory:Lio/netty/handler/codec/http/multipart/HttpDataFactory;

    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->request:Lio/netty/handler/codec/http/HttpRequest;

    invoke-interface {v0, v1}, Lio/netty/handler/codec/http/multipart/HttpDataFactory;->cleanRequestHttpData(Lio/netty/handler/codec/http/HttpRequest;)V

    return-void
.end method

.method public currentPartialHttpData()Lio/netty/handler/codec/http/multipart/InterfaceHttpData;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->currentAttribute:Lio/netty/handler/codec/http/multipart/Attribute;

    return-object v0
.end method

.method public destroy()V
    .locals 3

    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->cleanFiles()V

    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->bodyListHttpData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/handler/codec/http/multipart/InterfaceHttpData;

    invoke-interface {v1}, Lio/netty/util/ReferenceCounted;->refCnt()I

    move-result v2

    if-lez v2, :cond_0

    invoke-interface {v1}, Lio/netty/util/ReferenceCounted;->release()Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->destroyed:Z

    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lio/netty/util/ReferenceCounted;->refCnt()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    invoke-interface {v0}, Lio/netty/util/ReferenceCounted;->release()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    :cond_2
    return-void
.end method

.method public getBodyHttpData(Ljava/lang/String;)Lio/netty/handler/codec/http/multipart/InterfaceHttpData;
    .locals 1

    invoke-direct {p0}, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->checkDestroyed()V

    iget-boolean v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->isLastChunk:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->bodyMapHttpData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/handler/codec/http/multipart/InterfaceHttpData;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :cond_1
    new-instance p1, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;

    invoke-direct {p1}, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;-><init>()V

    throw p1
.end method

.method public getBodyHttpDatas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/netty/handler/codec/http/multipart/InterfaceHttpData;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->checkDestroyed()V

    iget-boolean v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->isLastChunk:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->bodyListHttpData:Ljava/util/List;

    return-object v0

    :cond_0
    new-instance v0, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;

    invoke-direct {v0}, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;-><init>()V

    throw v0
.end method

.method public getBodyHttpDatas(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lio/netty/handler/codec/http/multipart/InterfaceHttpData;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->checkDestroyed()V

    iget-boolean v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->isLastChunk:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->bodyMapHttpData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1

    :cond_0
    new-instance p1, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;

    invoke-direct {p1}, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;-><init>()V

    throw p1
.end method

.method public getDiscardThreshold()I
    .locals 1

    iget v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->discardThreshold:I

    return v0
.end method

.method public hasNext()Z
    .locals 2

    invoke-direct {p0}, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->checkDestroyed()V

    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->currentStatus:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    sget-object v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->EPILOGUE:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    if-ne v0, v1, :cond_1

    iget v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->bodyListHttpDataRank:I

    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->bodyListHttpData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$EndOfDataDecoderException;

    invoke-direct {v0}, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$EndOfDataDecoderException;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->bodyListHttpData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->bodyListHttpDataRank:I

    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->bodyListHttpData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public isMultipart()Z
    .locals 1

    invoke-direct {p0}, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->checkDestroyed()V

    const/4 v0, 0x0

    return v0
.end method

.method public next()Lio/netty/handler/codec/http/multipart/InterfaceHttpData;
    .locals 3

    invoke-direct {p0}, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->checkDestroyed()V

    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->bodyListHttpData:Ljava/util/List;

    iget v1, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->bodyListHttpDataRank:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->bodyListHttpDataRank:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http/multipart/InterfaceHttpData;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public offer(Lio/netty/handler/codec/http/HttpContent;)Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;
    .locals 3

    invoke-direct {p0}, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->checkDestroyed()V

    instance-of v0, p1, Lio/netty/handler/codec/http/LastHttpContent;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->isLastChunk:Z

    :cond_0
    invoke-interface {p1}, Lio/netty/buffer/ByteBufHolder;->content()Lio/netty/buffer/ByteBuf;

    move-result-object p1

    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v0

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v2

    invoke-interface {v0, v2}, Lio/netty/buffer/ByteBufAllocator;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    iput-object p1, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    :goto_0
    invoke-direct {p0}, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->parseBody()V

    iget-object p1, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result p1

    iget v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->discardThreshold:I

    if-le p1, v0, :cond_3

    iget-object p1, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    invoke-interface {p1}, Lio/netty/util/ReferenceCounted;->refCnt()I

    move-result p1

    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->discardReadBytes()Lio/netty/buffer/ByteBuf;

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object p1

    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    invoke-interface {p1, v0}, Lio/netty/buffer/ByteBufAllocator;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    invoke-interface {v0}, Lio/netty/util/ReferenceCounted;->release()Z

    iput-object p1, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    :cond_3
    :goto_1
    return-object p0
.end method

.method public bridge synthetic offer(Lio/netty/handler/codec/http/HttpContent;)Lio/netty/handler/codec/http/multipart/InterfaceHttpPostRequestDecoder;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->offer(Lio/netty/handler/codec/http/HttpContent;)Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;

    move-result-object p1

    return-object p1
.end method

.method public removeHttpDataFromClean(Lio/netty/handler/codec/http/multipart/InterfaceHttpData;)V
    .locals 2

    invoke-direct {p0}, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->checkDestroyed()V

    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->factory:Lio/netty/handler/codec/http/multipart/HttpDataFactory;

    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->request:Lio/netty/handler/codec/http/HttpRequest;

    invoke-interface {v0, v1, p1}, Lio/netty/handler/codec/http/multipart/HttpDataFactory;->removeHttpDataFromClean(Lio/netty/handler/codec/http/HttpRequest;Lio/netty/handler/codec/http/multipart/InterfaceHttpData;)V

    return-void
.end method

.method public setDiscardThreshold(I)V
    .locals 1

    const-string v0, "discardThreshold"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->discardThreshold:I

    return-void
.end method
