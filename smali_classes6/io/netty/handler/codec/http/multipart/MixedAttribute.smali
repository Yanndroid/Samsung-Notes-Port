.class public Lio/netty/handler/codec/http/multipart/MixedAttribute;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/handler/codec/http/multipart/Attribute;


# instance fields
.field private attribute:Lio/netty/handler/codec/http/multipart/Attribute;

.field private final baseDir:Ljava/lang/String;

.field private final deleteOnExit:Z

.field private final limitSize:J

.field private maxSize:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 1

    sget-object v0, Lio/netty/handler/codec/http/HttpConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, p2, p3, v0}, Lio/netty/handler/codec/http/multipart/MixedAttribute;-><init>(Ljava/lang/String;JLjava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 7

    sget-object v6, Lio/netty/handler/codec/http/HttpConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lio/netty/handler/codec/http/multipart/MixedAttribute;-><init>(Ljava/lang/String;JJLjava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJLjava/nio/charset/Charset;)V
    .locals 9

    sget-object v7, Lio/netty/handler/codec/http/multipart/DiskAttribute;->baseDirectory:Ljava/lang/String;

    sget-boolean v8, Lio/netty/handler/codec/http/multipart/DiskAttribute;->deleteOnExitTemporaryFile:Z

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v8}, Lio/netty/handler/codec/http/multipart/MixedAttribute;-><init>(Ljava/lang/String;JJLjava/nio/charset/Charset;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJLjava/nio/charset/Charset;Ljava/lang/String;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->maxSize:J

    iput-wide p4, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->limitSize:J

    new-instance p4, Lio/netty/handler/codec/http/multipart/MemoryAttribute;

    invoke-direct {p4, p1, p2, p3, p6}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;-><init>(Ljava/lang/String;JLjava/nio/charset/Charset;)V

    iput-object p4, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    iput-object p7, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->baseDir:Ljava/lang/String;

    iput-boolean p8, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->deleteOnExit:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/nio/charset/Charset;)V
    .locals 7

    sget-object v5, Lio/netty/handler/codec/http/multipart/DiskAttribute;->baseDirectory:Ljava/lang/String;

    sget-boolean v6, Lio/netty/handler/codec/http/multipart/DiskAttribute;->deleteOnExitTemporaryFile:Z

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lio/netty/handler/codec/http/multipart/MixedAttribute;-><init>(Ljava/lang/String;JLjava/nio/charset/Charset;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/nio/charset/Charset;Ljava/lang/String;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->maxSize:J

    iput-wide p2, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->limitSize:J

    new-instance p2, Lio/netty/handler/codec/http/multipart/MemoryAttribute;

    invoke-direct {p2, p1, p4}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    iput-object p2, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    iput-object p5, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->baseDir:Ljava/lang/String;

    iput-boolean p6, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->deleteOnExit:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 8

    sget-object v5, Lio/netty/handler/codec/http/HttpConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    sget-object v6, Lio/netty/handler/codec/http/multipart/DiskAttribute;->baseDirectory:Ljava/lang/String;

    sget-boolean v7, Lio/netty/handler/codec/http/multipart/DiskFileUpload;->deleteOnExitTemporaryFile:Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-direct/range {v0 .. v7}, Lio/netty/handler/codec/http/multipart/MixedAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/nio/charset/Charset;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/nio/charset/Charset;)V
    .locals 8

    sget-object v6, Lio/netty/handler/codec/http/multipart/DiskAttribute;->baseDirectory:Ljava/lang/String;

    sget-boolean v7, Lio/netty/handler/codec/http/multipart/DiskFileUpload;->deleteOnExitTemporaryFile:Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lio/netty/handler/codec/http/multipart/MixedAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/nio/charset/Charset;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/nio/charset/Charset;Ljava/lang/String;Z)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->maxSize:J

    iput-wide p3, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->limitSize:J

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v0, v0

    cmp-long p3, v0, p3

    if-lez p3, :cond_0

    :try_start_0
    new-instance p3, Lio/netty/handler/codec/http/multipart/DiskAttribute;

    move-object v0, p3

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move-object v4, p6

    move v5, p7

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/http/multipart/DiskAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;Z)V

    iput-object p3, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    :try_start_1
    new-instance p4, Lio/netty/handler/codec/http/multipart/MemoryAttribute;

    invoke-direct {p4, p1, p2, p5}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    iput-object p4, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    :try_start_2
    new-instance p3, Lio/netty/handler/codec/http/multipart/MemoryAttribute;

    invoke-direct {p3, p1, p2, p5}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    iput-object p3, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_0
    iput-object p6, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->baseDir:Ljava/lang/String;

    iput-boolean p7, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->deleteOnExit:Z

    return-void

    :catch_2
    move-exception p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public addContent(Lio/netty/buffer/ByteBuf;Z)V
    .locals 7

    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    instance-of v1, v0, Lio/netty/handler/codec/http/multipart/MemoryAttribute;

    if-eqz v1, :cond_1

    :try_start_0
    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/HttpData;->length()J

    move-result-wide v0

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lio/netty/handler/codec/http/multipart/MixedAttribute;->checkSize(J)V

    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/HttpData;->length()J

    move-result-wide v0

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget-wide v2, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->limitSize:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    new-instance v0, Lio/netty/handler/codec/http/multipart/DiskAttribute;

    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v1}, Lio/netty/handler/codec/http/multipart/InterfaceHttpData;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v1}, Lio/netty/handler/codec/http/multipart/HttpData;->definedLength()J

    move-result-wide v3

    iget-object v5, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->baseDir:Ljava/lang/String;

    iget-boolean v6, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->deleteOnExit:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lio/netty/handler/codec/http/multipart/DiskAttribute;-><init>(Ljava/lang/String;JLjava/lang/String;Z)V

    iget-wide v1, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->maxSize:J

    invoke-virtual {v0, v1, v2}, Lio/netty/handler/codec/http/multipart/AbstractHttpData;->setMaxSize(J)V

    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    check-cast v1, Lio/netty/handler/codec/http/multipart/MemoryAttribute;

    invoke-virtual {v1}, Lio/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->getByteBuf()Lio/netty/buffer/ByteBuf;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    check-cast v1, Lio/netty/handler/codec/http/multipart/MemoryAttribute;

    invoke-virtual {v1}, Lio/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->getByteBuf()Lio/netty/buffer/ByteBuf;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lio/netty/handler/codec/http/multipart/DiskAttribute;->addContent(Lio/netty/buffer/ByteBuf;Z)V

    :cond_0
    iput-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-interface {p1}, Lio/netty/util/ReferenceCounted;->release()Z

    throw p2

    :cond_1
    :goto_0
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0, p1, p2}, Lio/netty/handler/codec/http/multipart/HttpData;->addContent(Lio/netty/buffer/ByteBuf;Z)V

    return-void
.end method

.method public checkSize(J)V
    .locals 4

    iget-wide v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->maxSize:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    cmp-long p1, p1, v0

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Size exceed allowed maximum capacity"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public compareTo(Lio/netty/handler/codec/http/multipart/InterfaceHttpData;)I
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lio/netty/handler/codec/http/multipart/InterfaceHttpData;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/MixedAttribute;->compareTo(Lio/netty/handler/codec/http/multipart/InterfaceHttpData;)I

    move-result p1

    return p1
.end method

.method public content()Lio/netty/buffer/ByteBuf;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0}, Lio/netty/buffer/ByteBufHolder;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MixedAttribute;->copy()Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lio/netty/handler/codec/http/multipart/Attribute;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/Attribute;->copy()Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lio/netty/handler/codec/http/multipart/HttpData;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MixedAttribute;->copy()Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public definedLength()J
    .locals 2

    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/HttpData;->definedLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public delete()V
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/HttpData;->delete()V

    return-void
.end method

.method public bridge synthetic duplicate()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MixedAttribute;->duplicate()Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public duplicate()Lio/netty/handler/codec/http/multipart/Attribute;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/Attribute;->duplicate()Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic duplicate()Lio/netty/handler/codec/http/multipart/HttpData;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MixedAttribute;->duplicate()Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public get()[B
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/HttpData;->get()[B

    move-result-object v0

    return-object v0
.end method

.method public getByteBuf()Lio/netty/buffer/ByteBuf;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/HttpData;->getByteBuf()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public getCharset()Ljava/nio/charset/Charset;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/HttpData;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    return-object v0
.end method

.method public getChunk(I)Lio/netty/buffer/ByteBuf;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0, p1}, Lio/netty/handler/codec/http/multipart/HttpData;->getChunk(I)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/HttpData;->getFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getHttpDataType()Lio/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/InterfaceHttpData;->getHttpDataType()Lio/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;

    move-result-object v0

    return-object v0
.end method

.method public getMaxSize()J
    .locals 2

    iget-wide v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->maxSize:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/InterfaceHttpData;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/HttpData;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0, p1}, Lio/netty/handler/codec/http/multipart/HttpData;->getString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/Attribute;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isCompleted()Z
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/HttpData;->isCompleted()Z

    move-result v0

    return v0
.end method

.method public isInMemory()Z
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/HttpData;->isInMemory()Z

    move-result v0

    return v0
.end method

.method public length()J
    .locals 2

    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/HttpData;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public refCnt()I
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0}, Lio/netty/util/ReferenceCounted;->refCnt()I

    move-result v0

    return v0
.end method

.method public release()Z
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0}, Lio/netty/util/ReferenceCounted;->release()Z

    move-result v0

    return v0
.end method

.method public release(I)Z
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0, p1}, Lio/netty/util/ReferenceCounted;->release(I)Z

    move-result p1

    return p1
.end method

.method public renameTo(Ljava/io/File;)Z
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0, p1}, Lio/netty/handler/codec/http/multipart/HttpData;->renameTo(Ljava/io/File;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic replace(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBufHolder;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/MixedAttribute;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object p1

    return-object p1
.end method

.method public replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/multipart/Attribute;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0, p1}, Lio/netty/handler/codec/http/multipart/Attribute;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/multipart/HttpData;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/MixedAttribute;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic retain()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MixedAttribute;->retain()Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/buffer/ByteBufHolder;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/MixedAttribute;->retain(I)Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object p1

    return-object p1
.end method

.method public retain()Lio/netty/handler/codec/http/multipart/Attribute;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/Attribute;->retain()Lio/netty/handler/codec/http/multipart/Attribute;

    return-object p0
.end method

.method public retain(I)Lio/netty/handler/codec/http/multipart/Attribute;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0, p1}, Lio/netty/handler/codec/http/multipart/Attribute;->retain(I)Lio/netty/handler/codec/http/multipart/Attribute;

    return-object p0
.end method

.method public bridge synthetic retain()Lio/netty/handler/codec/http/multipart/HttpData;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MixedAttribute;->retain()Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/handler/codec/http/multipart/HttpData;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/MixedAttribute;->retain(I)Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic retain()Lio/netty/handler/codec/http/multipart/InterfaceHttpData;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MixedAttribute;->retain()Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/handler/codec/http/multipart/InterfaceHttpData;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/MixedAttribute;->retain(I)Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic retain()Lio/netty/util/ReferenceCounted;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MixedAttribute;->retain()Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/util/ReferenceCounted;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/MixedAttribute;->retain(I)Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic retainedDuplicate()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MixedAttribute;->retainedDuplicate()Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public retainedDuplicate()Lio/netty/handler/codec/http/multipart/Attribute;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/Attribute;->retainedDuplicate()Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retainedDuplicate()Lio/netty/handler/codec/http/multipart/HttpData;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MixedAttribute;->retainedDuplicate()Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public setCharset(Ljava/nio/charset/Charset;)V
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0, p1}, Lio/netty/handler/codec/http/multipart/HttpData;->setCharset(Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public setContent(Lio/netty/buffer/ByteBuf;)V
    .locals 7

    :try_start_0
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lio/netty/handler/codec/http/multipart/MixedAttribute;->checkSize(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->limitSize:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    instance-of v0, v0, Lio/netty/handler/codec/http/multipart/MemoryAttribute;

    if-eqz v0, :cond_0

    new-instance v0, Lio/netty/handler/codec/http/multipart/DiskAttribute;

    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v1}, Lio/netty/handler/codec/http/multipart/InterfaceHttpData;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v1}, Lio/netty/handler/codec/http/multipart/HttpData;->definedLength()J

    move-result-wide v3

    iget-object v5, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->baseDir:Ljava/lang/String;

    iget-boolean v6, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->deleteOnExit:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lio/netty/handler/codec/http/multipart/DiskAttribute;-><init>(Ljava/lang/String;JLjava/lang/String;Z)V

    iput-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    iget-wide v1, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->maxSize:J

    invoke-interface {v0, v1, v2}, Lio/netty/handler/codec/http/multipart/HttpData;->setMaxSize(J)V

    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0, p1}, Lio/netty/handler/codec/http/multipart/HttpData;->setContent(Lio/netty/buffer/ByteBuf;)V

    return-void

    :catch_0
    move-exception v0

    invoke-interface {p1}, Lio/netty/util/ReferenceCounted;->release()Z

    throw v0
.end method

.method public setContent(Ljava/io/File;)V
    .locals 7

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/netty/handler/codec/http/multipart/MixedAttribute;->checkSize(J)V

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    iget-wide v2, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->limitSize:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    instance-of v0, v0, Lio/netty/handler/codec/http/multipart/MemoryAttribute;

    if-eqz v0, :cond_0

    new-instance v0, Lio/netty/handler/codec/http/multipart/DiskAttribute;

    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v1}, Lio/netty/handler/codec/http/multipart/InterfaceHttpData;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v1}, Lio/netty/handler/codec/http/multipart/HttpData;->definedLength()J

    move-result-wide v3

    iget-object v5, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->baseDir:Ljava/lang/String;

    iget-boolean v6, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->deleteOnExit:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lio/netty/handler/codec/http/multipart/DiskAttribute;-><init>(Ljava/lang/String;JLjava/lang/String;Z)V

    iput-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    iget-wide v1, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->maxSize:J

    invoke-interface {v0, v1, v2}, Lio/netty/handler/codec/http/multipart/HttpData;->setMaxSize(J)V

    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0, p1}, Lio/netty/handler/codec/http/multipart/HttpData;->setContent(Ljava/io/File;)V

    return-void
.end method

.method public setContent(Ljava/io/InputStream;)V
    .locals 7

    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    instance-of v0, v0, Lio/netty/handler/codec/http/multipart/MemoryAttribute;

    if-eqz v0, :cond_0

    new-instance v0, Lio/netty/handler/codec/http/multipart/DiskAttribute;

    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v1}, Lio/netty/handler/codec/http/multipart/InterfaceHttpData;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v1}, Lio/netty/handler/codec/http/multipart/HttpData;->definedLength()J

    move-result-wide v3

    iget-object v5, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->baseDir:Ljava/lang/String;

    iget-boolean v6, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->deleteOnExit:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lio/netty/handler/codec/http/multipart/DiskAttribute;-><init>(Ljava/lang/String;JLjava/lang/String;Z)V

    iput-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    iget-wide v1, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->maxSize:J

    invoke-interface {v0, v1, v2}, Lio/netty/handler/codec/http/multipart/HttpData;->setMaxSize(J)V

    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0, p1}, Lio/netty/handler/codec/http/multipart/HttpData;->setContent(Ljava/io/InputStream;)V

    return-void
.end method

.method public setMaxSize(J)V
    .locals 1

    iput-wide p1, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->maxSize:J

    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0, p1, p2}, Lio/netty/handler/codec/http/multipart/HttpData;->setMaxSize(J)V

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0, p1}, Lio/netty/handler/codec/http/multipart/Attribute;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mixed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MixedAttribute;->touch()Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/buffer/ByteBufHolder;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/MixedAttribute;->touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object p1

    return-object p1
.end method

.method public touch()Lio/netty/handler/codec/http/multipart/Attribute;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/Attribute;->touch()Lio/netty/handler/codec/http/multipart/Attribute;

    return-object p0
.end method

.method public touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/multipart/Attribute;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0, p1}, Lio/netty/handler/codec/http/multipart/Attribute;->touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/multipart/Attribute;

    return-object p0
.end method

.method public bridge synthetic touch()Lio/netty/handler/codec/http/multipart/HttpData;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MixedAttribute;->touch()Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/multipart/HttpData;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/MixedAttribute;->touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic touch()Lio/netty/handler/codec/http/multipart/InterfaceHttpData;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MixedAttribute;->touch()Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/multipart/InterfaceHttpData;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/MixedAttribute;->touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic touch()Lio/netty/util/ReferenceCounted;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MixedAttribute;->touch()Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/util/ReferenceCounted;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/MixedAttribute;->touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object p1

    return-object p1
.end method
