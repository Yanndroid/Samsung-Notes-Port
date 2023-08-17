.class Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor;-><init>(Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;Ljava/util/concurrent/ThreadFactory;JLjava/util/concurrent/TimeUnit;JLjava/util/concurrent/TimeUnit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor;

.field public final synthetic val$connectionManager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor;Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;)V
    .locals 0

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor$1;->this$0:Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor;

    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor$1;->val$connectionManager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :cond_0
    :goto_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor$1;->this$0:Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor;

    invoke-static {v0}, Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor;->access$000(Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor$1;->val$connectionManager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;->closeExpiredConnections()V

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor$1;->this$0:Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor;

    invoke-static {v0}, Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor;->access$100(Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor$1;->val$connectionManager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor$1;->this$0:Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor;

    invoke-static {v1}, Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor;->access$100(Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor;)J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;->closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor$1;->this$0:Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor;

    invoke-static {v1, v0}, Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor;->access$202(Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor;Ljava/lang/Exception;)Ljava/lang/Exception;

    :cond_1
    return-void
.end method
