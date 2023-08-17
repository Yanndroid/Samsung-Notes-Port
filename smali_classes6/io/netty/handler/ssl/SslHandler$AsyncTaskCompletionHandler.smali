.class final Lio/netty/handler/ssl/SslHandler$AsyncTaskCompletionHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/ssl/SslHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AsyncTaskCompletionHandler"
.end annotation


# instance fields
.field public didRun:Z

.field private final inUnwrap:Z

.field public resumeLater:Z

.field public final synthetic this$0:Lio/netty/handler/ssl/SslHandler;


# direct methods
.method public constructor <init>(Lio/netty/handler/ssl/SslHandler;Z)V
    .locals 0

    iput-object p1, p0, Lio/netty/handler/ssl/SslHandler$AsyncTaskCompletionHandler;->this$0:Lio/netty/handler/ssl/SslHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lio/netty/handler/ssl/SslHandler$AsyncTaskCompletionHandler;->inUnwrap:Z

    return-void
.end method


# virtual methods
.method public resumeLater()Z
    .locals 1

    iget-boolean v0, p0, Lio/netty/handler/ssl/SslHandler$AsyncTaskCompletionHandler;->didRun:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/ssl/SslHandler$AsyncTaskCompletionHandler;->resumeLater:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public run()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/ssl/SslHandler$AsyncTaskCompletionHandler;->didRun:Z

    iget-boolean v0, p0, Lio/netty/handler/ssl/SslHandler$AsyncTaskCompletionHandler;->resumeLater:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler$AsyncTaskCompletionHandler;->this$0:Lio/netty/handler/ssl/SslHandler;

    iget-boolean v1, p0, Lio/netty/handler/ssl/SslHandler$AsyncTaskCompletionHandler;->inUnwrap:Z

    invoke-static {v0, v1}, Lio/netty/handler/ssl/SslHandler;->access$800(Lio/netty/handler/ssl/SslHandler;Z)Lio/netty/handler/ssl/SslHandler$SslTasksRunner;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->runComplete()V

    :cond_0
    return-void
.end method
