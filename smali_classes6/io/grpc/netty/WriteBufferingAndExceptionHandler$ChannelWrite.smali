.class final Lio/grpc/netty/WriteBufferingAndExceptionHandler$ChannelWrite;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/WriteBufferingAndExceptionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ChannelWrite"
.end annotation


# instance fields
.field public final msg:Ljava/lang/Object;

.field public final promise:Lio/netty/channel/ChannelPromise;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/grpc/netty/WriteBufferingAndExceptionHandler$ChannelWrite;->msg:Ljava/lang/Object;

    iput-object p2, p0, Lio/grpc/netty/WriteBufferingAndExceptionHandler$ChannelWrite;->promise:Lio/netty/channel/ChannelPromise;

    return-void
.end method
