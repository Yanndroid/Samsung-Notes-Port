.class abstract Lio/netty/channel/DefaultChannelPipeline$PendingHandlerCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/DefaultChannelPipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PendingHandlerCallback"
.end annotation


# instance fields
.field public final ctx:Lio/netty/channel/AbstractChannelHandlerContext;

.field public next:Lio/netty/channel/DefaultChannelPipeline$PendingHandlerCallback;


# direct methods
.method public constructor <init>(Lio/netty/channel/AbstractChannelHandlerContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/netty/channel/DefaultChannelPipeline$PendingHandlerCallback;->ctx:Lio/netty/channel/AbstractChannelHandlerContext;

    return-void
.end method


# virtual methods
.method public abstract execute()V
.end method
