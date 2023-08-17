.class Lio/netty/channel/ChannelOutboundBuffer$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/channel/ChannelOutboundBuffer;->fireChannelWritabilityChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/netty/channel/ChannelOutboundBuffer;

.field public final synthetic val$pipeline:Lio/netty/channel/ChannelPipeline;


# direct methods
.method public constructor <init>(Lio/netty/channel/ChannelOutboundBuffer;Lio/netty/channel/ChannelPipeline;)V
    .locals 0

    iput-object p1, p0, Lio/netty/channel/ChannelOutboundBuffer$2;->this$0:Lio/netty/channel/ChannelOutboundBuffer;

    iput-object p2, p0, Lio/netty/channel/ChannelOutboundBuffer$2;->val$pipeline:Lio/netty/channel/ChannelPipeline;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lio/netty/channel/ChannelOutboundBuffer$2;->val$pipeline:Lio/netty/channel/ChannelPipeline;

    invoke-interface {v0}, Lio/netty/channel/ChannelPipeline;->fireChannelWritabilityChanged()Lio/netty/channel/ChannelPipeline;

    return-void
.end method
