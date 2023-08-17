.class public final Lio/netty/channel/ChannelMetadata;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final defaultMaxMessagesPerRead:I

.field private final hasDisconnect:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lio/netty/channel/ChannelMetadata;-><init>(ZI)V

    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "defaultMaxMessagesPerRead"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositive(ILjava/lang/String;)I

    iput-boolean p1, p0, Lio/netty/channel/ChannelMetadata;->hasDisconnect:Z

    iput p2, p0, Lio/netty/channel/ChannelMetadata;->defaultMaxMessagesPerRead:I

    return-void
.end method


# virtual methods
.method public defaultMaxMessagesPerRead()I
    .locals 1

    iget v0, p0, Lio/netty/channel/ChannelMetadata;->defaultMaxMessagesPerRead:I

    return v0
.end method

.method public hasDisconnect()Z
    .locals 1

    iget-boolean v0, p0, Lio/netty/channel/ChannelMetadata;->hasDisconnect:Z

    return v0
.end method
