.class public interface abstract Lio/netty/channel/pool/ChannelHealthChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACTIVE:Lio/netty/channel/pool/ChannelHealthChecker;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/netty/channel/pool/ChannelHealthChecker$1;

    invoke-direct {v0}, Lio/netty/channel/pool/ChannelHealthChecker$1;-><init>()V

    sput-object v0, Lio/netty/channel/pool/ChannelHealthChecker;->ACTIVE:Lio/netty/channel/pool/ChannelHealthChecker;

    return-void
.end method


# virtual methods
.method public abstract isHealthy(Lio/netty/channel/Channel;)Lio/netty/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/Channel;",
            ")",
            "Lio/netty/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method
