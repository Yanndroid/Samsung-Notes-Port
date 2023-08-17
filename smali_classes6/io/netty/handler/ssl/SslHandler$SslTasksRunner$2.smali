.class Lio/netty/handler/ssl/SslHandler$SslTasksRunner$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->runComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lio/netty/handler/ssl/SslHandler$SslTasksRunner;


# direct methods
.method public constructor <init>(Lio/netty/handler/ssl/SslHandler$SslTasksRunner;)V
    .locals 0

    iput-object p1, p0, Lio/netty/handler/ssl/SslHandler$SslTasksRunner$2;->this$1:Lio/netty/handler/ssl/SslHandler$SslTasksRunner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler$SslTasksRunner$2;->this$1:Lio/netty/handler/ssl/SslHandler$SslTasksRunner;

    invoke-static {v0}, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->access$2000(Lio/netty/handler/ssl/SslHandler$SslTasksRunner;)V

    return-void
.end method
