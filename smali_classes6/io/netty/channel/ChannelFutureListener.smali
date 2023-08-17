.class public interface abstract Lio/netty/channel/ChannelFutureListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/util/concurrent/GenericFutureListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/netty/util/concurrent/GenericFutureListener<",
        "Lio/netty/channel/ChannelFuture;",
        ">;"
    }
.end annotation


# static fields
.field public static final CLOSE:Lio/netty/channel/ChannelFutureListener;

.field public static final CLOSE_ON_FAILURE:Lio/netty/channel/ChannelFutureListener;

.field public static final FIRE_EXCEPTION_ON_FAILURE:Lio/netty/channel/ChannelFutureListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/netty/channel/ChannelFutureListener$1;

    invoke-direct {v0}, Lio/netty/channel/ChannelFutureListener$1;-><init>()V

    sput-object v0, Lio/netty/channel/ChannelFutureListener;->CLOSE:Lio/netty/channel/ChannelFutureListener;

    new-instance v0, Lio/netty/channel/ChannelFutureListener$2;

    invoke-direct {v0}, Lio/netty/channel/ChannelFutureListener$2;-><init>()V

    sput-object v0, Lio/netty/channel/ChannelFutureListener;->CLOSE_ON_FAILURE:Lio/netty/channel/ChannelFutureListener;

    new-instance v0, Lio/netty/channel/ChannelFutureListener$3;

    invoke-direct {v0}, Lio/netty/channel/ChannelFutureListener$3;-><init>()V

    sput-object v0, Lio/netty/channel/ChannelFutureListener;->FIRE_EXCEPTION_ON_FAILURE:Lio/netty/channel/ChannelFutureListener;

    return-void
.end method
