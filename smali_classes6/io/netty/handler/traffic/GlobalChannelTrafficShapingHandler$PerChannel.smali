.class final Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PerChannel"
.end annotation


# instance fields
.field public channelTrafficCounter:Lio/netty/handler/traffic/TrafficCounter;

.field public lastReadTimestamp:J

.field public lastWriteTimestamp:J

.field public messagesQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$ToSend;",
            ">;"
        }
    .end annotation
.end field

.field public queueSize:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
