.class final Lio/netty/channel/AbstractChannelHandlerContext$Tasks;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/AbstractChannelHandlerContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Tasks"
.end annotation


# instance fields
.field private final invokeChannelReadCompleteTask:Ljava/lang/Runnable;

.field private final invokeChannelWritableStateChangedTask:Ljava/lang/Runnable;

.field private final invokeFlushTask:Ljava/lang/Runnable;

.field private final invokeReadTask:Ljava/lang/Runnable;

.field private final next:Lio/netty/channel/AbstractChannelHandlerContext;


# direct methods
.method public constructor <init>(Lio/netty/channel/AbstractChannelHandlerContext;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/netty/channel/AbstractChannelHandlerContext$Tasks$1;

    invoke-direct {v0, p0}, Lio/netty/channel/AbstractChannelHandlerContext$Tasks$1;-><init>(Lio/netty/channel/AbstractChannelHandlerContext$Tasks;)V

    iput-object v0, p0, Lio/netty/channel/AbstractChannelHandlerContext$Tasks;->invokeChannelReadCompleteTask:Ljava/lang/Runnable;

    new-instance v0, Lio/netty/channel/AbstractChannelHandlerContext$Tasks$2;

    invoke-direct {v0, p0}, Lio/netty/channel/AbstractChannelHandlerContext$Tasks$2;-><init>(Lio/netty/channel/AbstractChannelHandlerContext$Tasks;)V

    iput-object v0, p0, Lio/netty/channel/AbstractChannelHandlerContext$Tasks;->invokeReadTask:Ljava/lang/Runnable;

    new-instance v0, Lio/netty/channel/AbstractChannelHandlerContext$Tasks$3;

    invoke-direct {v0, p0}, Lio/netty/channel/AbstractChannelHandlerContext$Tasks$3;-><init>(Lio/netty/channel/AbstractChannelHandlerContext$Tasks;)V

    iput-object v0, p0, Lio/netty/channel/AbstractChannelHandlerContext$Tasks;->invokeChannelWritableStateChangedTask:Ljava/lang/Runnable;

    new-instance v0, Lio/netty/channel/AbstractChannelHandlerContext$Tasks$4;

    invoke-direct {v0, p0}, Lio/netty/channel/AbstractChannelHandlerContext$Tasks$4;-><init>(Lio/netty/channel/AbstractChannelHandlerContext$Tasks;)V

    iput-object v0, p0, Lio/netty/channel/AbstractChannelHandlerContext$Tasks;->invokeFlushTask:Ljava/lang/Runnable;

    iput-object p1, p0, Lio/netty/channel/AbstractChannelHandlerContext$Tasks;->next:Lio/netty/channel/AbstractChannelHandlerContext;

    return-void
.end method

.method public static synthetic access$1400(Lio/netty/channel/AbstractChannelHandlerContext$Tasks;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lio/netty/channel/AbstractChannelHandlerContext$Tasks;->invokeReadTask:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic access$1500(Lio/netty/channel/AbstractChannelHandlerContext$Tasks;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lio/netty/channel/AbstractChannelHandlerContext$Tasks;->invokeFlushTask:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic access$1800(Lio/netty/channel/AbstractChannelHandlerContext$Tasks;)Lio/netty/channel/AbstractChannelHandlerContext;
    .locals 0

    iget-object p0, p0, Lio/netty/channel/AbstractChannelHandlerContext$Tasks;->next:Lio/netty/channel/AbstractChannelHandlerContext;

    return-object p0
.end method

.method public static synthetic access$700(Lio/netty/channel/AbstractChannelHandlerContext$Tasks;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lio/netty/channel/AbstractChannelHandlerContext$Tasks;->invokeChannelReadCompleteTask:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic access$800(Lio/netty/channel/AbstractChannelHandlerContext$Tasks;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lio/netty/channel/AbstractChannelHandlerContext$Tasks;->invokeChannelWritableStateChangedTask:Ljava/lang/Runnable;

    return-object p0
.end method
