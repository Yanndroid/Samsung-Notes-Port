.class public Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;

.field public final synthetic b:Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet$a;->b:Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;

    iput-object p2, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet$a;->a:Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "HttpClientSet"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clear thread start : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet$a;->a:Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;

    invoke-virtual {v2}, Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", cnt : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet$a;->a:Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;

    invoke-static {v2}, Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;->b(Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet$a;->a:Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet$a;->a:Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;

    invoke-static {v1}, Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;->b(Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;)I

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet$a;->b:Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;

    invoke-static {v0}, Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;->a(Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;)Lorg/apache/http/impl/client/CloseableHttpClient;

    move-result-object v0

    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "HttpClientSet"

    const-string v2, "HTTP_CLIENT close err : "

    invoke-static {v1, v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet$a;->a:Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;

    monitor-enter v1

    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet$a;->a:Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;->c(Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet$a;->a:Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;

    invoke-static {v0, v2}, Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;->d(Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;Lorg/apache/http/impl/client/CloseableHttpClient;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet$a;->a:Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;

    const/4 v2, -0x1

    invoke-static {v0, v2}, Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;->e(Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;I)V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;->f()Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;->f()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet$a;->a:Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const-string v1, "HttpClientSet"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HttpClientSet closed.. - set : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet$a;->a:Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;

    invoke-virtual {v3}, Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", total : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;->f()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :catchall_2
    move-exception v1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1
.end method
