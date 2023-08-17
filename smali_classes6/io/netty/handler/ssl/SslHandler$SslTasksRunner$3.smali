.class Lio/netty/handler/ssl/SslHandler$SslTasksRunner$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->handleException(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lio/netty/handler/ssl/SslHandler$SslTasksRunner;

.field public final synthetic val$cause:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lio/netty/handler/ssl/SslHandler$SslTasksRunner;Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lio/netty/handler/ssl/SslHandler$SslTasksRunner$3;->this$1:Lio/netty/handler/ssl/SslHandler$SslTasksRunner;

    iput-object p2, p0, Lio/netty/handler/ssl/SslHandler$SslTasksRunner$3;->val$cause:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler$SslTasksRunner$3;->this$1:Lio/netty/handler/ssl/SslHandler$SslTasksRunner;

    iget-object v0, v0, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->this$0:Lio/netty/handler/ssl/SslHandler;

    const/16 v1, 0x80

    invoke-static {v0, v1}, Lio/netty/handler/ssl/SslHandler;->access$1400(Lio/netty/handler/ssl/SslHandler;I)V

    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler$SslTasksRunner$3;->this$1:Lio/netty/handler/ssl/SslHandler$SslTasksRunner;

    iget-object v1, p0, Lio/netty/handler/ssl/SslHandler$SslTasksRunner$3;->val$cause:Ljava/lang/Throwable;

    invoke-static {v0, v1}, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->access$2100(Lio/netty/handler/ssl/SslHandler$SslTasksRunner;Ljava/lang/Throwable;)V

    return-void
.end method
