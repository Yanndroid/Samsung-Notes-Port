.class public Lio/netty/handler/logging/LoggingHandler;
.super Lio/netty/channel/ChannelDuplexHandler;
.source "SourceFile"


# annotations
.annotation runtime Lio/netty/channel/ChannelHandler$Sharable;
.end annotation


# static fields
.field private static final DEFAULT_LEVEL:Lio/netty/handler/logging/LogLevel;


# instance fields
.field private final byteBufFormat:Lio/netty/handler/logging/ByteBufFormat;

.field public final internalLevel:Lio/netty/util/internal/logging/InternalLogLevel;

.field private final level:Lio/netty/handler/logging/LogLevel;

.field public final logger:Lio/netty/util/internal/logging/InternalLogger;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lio/netty/handler/logging/LogLevel;->DEBUG:Lio/netty/handler/logging/LogLevel;

    sput-object v0, Lio/netty/handler/logging/LoggingHandler;->DEFAULT_LEVEL:Lio/netty/handler/logging/LogLevel;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lio/netty/handler/logging/LoggingHandler;->DEFAULT_LEVEL:Lio/netty/handler/logging/LogLevel;

    invoke-direct {p0, v0}, Lio/netty/handler/logging/LoggingHandler;-><init>(Lio/netty/handler/logging/LogLevel;)V

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/logging/ByteBufFormat;)V
    .locals 1

    sget-object v0, Lio/netty/handler/logging/LoggingHandler;->DEFAULT_LEVEL:Lio/netty/handler/logging/LogLevel;

    invoke-direct {p0, v0, p1}, Lio/netty/handler/logging/LoggingHandler;-><init>(Lio/netty/handler/logging/LogLevel;Lio/netty/handler/logging/ByteBufFormat;)V

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/logging/LogLevel;)V
    .locals 1

    sget-object v0, Lio/netty/handler/logging/ByteBufFormat;->HEX_DUMP:Lio/netty/handler/logging/ByteBufFormat;

    invoke-direct {p0, p1, v0}, Lio/netty/handler/logging/LoggingHandler;-><init>(Lio/netty/handler/logging/LogLevel;Lio/netty/handler/logging/ByteBufFormat;)V

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/logging/LogLevel;Lio/netty/handler/logging/ByteBufFormat;)V
    .locals 1

    invoke-direct {p0}, Lio/netty/channel/ChannelDuplexHandler;-><init>()V

    const-string v0, "level"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/logging/LogLevel;

    iput-object v0, p0, Lio/netty/handler/logging/LoggingHandler;->level:Lio/netty/handler/logging/LogLevel;

    const-string v0, "byteBufFormat"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/netty/handler/logging/ByteBufFormat;

    iput-object p2, p0, Lio/netty/handler/logging/LoggingHandler;->byteBufFormat:Lio/netty/handler/logging/ByteBufFormat;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p2}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object p2

    iput-object p2, p0, Lio/netty/handler/logging/LoggingHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-virtual {p1}, Lio/netty/handler/logging/LogLevel;->toInternalLevel()Lio/netty/util/internal/logging/InternalLogLevel;

    move-result-object p1

    iput-object p1, p0, Lio/netty/handler/logging/LoggingHandler;->internalLevel:Lio/netty/util/internal/logging/InternalLogLevel;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    sget-object v0, Lio/netty/handler/logging/LoggingHandler;->DEFAULT_LEVEL:Lio/netty/handler/logging/LogLevel;

    invoke-direct {p0, p1, v0}, Lio/netty/handler/logging/LoggingHandler;-><init>(Ljava/lang/Class;Lio/netty/handler/logging/LogLevel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lio/netty/handler/logging/LogLevel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lio/netty/handler/logging/LogLevel;",
            ")V"
        }
    .end annotation

    sget-object v0, Lio/netty/handler/logging/ByteBufFormat;->HEX_DUMP:Lio/netty/handler/logging/ByteBufFormat;

    invoke-direct {p0, p1, p2, v0}, Lio/netty/handler/logging/LoggingHandler;-><init>(Ljava/lang/Class;Lio/netty/handler/logging/LogLevel;Lio/netty/handler/logging/ByteBufFormat;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lio/netty/handler/logging/LogLevel;Lio/netty/handler/logging/ByteBufFormat;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lio/netty/handler/logging/LogLevel;",
            "Lio/netty/handler/logging/ByteBufFormat;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lio/netty/channel/ChannelDuplexHandler;-><init>()V

    const-string v0, "clazz"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "level"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/logging/LogLevel;

    iput-object v0, p0, Lio/netty/handler/logging/LoggingHandler;->level:Lio/netty/handler/logging/LogLevel;

    const-string v0, "byteBufFormat"

    invoke-static {p3, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/netty/handler/logging/ByteBufFormat;

    iput-object p3, p0, Lio/netty/handler/logging/LoggingHandler;->byteBufFormat:Lio/netty/handler/logging/ByteBufFormat;

    invoke-static {p1}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object p1

    iput-object p1, p0, Lio/netty/handler/logging/LoggingHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-virtual {p2}, Lio/netty/handler/logging/LogLevel;->toInternalLevel()Lio/netty/util/internal/logging/InternalLogLevel;

    move-result-object p1

    iput-object p1, p0, Lio/netty/handler/logging/LoggingHandler;->internalLevel:Lio/netty/util/internal/logging/InternalLogLevel;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lio/netty/handler/logging/LoggingHandler;->DEFAULT_LEVEL:Lio/netty/handler/logging/LogLevel;

    invoke-direct {p0, p1, v0}, Lio/netty/handler/logging/LoggingHandler;-><init>(Ljava/lang/String;Lio/netty/handler/logging/LogLevel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lio/netty/handler/logging/LogLevel;)V
    .locals 1

    sget-object v0, Lio/netty/handler/logging/ByteBufFormat;->HEX_DUMP:Lio/netty/handler/logging/ByteBufFormat;

    invoke-direct {p0, p1, p2, v0}, Lio/netty/handler/logging/LoggingHandler;-><init>(Ljava/lang/String;Lio/netty/handler/logging/LogLevel;Lio/netty/handler/logging/ByteBufFormat;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lio/netty/handler/logging/LogLevel;Lio/netty/handler/logging/ByteBufFormat;)V
    .locals 1

    invoke-direct {p0}, Lio/netty/channel/ChannelDuplexHandler;-><init>()V

    const-string v0, "name"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "level"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/logging/LogLevel;

    iput-object v0, p0, Lio/netty/handler/logging/LoggingHandler;->level:Lio/netty/handler/logging/LogLevel;

    const-string v0, "byteBufFormat"

    invoke-static {p3, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/netty/handler/logging/ByteBufFormat;

    iput-object p3, p0, Lio/netty/handler/logging/LoggingHandler;->byteBufFormat:Lio/netty/handler/logging/ByteBufFormat;

    invoke-static {p1}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/String;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object p1

    iput-object p1, p0, Lio/netty/handler/logging/LoggingHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-virtual {p2}, Lio/netty/handler/logging/LogLevel;->toInternalLevel()Lio/netty/util/internal/logging/InternalLogLevel;

    move-result-object p1

    iput-object p1, p0, Lio/netty/handler/logging/LoggingHandler;->internalLevel:Lio/netty/util/internal/logging/InternalLogLevel;

    return-void
.end method

.method private formatByteBuf(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;Lio/netty/buffer/ByteBuf;)Ljava/lang/String;
    .locals 7

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    const/16 v1, 0x20

    const/4 v2, 0x1

    if-nez v0, :cond_0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x4

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": 0B"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0xa

    add-int/2addr v3, v2

    iget-object v4, p0, Lio/netty/handler/logging/LoggingHandler;->byteBufFormat:Lio/netty/handler/logging/ByteBufFormat;

    sget-object v5, Lio/netty/handler/logging/ByteBufFormat;->HEX_DUMP:Lio/netty/handler/logging/ByteBufFormat;

    if-ne v4, v5, :cond_2

    div-int/lit8 v4, v0, 0x10

    rem-int/lit8 v6, v0, 0xf

    if-nez v6, :cond_1

    const/4 v2, 0x0

    :cond_1
    add-int/2addr v4, v2

    add-int/lit8 v4, v4, 0x4

    mul-int/lit8 v4, v4, 0x50

    add-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x42

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lio/netty/handler/logging/LoggingHandler;->byteBufFormat:Lio/netty/handler/logging/ByteBufFormat;

    if-ne p1, v5, :cond_3

    sget-object p1, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, p3}, Lio/netty/buffer/ByteBufUtil;->appendPrettyHexDump(Ljava/lang/StringBuilder;Lio/netty/buffer/ByteBuf;)V

    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private formatByteBufHolder(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;Lio/netty/buffer/ByteBufHolder;)Ljava/lang/String;
    .locals 9

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3}, Lio/netty/buffer/ByteBufHolder;->content()Lio/netty/buffer/ByteBuf;

    move-result-object p3

    invoke-virtual {p3}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    const-string v2, ", "

    const/16 v3, 0x20

    const/4 v4, 0x1

    if-nez v1, :cond_0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v1, v4

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v1, v4

    add-int/lit8 v1, v1, 0x4

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", 0B"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0xa

    add-int/2addr v5, v4

    iget-object v6, p0, Lio/netty/handler/logging/LoggingHandler;->byteBufFormat:Lio/netty/handler/logging/ByteBufFormat;

    sget-object v7, Lio/netty/handler/logging/ByteBufFormat;->HEX_DUMP:Lio/netty/handler/logging/ByteBufFormat;

    if-ne v6, v7, :cond_2

    div-int/lit8 v6, v1, 0x10

    rem-int/lit8 v8, v1, 0xf

    if-nez v8, :cond_1

    const/4 v4, 0x0

    :cond_1
    add-int/2addr v6, v4

    add-int/lit8 v6, v6, 0x4

    mul-int/lit8 v6, v6, 0x50

    add-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x42

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lio/netty/handler/logging/LoggingHandler;->byteBufFormat:Lio/netty/handler/logging/ByteBufFormat;

    if-ne p1, v7, :cond_3

    sget-object p1, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, p3}, Lio/netty/buffer/ByteBufUtil;->appendPrettyHexDump(Ljava/lang/StringBuilder;Lio/netty/buffer/ByteBuf;)V

    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static formatSimple(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    invoke-interface {p0}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x20

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bind(Lio/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
    .locals 3

    iget-object v0, p0, Lio/netty/handler/logging/LoggingHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v1, p0, Lio/netty/handler/logging/LoggingHandler;->internalLevel:Lio/netty/util/internal/logging/InternalLogLevel;

    invoke-interface {v0, v1}, Lio/netty/util/internal/logging/InternalLogger;->isEnabled(Lio/netty/util/internal/logging/InternalLogLevel;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/netty/handler/logging/LoggingHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v1, p0, Lio/netty/handler/logging/LoggingHandler;->internalLevel:Lio/netty/util/internal/logging/InternalLogLevel;

    const-string v2, "BIND"

    invoke-virtual {p0, p1, v2, p2}, Lio/netty/handler/logging/LoggingHandler;->format(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lio/netty/util/internal/logging/InternalLogger;->log(Lio/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;)V

    :cond_0
    invoke-interface {p1, p2, p3}, Lio/netty/channel/ChannelOutboundInvoker;->bind(Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    return-void
.end method

.method public byteBufFormat()Lio/netty/handler/logging/ByteBufFormat;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/logging/LoggingHandler;->byteBufFormat:Lio/netty/handler/logging/ByteBufFormat;

    return-object v0
.end method

.method public channelActive(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 3

    iget-object v0, p0, Lio/netty/handler/logging/LoggingHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v1, p0, Lio/netty/handler/logging/LoggingHandler;->internalLevel:Lio/netty/util/internal/logging/InternalLogLevel;

    invoke-interface {v0, v1}, Lio/netty/util/internal/logging/InternalLogger;->isEnabled(Lio/netty/util/internal/logging/InternalLogLevel;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/netty/handler/logging/LoggingHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v1, p0, Lio/netty/handler/logging/LoggingHandler;->internalLevel:Lio/netty/util/internal/logging/InternalLogLevel;

    const-string v2, "ACTIVE"

    invoke-virtual {p0, p1, v2}, Lio/netty/handler/logging/LoggingHandler;->format(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lio/netty/util/internal/logging/InternalLogger;->log(Lio/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;)V

    :cond_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelActive()Lio/netty/channel/ChannelHandlerContext;

    return-void
.end method

.method public channelInactive(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 3

    iget-object v0, p0, Lio/netty/handler/logging/LoggingHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v1, p0, Lio/netty/handler/logging/LoggingHandler;->internalLevel:Lio/netty/util/internal/logging/InternalLogLevel;

    invoke-interface {v0, v1}, Lio/netty/util/internal/logging/InternalLogger;->isEnabled(Lio/netty/util/internal/logging/InternalLogLevel;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/netty/handler/logging/LoggingHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v1, p0, Lio/netty/handler/logging/LoggingHandler;->internalLevel:Lio/netty/util/internal/logging/InternalLogLevel;

    const-string v2, "INACTIVE"

    invoke-virtual {p0, p1, v2}, Lio/netty/handler/logging/LoggingHandler;->format(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lio/netty/util/internal/logging/InternalLogger;->log(Lio/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;)V

    :cond_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelInactive()Lio/netty/channel/ChannelHandlerContext;

    return-void
.end method

.method public channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lio/netty/handler/logging/LoggingHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v1, p0, Lio/netty/handler/logging/LoggingHandler;->internalLevel:Lio/netty/util/internal/logging/InternalLogLevel;

    invoke-interface {v0, v1}, Lio/netty/util/internal/logging/InternalLogger;->isEnabled(Lio/netty/util/internal/logging/InternalLogLevel;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/netty/handler/logging/LoggingHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v1, p0, Lio/netty/handler/logging/LoggingHandler;->internalLevel:Lio/netty/util/internal/logging/InternalLogLevel;

    const-string v2, "READ"

    invoke-virtual {p0, p1, v2, p2}, Lio/netty/handler/logging/LoggingHandler;->format(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lio/netty/util/internal/logging/InternalLogger;->log(Lio/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;)V

    :cond_0
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    return-void
.end method

.method public channelReadComplete(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 3

    iget-object v0, p0, Lio/netty/handler/logging/LoggingHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v1, p0, Lio/netty/handler/logging/LoggingHandler;->internalLevel:Lio/netty/util/internal/logging/InternalLogLevel;

    invoke-interface {v0, v1}, Lio/netty/util/internal/logging/InternalLogger;->isEnabled(Lio/netty/util/internal/logging/InternalLogLevel;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/netty/handler/logging/LoggingHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v1, p0, Lio/netty/handler/logging/LoggingHandler;->internalLevel:Lio/netty/util/internal/logging/InternalLogLevel;

    const-string v2, "READ COMPLETE"

    invoke-virtual {p0, p1, v2}, Lio/netty/handler/logging/LoggingHandler;->format(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lio/netty/util/internal/logging/InternalLogger;->log(Lio/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;)V

    :cond_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelReadComplete()Lio/netty/channel/ChannelHandlerContext;

    return-void
.end method

.method public channelRegistered(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 3

    iget-object v0, p0, Lio/netty/handler/logging/LoggingHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v1, p0, Lio/netty/handler/logging/LoggingHandler;->internalLevel:Lio/netty/util/internal/logging/InternalLogLevel;

    invoke-interface {v0, v1}, Lio/netty/util/internal/logging/InternalLogger;->isEnabled(Lio/netty/util/internal/logging/InternalLogLevel;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/netty/handler/logging/LoggingHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v1, p0, Lio/netty/handler/logging/LoggingHandler;->internalLevel:Lio/netty/util/internal/logging/InternalLogLevel;

    const-string v2, "REGISTERED"

    invoke-virtual {p0, p1, v2}, Lio/netty/handler/logging/LoggingHandler;->format(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lio/netty/util/internal/logging/InternalLogger;->log(Lio/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;)V

    :cond_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRegistered()Lio/netty/channel/ChannelHandlerContext;

    return-void
.end method

.method public channelUnregistered(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 3

    iget-object v0, p0, Lio/netty/handler/logging/LoggingHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v1, p0, Lio/netty/handler/logging/LoggingHandler;->internalLevel:Lio/netty/util/internal/logging/InternalLogLevel;

    invoke-interface {v0, v1}, Lio/netty/util/internal/logging/InternalLogger;->isEnabled(Lio/netty/util/internal/logging/InternalLogLevel;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/netty/handler/logging/LoggingHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v1, p0, Lio/netty/handler/logging/LoggingHandler;->internalLevel:Lio/netty/util/internal/logging/InternalLogLevel;

    const-string v2, "UNREGISTERED"

    invoke-virtual {p0, p1, v2}, Lio/netty/handler/logging/LoggingHandler;->format(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lio/netty/util/internal/logging/InternalLogger;->log(Lio/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;)V

    :cond_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelUnregistered()Lio/netty/channel/ChannelHandlerContext;

    return-void
.end method

.method public channelWritabilityChanged(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 3

    iget-object v0, p0, Lio/netty/handler/logging/LoggingHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v1, p0, Lio/netty/handler/logging/LoggingHandler;->internalLevel:Lio/netty/util/internal/logging/InternalLogLevel;

    invoke-interface {v0, v1}, Lio/netty/util/internal/logging/InternalLogger;->isEnabled(Lio/netty/util/internal/logging/InternalLogLevel;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/netty/handler/logging/LoggingHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v1, p0, Lio/netty/handler/logging/LoggingHandler;->internalLevel:Lio/netty/util/internal/logging/InternalLogLevel;

    const-string v2, "WRITABILITY CHANGED"

    invoke-virtual {p0, p1, v2}, Lio/netty/handler/logging/LoggingHandler;->format(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lio/netty/util/internal/logging/InternalLogger;->log(Lio/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;)V

    :cond_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelWritabilityChanged()Lio/netty/channel/ChannelHandlerContext;

    return-void
.end method

.method public close(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 3

    iget-object v0, p0, Lio/netty/handler/logging/LoggingHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v1, p0, Lio/netty/handler/logging/LoggingHandler;->internalLevel:Lio/netty/util/internal/logging/InternalLogLevel;

    invoke-interface {v0, v1}, Lio/netty/util/internal/logging/InternalLogger;->isEnabled(Lio/netty/util/internal/logging/InternalLogLevel;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/netty/handler/logging/LoggingHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v1, p0, Lio/netty/handler/logging/LoggingHandler;->internalLevel:Lio/netty/util/internal/logging/InternalLogLevel;

    const-string v2, "CLOSE"

    invoke-virtual {p0, p1, v2}, Lio/netty/handler/logging/LoggingHandler;->format(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lio/netty/util/internal/logging/InternalLogger;->log(Lio/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;)V

    :cond_0
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelOutboundInvoker;->close(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    return-void
.end method

.method public connect(Lio/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
    .locals 3

    iget-object v0, p0, Lio/netty/handler/logging/LoggingHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v1, p0, Lio/netty/handler/logging/LoggingHandler;->internalLevel:Lio/netty/util/internal/logging/InternalLogLevel;

    invoke-interface {v0, v1}, Lio/netty/util/internal/logging/InternalLogger;->isEnabled(Lio/netty/util/internal/logging/InternalLogLevel;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/netty/handler/logging/LoggingHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v1, p0, Lio/netty/handler/logging/LoggingHandler;->internalLevel:Lio/netty/util/internal/logging/InternalLogLevel;

    const-string v2, "CONNECT"

    invoke-virtual {p0, p1, v2, p2, p3}, Lio/netty/handler/logging/LoggingHandler;->format(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lio/netty/util/internal/logging/InternalLogger;->log(Lio/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;)V

    :cond_0
    invoke-interface {p1, p2, p3, p4}, Lio/netty/channel/ChannelOutboundInvoker;->connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    return-void
.end method

.method public deregister(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 3

    iget-object v0, p0, Lio/netty/handler/logging/LoggingHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v1, p0, Lio/netty/handler/logging/LoggingHandler;->internalLevel:Lio/netty/util/internal/logging/InternalLogLevel;

    invoke-interface {v0, v1}, Lio/netty/util/internal/logging/InternalLogger;->isEnabled(Lio/netty/util/internal/logging/InternalLogLevel;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/netty/handler/logging/LoggingHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v1, p0, Lio/netty/handler/logging/LoggingHandler;->internalLevel:Lio/netty/util/internal/logging/InternalLogLevel;

    const-string v2, "DEREGISTER"

    invoke-virtual {p0, p1, v2}, Lio/netty/handler/logging/LoggingHandler;->format(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lio/netty/util/internal/logging/InternalLogger;->log(Lio/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;)V

    :cond_0
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelOutboundInvoker;->deregister(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    return-void
.end method

.method public disconnect(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 3

    iget-object v0, p0, Lio/netty/handler/logging/LoggingHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v1, p0, Lio/netty/handler/logging/LoggingHandler;->internalLevel:Lio/netty/util/internal/logging/InternalLogLevel;

    invoke-interface {v0, v1}, Lio/netty/util/internal/logging/InternalLogger;->isEnabled(Lio/netty/util/internal/logging/InternalLogLevel;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/netty/handler/logging/LoggingHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v1, p0, Lio/netty/handler/logging/LoggingHandler;->internalLevel:Lio/netty/util/internal/logging/InternalLogLevel;

    const-string v2, "DISCONNECT"

    invoke-virtual {p0, p1, v2}, Lio/netty/handler/logging/LoggingHandler;->format(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lio/netty/util/internal/logging/InternalLogger;->log(Lio/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;)V

    :cond_0
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelOutboundInvoker;->disconnect(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    return-void
.end method

.method public exceptionCaught(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 3

    iget-object v0, p0, Lio/netty/handler/logging/LoggingHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v1, p0, Lio/netty/handler/logging/LoggingHandler;->internalLevel:Lio/netty/util/internal/logging/InternalLogLevel;

    invoke-interface {v0, v1}, Lio/netty/util/internal/logging/InternalLogger;->isEnabled(Lio/netty/util/internal/logging/InternalLogLevel;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/netty/handler/logging/LoggingHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v1, p0, Lio/netty/handler/logging/LoggingHandler;->internalLevel:Lio/netty/util/internal/logging/InternalLogLevel;

    const-string v2, "EXCEPTION"

    invoke-virtual {p0, p1, v2, p2}, Lio/netty/handler/logging/LoggingHandler;->format(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p2}, Lio/netty/util/internal/logging/InternalLogger;->log(Lio/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;

    return-void
.end method

.method public flush(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 3

    iget-object v0, p0, Lio/netty/handler/logging/LoggingHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v1, p0, Lio/netty/handler/logging/LoggingHandler;->internalLevel:Lio/netty/util/internal/logging/InternalLogLevel;

    invoke-interface {v0, v1}, Lio/netty/util/internal/logging/InternalLogger;->isEnabled(Lio/netty/util/internal/logging/InternalLogLevel;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/netty/handler/logging/LoggingHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v1, p0, Lio/netty/handler/logging/LoggingHandler;->internalLevel:Lio/netty/util/internal/logging/InternalLogLevel;

    const-string v2, "FLUSH"

    invoke-virtual {p0, p1, v2}, Lio/netty/handler/logging/LoggingHandler;->format(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lio/netty/util/internal/logging/InternalLogger;->log(Lio/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;)V

    :cond_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->flush()Lio/netty/channel/ChannelHandlerContext;

    return-void
.end method

.method public format(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x20

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public format(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    instance-of v0, p3, Lio/netty/buffer/ByteBuf;

    if-eqz v0, :cond_0

    check-cast p3, Lio/netty/buffer/ByteBuf;

    invoke-direct {p0, p1, p2, p3}, Lio/netty/handler/logging/LoggingHandler;->formatByteBuf(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;Lio/netty/buffer/ByteBuf;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    instance-of v0, p3, Lio/netty/buffer/ByteBufHolder;

    if-eqz v0, :cond_1

    check-cast p3, Lio/netty/buffer/ByteBufHolder;

    invoke-direct {p0, p1, p2, p3}, Lio/netty/handler/logging/LoggingHandler;->formatByteBufHolder(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;Lio/netty/buffer/ByteBufHolder;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {p1, p2, p3}, Lio/netty/handler/logging/LoggingHandler;->formatSimple(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public format(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    if-nez p4, :cond_0

    invoke-static {p1, p2, p3}, Lio/netty/handler/logging/LoggingHandler;->formatSimple(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x20

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public level()Lio/netty/handler/logging/LogLevel;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/logging/LoggingHandler;->level:Lio/netty/handler/logging/LogLevel;

    return-object v0
.end method

.method public userEventTriggered(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lio/netty/handler/logging/LoggingHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v1, p0, Lio/netty/handler/logging/LoggingHandler;->internalLevel:Lio/netty/util/internal/logging/InternalLogLevel;

    invoke-interface {v0, v1}, Lio/netty/util/internal/logging/InternalLogger;->isEnabled(Lio/netty/util/internal/logging/InternalLogLevel;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/netty/handler/logging/LoggingHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v1, p0, Lio/netty/handler/logging/LoggingHandler;->internalLevel:Lio/netty/util/internal/logging/InternalLogLevel;

    const-string v2, "USER_EVENT"

    invoke-virtual {p0, p1, v2, p2}, Lio/netty/handler/logging/LoggingHandler;->format(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lio/netty/util/internal/logging/InternalLogger;->log(Lio/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;)V

    :cond_0
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    return-void
.end method

.method public write(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V
    .locals 3

    iget-object v0, p0, Lio/netty/handler/logging/LoggingHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v1, p0, Lio/netty/handler/logging/LoggingHandler;->internalLevel:Lio/netty/util/internal/logging/InternalLogLevel;

    invoke-interface {v0, v1}, Lio/netty/util/internal/logging/InternalLogger;->isEnabled(Lio/netty/util/internal/logging/InternalLogLevel;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/netty/handler/logging/LoggingHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v1, p0, Lio/netty/handler/logging/LoggingHandler;->internalLevel:Lio/netty/util/internal/logging/InternalLogLevel;

    const-string v2, "WRITE"

    invoke-virtual {p0, p1, v2, p2}, Lio/netty/handler/logging/LoggingHandler;->format(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lio/netty/util/internal/logging/InternalLogger;->log(Lio/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;)V

    :cond_0
    invoke-interface {p1, p2, p3}, Lio/netty/channel/ChannelOutboundInvoker;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    return-void
.end method
