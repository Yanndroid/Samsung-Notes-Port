.class Lio/netty/channel/nio/AbstractNioByteChannel$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/nio/AbstractNioByteChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/netty/channel/nio/AbstractNioByteChannel;


# direct methods
.method public constructor <init>(Lio/netty/channel/nio/AbstractNioByteChannel;)V
    .locals 0

    iput-object p1, p0, Lio/netty/channel/nio/AbstractNioByteChannel$1;->this$0:Lio/netty/channel/nio/AbstractNioByteChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lio/netty/channel/nio/AbstractNioByteChannel$1;->this$0:Lio/netty/channel/nio/AbstractNioByteChannel;

    invoke-virtual {v0}, Lio/netty/channel/nio/AbstractNioChannel;->unsafe()Lio/netty/channel/nio/AbstractNioChannel$NioUnsafe;

    move-result-object v0

    check-cast v0, Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;

    invoke-virtual {v0}, Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;->flush0()V

    return-void
.end method
