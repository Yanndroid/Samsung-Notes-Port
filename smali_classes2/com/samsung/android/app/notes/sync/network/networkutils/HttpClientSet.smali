.class public Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:Lorg/apache/http/client/config/RequestConfig;

.field public static final e:Lorg/apache/http/config/ConnectionConfig;

.field public static final f:Lorg/apache/http/config/SocketConfig;

.field public static final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;",
            ">;"
        }
    .end annotation
.end field

.field public static final h:Landroid/os/Handler;


# instance fields
.field public a:Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;

.field public b:Lorg/apache/http/impl/client/CloseableHttpClient;

.field public c:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;->g:Ljava/util/List;

    new-instance v0, Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet$1;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;->h:Landroid/os/Handler;

    invoke-static {}, Lorg/apache/http/config/ConnectionConfig;->custom()Lorg/apache/http/config/ConnectionConfig$Builder;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/config/ConnectionConfig$Builder;->setCharset(Ljava/nio/charset/Charset;)Lorg/apache/http/config/ConnectionConfig$Builder;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Lorg/apache/http/config/ConnectionConfig$Builder;->setBufferSize(I)Lorg/apache/http/config/ConnectionConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/config/ConnectionConfig$Builder;->build()Lorg/apache/http/config/ConnectionConfig;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;->e:Lorg/apache/http/config/ConnectionConfig;

    invoke-static {}, Lorg/apache/http/config/SocketConfig;->custom()Lorg/apache/http/config/SocketConfig$Builder;

    move-result-object v0

    const v1, 0x1d4c0

    invoke-virtual {v0, v1}, Lorg/apache/http/config/SocketConfig$Builder;->setSoTimeout(I)Lorg/apache/http/config/SocketConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/config/SocketConfig$Builder;->build()Lorg/apache/http/config/SocketConfig;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;->f:Lorg/apache/http/config/SocketConfig;

    invoke-static {}, Lorg/apache/http/client/config/RequestConfig;->custom()Lorg/apache/http/client/config/RequestConfig$Builder;

    move-result-object v0

    const/16 v2, 0x7148

    invoke-virtual {v0, v2}, Lorg/apache/http/client/config/RequestConfig$Builder;->setConnectionRequestTimeout(I)Lorg/apache/http/client/config/RequestConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/apache/http/client/config/RequestConfig$Builder;->setConnectTimeout(I)Lorg/apache/http/client/config/RequestConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/apache/http/client/config/RequestConfig$Builder;->setSocketTimeout(I)Lorg/apache/http/client/config/RequestConfig$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/http/client/config/RequestConfig$Builder;->setExpectContinueEnabled(Z)Lorg/apache/http/client/config/RequestConfig$Builder;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/apache/http/client/config/RequestConfig$Builder;->setStaleConnectionCheckEnabled(Z)Lorg/apache/http/client/config/RequestConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/apache/http/client/config/RequestConfig$Builder;->setRedirectsEnabled(Z)Lorg/apache/http/client/config/RequestConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/client/config/RequestConfig$Builder;->build()Lorg/apache/http/client/config/RequestConfig;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;->d:Lorg/apache/http/client/config/RequestConfig;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;->c:I

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;->l()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;)Lorg/apache/http/impl/client/CloseableHttpClient;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;->b:Lorg/apache/http/impl/client/CloseableHttpClient;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;->c:I

    return p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;->a:Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;

    return-void
.end method

.method public static bridge synthetic d(Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;Lorg/apache/http/impl/client/CloseableHttpClient;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;->b:Lorg/apache/http/impl/client/CloseableHttpClient;

    return-void
.end method

.method public static bridge synthetic e(Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;->c:I

    return-void
.end method

.method public static bridge synthetic f()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;->g:Ljava/util/List;

    return-object v0
.end method

.method public static k()Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;
    .locals 7

    sget-object v0, Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;->g:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;

    iget v4, v2, Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;->c:I

    if-eq v4, v3, :cond_1

    if-nez v4, :cond_0

    :cond_1
    const-string v1, "HttpClientSet"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HttpClient "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " will be reused.. total : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;->g:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->s(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_3

    new-instance v2, Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;

    invoke-direct {v2}, Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;-><init>()V

    sget-object v1, Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;->g:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "HttpClientSet"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HttpClient created.. total : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->s(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget v1, v2, Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;->c:I

    if-ne v1, v3, :cond_4

    invoke-virtual {v2}, Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;->l()V

    :cond_4
    iget v1, v2, Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v2, Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;->c:I

    const-string v1, "HttpClientSet"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HttpClientSet getConnectionSet - set : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", requestCnt : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;->c:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", total : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;->g:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v2

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;->i(Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public g()V
    .locals 3

    const-string v0, "HttpClientSet"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clear called : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", cnt : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;->c:I

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    const-string v1, "HTTP_CLIENT_CLEAR"

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet$a;

    invoke-direct {v1, p0, p0}, Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet$a;-><init>(Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public h()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;->c:I

    const-string v0, "HttpClientSet"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HttpClientSet close timer set - set : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", requestCnt : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;->a:Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->closeExpiredConnections()V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;->hashCode()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v2, Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;->h:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/os/Message;->what:I

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    const-string v1, "HttpClientSet"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remove previous msg : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", cnt : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;->c:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", msg : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->s(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-wide/32 v3, 0x1d4c0

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const-string v1, "HttpClientSet"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send msg : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", cnt : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", msg : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->s(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hashCode()I
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i(Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;->c:I

    iget p1, p1, Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;->c:I

    invoke-static {v0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method

.method public j(Lorg/apache/http/client/methods/HttpRequestBaseHC4;)Lorg/apache/http/client/methods/CloseableHttpResponse;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;->d:Lorg/apache/http/client/config/RequestConfig;

    invoke-virtual {p1, v0}, Lorg/apache/http/client/methods/HttpRequestBaseHC4;->setConfig(Lorg/apache/http/client/config/RequestConfig;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;->b:Lorg/apache/http/impl/client/CloseableHttpClient;

    invoke-virtual {v0, p1}, Lorg/apache/http/impl/client/CloseableHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/client/methods/CloseableHttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public l()V
    .locals 2

    new-instance v0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;

    invoke-direct {v0}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;->a:Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;

    sget-object v1, Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;->e:Lorg/apache/http/config/ConnectionConfig;

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->setDefaultConnectionConfig(Lorg/apache/http/config/ConnectionConfig;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;->a:Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;

    sget-object v1, Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;->f:Lorg/apache/http/config/SocketConfig;

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->setDefaultSocketConfig(Lorg/apache/http/config/SocketConfig;)V

    invoke-static {}, Lorg/apache/http/impl/client/HttpClients;->custom()Lorg/apache/http/impl/client/HttpClientBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;->a:Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/HttpClientBuilder;->setConnectionManager(Lorg/apache/http/conn/HttpClientConnectionManager;)Lorg/apache/http/impl/client/HttpClientBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;->d:Lorg/apache/http/client/config/RequestConfig;

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/HttpClientBuilder;->setDefaultRequestConfig(Lorg/apache/http/client/config/RequestConfig;)Lorg/apache/http/impl/client/HttpClientBuilder;

    move-result-object v0

    invoke-static {}, Lc3/l;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/HttpClientBuilder;->setUserAgent(Ljava/lang/String;)Lorg/apache/http/impl/client/HttpClientBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/impl/client/HttpClientBuilder;->build()Lorg/apache/http/impl/client/CloseableHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;->b:Lorg/apache/http/impl/client/CloseableHttpClient;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/HttpClientSet;->c:I

    return-void
.end method
