.class Lio/netty/channel/nio/NioEventLoop$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/util/IntSupplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/nio/NioEventLoop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/netty/channel/nio/NioEventLoop;


# direct methods
.method public constructor <init>(Lio/netty/channel/nio/NioEventLoop;)V
    .locals 0

    iput-object p1, p0, Lio/netty/channel/nio/NioEventLoop$1;->this$0:Lio/netty/channel/nio/NioEventLoop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()I
    .locals 1

    iget-object v0, p0, Lio/netty/channel/nio/NioEventLoop$1;->this$0:Lio/netty/channel/nio/NioEventLoop;

    invoke-virtual {v0}, Lio/netty/channel/nio/NioEventLoop;->selectNow()I

    move-result v0

    return v0
.end method
