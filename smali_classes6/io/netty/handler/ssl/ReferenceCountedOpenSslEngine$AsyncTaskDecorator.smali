.class final Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$AsyncTaskDecorator;
.super Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$TaskDecorator;
.source "SourceFile"

# interfaces
.implements Lio/netty/handler/ssl/AsyncRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AsyncTaskDecorator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$TaskDecorator<",
        "Lio/netty/internal/tcnative/AsyncTask;",
        ">;",
        "Lio/netty/handler/ssl/AsyncRunnable;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;


# direct methods
.method public constructor <init>(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;Lio/netty/internal/tcnative/AsyncTask;)V
    .locals 0

    iput-object p1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$AsyncTaskDecorator;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    invoke-direct {p0, p1, p2}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$TaskDecorator;-><init>(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public run(Ljava/lang/Runnable;)V
    .locals 3

    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$AsyncTaskDecorator;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    invoke-static {v0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->access$400(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$TaskDecorator;->task:Ljava/lang/Runnable;

    check-cast v0, Lio/netty/internal/tcnative/AsyncTask;

    new-instance v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$TaskDecorator;

    iget-object v2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$AsyncTaskDecorator;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    invoke-direct {v1, v2, p1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$TaskDecorator;-><init>(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Lio/netty/internal/tcnative/AsyncTask;->runAsync(Ljava/lang/Runnable;)V

    return-void
.end method
