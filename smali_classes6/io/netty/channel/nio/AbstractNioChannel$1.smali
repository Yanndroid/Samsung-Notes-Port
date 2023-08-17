.class Lio/netty/channel/nio/AbstractNioChannel$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/nio/AbstractNioChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/netty/channel/nio/AbstractNioChannel;


# direct methods
.method public constructor <init>(Lio/netty/channel/nio/AbstractNioChannel;)V
    .locals 0

    iput-object p1, p0, Lio/netty/channel/nio/AbstractNioChannel$1;->this$0:Lio/netty/channel/nio/AbstractNioChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lio/netty/channel/nio/AbstractNioChannel$1;->this$0:Lio/netty/channel/nio/AbstractNioChannel;

    invoke-static {v0}, Lio/netty/channel/nio/AbstractNioChannel;->access$000(Lio/netty/channel/nio/AbstractNioChannel;)V

    return-void
.end method
