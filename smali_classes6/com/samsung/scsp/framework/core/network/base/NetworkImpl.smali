.class public Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/scsp/framework/core/network/Network;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/scsp/framework/core/network/base/NetworkImpl$ConnectionSetter;
    }
.end annotation


# static fields
.field private static final BOUNDARY:Ljava/lang/String; = "boundary"

.field private static final CHARSET:Ljava/lang/String; = "charset"

.field private static final CONTENT_DISPOSITION:Ljava/lang/String; = "Content-Disposition:"

.field private static final CONTENT_ENCODING:Ljava/lang/String; = "Content-Encoding"

.field private static final CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field private static final DELETE:Ljava/lang/String; = "DELETE"

.field private static final GET:Ljava/lang/String; = "GET"

.field private static final GZIP:Ljava/lang/String; = "gzip"

.field private static final HEAD:Ljava/lang/String; = "HEAD"

.field private static final LINE_FEED:Ljava/lang/String; = "\r\n"

.field private static final MULTIPART_PROPERTY:Ljava/lang/String; = "multipart/form-data"

.field private static final PATCH:Ljava/lang/String; = "PATCH"

.field private static final POST:Ljava/lang/String; = "POST"

.field private static final PUT:Ljava/lang/String; = "PUT"

.field private static final REDIRECTED_STATUS_ARRAY:Landroid/util/SparseBooleanArray;

.field private static final RESPONSIBLE_STATUS_ARRAY:Landroid/util/SparseBooleanArray;

.field private static volatile sslContext:Ljavax/net/ssl/SSLContext;

.field private static final visitor:Lcom/samsung/scsp/framework/core/network/visitor/PayloadWriterVisitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/scsp/framework/core/network/visitor/PayloadWriterVisitor<",
            "Ljava/io/OutputStream;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final CLOSING_LOCK:Ljava/lang/Object;

.field private final connectionQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/net/HttpURLConnection;",
            ">;"
        }
    .end annotation
.end field

.field private isClosing:Z

.field private final logger:Lcom/samsung/scsp/error/Logger;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/scsp/framework/core/network/base/PayloadWriterVisitorImpl;

    invoke-direct {v0}, Lcom/samsung/scsp/framework/core/network/base/PayloadWriterVisitorImpl;-><init>()V

    sput-object v0, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->visitor:Lcom/samsung/scsp/framework/core/network/visitor/PayloadWriterVisitor;

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->sslContext:Ljavax/net/ssl/SSLContext;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    sput-object v0, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->RESPONSIBLE_STATUS_ARRAY:Landroid/util/SparseBooleanArray;

    const/16 v1, 0xc8

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    const/16 v1, 0xc9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    const/16 v1, 0xca

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    const/16 v1, 0xcc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    const/16 v1, 0xce

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    const/16 v1, 0x134

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    const/16 v1, 0xfb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    const/16 v1, 0x130

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    sput-object v0, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->REDIRECTED_STATUS_ARRAY:Landroid/util/SparseBooleanArray;

    const/16 v1, 0x12e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    const/16 v1, 0x12d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    const/16 v1, 0x12f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    const/16 v1, 0x133

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "NetworkImpl"

    invoke-static {v0}, Lcom/samsung/scsp/error/Logger;->get(Ljava/lang/String;)Lcom/samsung/scsp/error/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->logger:Lcom/samsung/scsp/error/Logger;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->connectionQueue:Ljava/util/Queue;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->CLOSING_LOCK:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->isClosing:Z

    return-void
.end method

.method public static synthetic a(Lcom/samsung/scsp/framework/core/network/HttpRequest;Lcom/samsung/scsp/framework/core/network/Network$ErrorListener;Lcom/samsung/scsp/framework/core/network/Network$StreamListener;Lcom/samsung/scsp/framework/core/network/Network$TransferListener;Ljava/net/HttpURLConnection;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->lambda$post$0(Lcom/samsung/scsp/framework/core/network/HttpRequest;Lcom/samsung/scsp/framework/core/network/Network$ErrorListener;Lcom/samsung/scsp/framework/core/network/Network$StreamListener;Lcom/samsung/scsp/framework/core/network/Network$TransferListener;Ljava/net/HttpURLConnection;)V

    return-void
.end method

.method public static synthetic b()Ljavax/net/ssl/SSLContext;
    .locals 1

    invoke-static {}, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->lambda$getSSLContext$11()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c(Ljava/net/HttpURLConnection;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->lambda$disconnect$12(Ljava/net/HttpURLConnection;)V

    return-void
.end method

.method private close(Lcom/samsung/scsp/framework/core/common/Predicate;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/scsp/framework/core/common/Predicate<",
            "Ljava/net/HttpURLConnection;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/scsp/framework/core/network/base/g;

    invoke-direct {v1, p0, p1}, Lcom/samsung/scsp/framework/core/network/base/g;-><init>(Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;Lcom/samsung/scsp/framework/core/common/Predicate;)V

    const-string p1, "CLOSE_NETWORK"

    invoke-direct {v0, v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static closeSilently(Ljava/io/Closeable;)V
    .locals 1

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/samsung/scsp/framework/core/network/base/a;

    invoke-direct {v0, p0}, Lcom/samsung/scsp/framework/core/network/base/a;-><init>(Ljava/io/Closeable;)V

    const/4 p0, 0x1

    invoke-static {v0, p0}, Lcom/samsung/scsp/error/FaultBarrier;->run(Lcom/samsung/scsp/error/FaultBarrier$ThrowableRunnable;Z)Lcom/samsung/scsp/error/Result;

    return-void
.end method

.method private configureConnection(Ljava/net/HttpURLConnection;Lcom/samsung/scsp/framework/core/network/HttpRequest;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Lcom/samsung/scsp/framework/core/network/HttpRequest;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Lcom/samsung/scsp/framework/core/network/HttpRequest;->getTimeOut()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-interface {p2}, Lcom/samsung/scsp/framework/core/network/HttpRequest;->getTimeOut()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1, v0, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private convertByteArrayOutputStream(Ljava/io/InputStream;)Ljava/io/ByteArrayOutputStream;
    .locals 6

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x4000

    new-array v2, v1, [B

    :goto_0
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1, v2, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    invoke-virtual {v0, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->closeSilently(Ljava/io/Closeable;)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Lcom/samsung/scsp/framework/core/ScspException;

    const v2, 0x3938700

    const-string v3, "IOException occurred during data conversion received from the server."

    invoke-direct {v1, v2, v3, v0}, Lcom/samsung/scsp/framework/core/ScspException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-static {p1}, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->closeSilently(Ljava/io/Closeable;)V

    throw v0
.end method

.method public static synthetic d(Ljava/util/Map;Lcom/samsung/scsp/framework/core/network/HttpRequest;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->lambda$getConnection$9(Ljava/util/Map;Lcom/samsung/scsp/framework/core/network/HttpRequest;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static disconnect(Ljava/net/HttpURLConnection;)V
    .locals 2

    new-instance v0, Lcom/samsung/scsp/framework/core/network/base/h;

    invoke-direct {v0, p0}, Lcom/samsung/scsp/framework/core/network/base/h;-><init>(Ljava/net/HttpURLConnection;)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/scsp/error/FaultBarrier;->run(Lcom/samsung/scsp/error/FaultBarrier$ThrowableRunnable;Z)Lcom/samsung/scsp/error/Result;

    new-instance v0, Lcom/samsung/scsp/framework/core/network/base/i;

    invoke-direct {v0, p0}, Lcom/samsung/scsp/framework/core/network/base/i;-><init>(Ljava/net/HttpURLConnection;)V

    invoke-static {v0, v1}, Lcom/samsung/scsp/error/FaultBarrier;->run(Lcom/samsung/scsp/error/FaultBarrier$ThrowableRunnable;Z)Lcom/samsung/scsp/error/Result;

    new-instance v0, Lcom/samsung/scsp/framework/core/network/base/j;

    invoke-direct {v0, p0}, Lcom/samsung/scsp/framework/core/network/base/j;-><init>(Ljava/net/HttpURLConnection;)V

    invoke-static {v0, v1}, Lcom/samsung/scsp/error/FaultBarrier;->run(Lcom/samsung/scsp/error/FaultBarrier$ThrowableRunnable;Z)Lcom/samsung/scsp/error/Result;

    return-void
.end method

.method public static synthetic e(Ljava/net/HttpURLConnection;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->lambda$delete$4(Ljava/net/HttpURLConnection;)V

    return-void
.end method

.method private execute(Lcom/samsung/scsp/framework/core/network/HttpRequest;Lcom/samsung/scsp/framework/core/network/base/NetworkImpl$ConnectionSetter;Lcom/samsung/scsp/framework/core/network/Network$ErrorListener;Lcom/samsung/scsp/framework/core/network/Network$StreamListener;Lcom/samsung/scsp/framework/core/network/Network$TransferListener;)V
    .locals 9

    const-string v0, "Connection is removed."

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    invoke-direct {p0, p1}, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->getConnection(Lcom/samsung/scsp/framework/core/network/HttpRequest;)Ljava/net/HttpURLConnection;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/samsung/scsp/framework/core/ScspException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {p2, v2}, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl$ConnectionSetter;->setup(Ljava/net/HttpURLConnection;)V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    new-instance v4, Ljava/util/TreeMap;

    sget-object v5, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v4, v5}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v4, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string v5, "HTTP_STATUS"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Lcom/samsung/scsp/framework/core/network/HttpRequest;->getNetworkStatusListener()Lcom/samsung/scsp/framework/core/listeners/NetworkStatusListener;

    move-result-object v5

    instance-of v6, v5, Lcom/samsung/scsp/framework/core/listeners/NetworkStatusAndProtocolListener;

    if-eqz v6, :cond_2

    check-cast v5, Lcom/samsung/scsp/framework/core/listeners/NetworkStatusAndProtocolListener;

    const-string v6, "http/1.1"

    invoke-interface {v5, v6}, Lcom/samsung/scsp/framework/core/listeners/NetworkStatusAndProtocolListener;->onNegotiatedProtocol(Ljava/lang/String;)V

    :cond_2
    sget-object v5, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->RESPONSIBLE_STATUS_ARRAY:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/samsung/scsp/framework/core/ScspException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v6, "Content-Encoding"

    const-string v7, "gzip"

    if-eqz v5, :cond_6

    :try_start_2
    invoke-virtual {v2, v6}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p4, :cond_4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v7, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    new-instance p3, Ljava/util/zip/GZIPInputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {p3, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p3

    :goto_1
    invoke-direct {p0, p3}, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->convertByteArrayOutputStream(Ljava/io/InputStream;)Ljava/io/ByteArrayOutputStream;

    move-result-object p3

    move-object v1, p3

    invoke-interface {p4, p1, v4, v1}, Lcom/samsung/scsp/framework/core/network/Network$StreamListener;->onStream(Lcom/samsung/scsp/framework/core/network/HttpRequest;Ljava/util/Map;Ljava/lang/Object;)V

    :cond_4
    if-eqz p5, :cond_b

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    new-instance p2, Ljava/util/zip/GZIPInputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_2

    :cond_5
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    :goto_2
    move-object v1, p2

    invoke-direct {p0, p1, v4, v1, p5}, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->transferByteBuffer(Lcom/samsung/scsp/framework/core/network/HttpRequest;Ljava/util/Map;Ljava/io/InputStream;Lcom/samsung/scsp/framework/core/network/Network$TransferListener;)V

    goto/16 :goto_4

    :cond_6
    sget-object v5, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->REDIRECTED_STATUS_ARRAY:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v3, "Location"

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->logger:Lcom/samsung/scsp/error/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/samsung/scsp/framework/core/network/HttpRequest;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "][redirected]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/scsp/error/Logger;->i(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->logger:Lcom/samsung/scsp/error/Logger;

    new-instance v5, Lcom/samsung/scsp/framework/core/network/base/n;

    invoke-direct {v5, p1, v3}, Lcom/samsung/scsp/framework/core/network/base/n;-><init>(Lcom/samsung/scsp/framework/core/network/HttpRequest;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/samsung/scsp/error/Logger;->d(Lcom/samsung/scsp/framework/core/common/Supplier;)V

    invoke-interface {p1, v3}, Lcom/samsung/scsp/framework/core/network/HttpRequest;->setUrl(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p5}, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->execute(Lcom/samsung/scsp/framework/core/network/HttpRequest;Lcom/samsung/scsp/framework/core/network/base/NetworkImpl$ConnectionSetter;Lcom/samsung/scsp/framework/core/network/Network$ErrorListener;Lcom/samsung/scsp/framework/core/network/Network$StreamListener;Lcom/samsung/scsp/framework/core/network/Network$TransferListener;)V

    goto :goto_4

    :cond_7
    if-eqz p3, :cond_b

    const-string p2, ""

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p4

    if-eqz p4, :cond_a

    invoke-virtual {v2, v6}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_8

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    new-instance p2, Ljava/util/zip/GZIPInputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p4

    invoke-direct {p2, p4}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_3

    :cond_8
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p2

    :goto_3
    invoke-direct {p0, p2}, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->convertByteArrayOutputStream(Ljava/io/InputStream;)Ljava/io/ByteArrayOutputStream;

    move-result-object p2

    move-object v1, p2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_a

    :cond_9
    new-instance p2, Lcom/google/gson/JsonObject;

    invoke-direct {p2}, Lcom/google/gson/JsonObject;-><init>()V

    const-string p4, "headers"

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p4, p5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_a
    invoke-interface {p3, p1, v4, v3, p2}, Lcom/samsung/scsp/framework/core/network/Network$ErrorListener;->onError(Lcom/samsung/scsp/framework/core/network/HttpRequest;Ljava/util/Map;ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/samsung/scsp/framework/core/ScspException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_b
    :goto_4
    if-eqz v1, :cond_c

    :try_start_3
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    :cond_c
    invoke-static {v2}, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->disconnect(Ljava/net/HttpURLConnection;)V

    iget-object p2, p0, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->connectionQueue:Ljava/util/Queue;

    invoke-interface {p2, v2}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->logger:Lcom/samsung/scsp/error/Logger;

    invoke-virtual {p2, v0}, Lcom/samsung/scsp/error/Logger;->i(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/samsung/scsp/framework/core/network/HttpRequest;->getNetworkStatusListener()Lcom/samsung/scsp/framework/core/listeners/NetworkStatusListener;

    move-result-object p1

    if-eqz p1, :cond_d

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/samsung/scsp/framework/core/listeners/NetworkStatusListener;->onClosed(I)V

    :cond_d
    return-void

    :catch_1
    move-exception p2

    goto :goto_5

    :catch_2
    move-exception p2

    goto :goto_6

    :catchall_0
    move-exception p2

    move-object v2, v1

    goto :goto_7

    :catch_3
    move-exception p2

    move-object v2, v1

    :goto_5
    :try_start_4
    throw p2

    :catch_4
    move-exception p2

    move-object v2, v1

    :goto_6
    new-instance p3, Lcom/samsung/scsp/framework/core/ScspException;

    const p4, 0x3938700

    const-string p5, "IOException occurred during network use."

    invoke-direct {p3, p4, p5, p2}, Lcom/samsung/scsp/framework/core/ScspException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p2

    :goto_7
    if-eqz v1, :cond_e

    :try_start_5
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :cond_e
    if-eqz v2, :cond_f

    invoke-static {v2}, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->disconnect(Ljava/net/HttpURLConnection;)V

    iget-object p3, p0, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->connectionQueue:Ljava/util/Queue;

    invoke-interface {p3, v2}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    iget-object p3, p0, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->logger:Lcom/samsung/scsp/error/Logger;

    invoke-virtual {p3, v0}, Lcom/samsung/scsp/error/Logger;->i(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/samsung/scsp/framework/core/network/HttpRequest;->getNetworkStatusListener()Lcom/samsung/scsp/framework/core/listeners/NetworkStatusListener;

    move-result-object p1

    if-eqz p1, :cond_f

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result p3

    invoke-interface {p1, p3}, Lcom/samsung/scsp/framework/core/listeners/NetworkStatusListener;->onClosed(I)V

    :cond_f
    throw p2
.end method

.method public static synthetic f(Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;Lcom/samsung/scsp/framework/core/common/Predicate;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->lambda$close$8(Lcom/samsung/scsp/framework/core/common/Predicate;)V

    return-void
.end method

.method public static synthetic g(ILjava/net/HttpURLConnection;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->lambda$close$7(ILjava/net/HttpURLConnection;)Z

    move-result p0

    return p0
.end method

.method private getConnection(Lcom/samsung/scsp/framework/core/network/HttpRequest;)Ljava/net/HttpURLConnection;
    .locals 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Lcom/samsung/scsp/framework/core/network/HttpRequest;->getHeaderCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-interface {p1, v3}, Lcom/samsung/scsp/framework/core/network/HttpRequest;->getHeaderKey(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v3}, Lcom/samsung/scsp/framework/core/network/HttpRequest;->getHeaderValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->logger:Lcom/samsung/scsp/error/Logger;

    new-instance v3, Lcom/samsung/scsp/framework/core/network/base/o;

    invoke-direct {v3, v0, p1}, Lcom/samsung/scsp/framework/core/network/base/o;-><init>(Ljava/util/Map;Lcom/samsung/scsp/framework/core/network/HttpRequest;)V

    invoke-virtual {v1, v3}, Lcom/samsung/scsp/error/Logger;->d(Lcom/samsung/scsp/framework/core/common/Supplier;)V

    iget-object v1, p0, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->logger:Lcom/samsung/scsp/error/Logger;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {p1}, Lcom/samsung/scsp/framework/core/network/HttpRequest;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v3, v4

    const/4 v2, 0x2

    invoke-interface {p1}, Lcom/samsung/scsp/framework/core/network/HttpRequest;->getUrl()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    const/4 v2, 0x3

    invoke-static {}, Lcom/samsung/scsp/framework/core/util/ScspCorePreferences;->get()Lcom/samsung/scsp/framework/core/util/ScspCorePreferences;

    move-result-object v5

    iget-object v5, v5, Lcom/samsung/scsp/framework/core/util/ScspCorePreferences;->registrationId:Lcom/samsung/scsp/common/PreferenceItem;

    invoke-virtual {v5}, Lcom/samsung/scsp/common/PreferenceItem;->get()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v2

    const-string v2, "[%s][%s][%s][%s]"

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/scsp/error/Logger;->i(Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-interface {p1}, Lcom/samsung/scsp/framework/core/network/HttpRequest;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    const-string v3, "https"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->logger:Lcom/samsung/scsp/error/Logger;

    const-string v3, "protected network"

    invoke-virtual {v1, v3}, Lcom/samsung/scsp/error/Logger;->i(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->getSSLContext()Ljavax/net/ssl/SSLContext;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v3, v2

    check-cast v3, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->connectionQueue:Ljava/util/Queue;

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->logger:Lcom/samsung/scsp/error/Logger;

    const-string v3, "Connection is added."

    invoke-virtual {v1, v3}, Lcom/samsung/scsp/error/Logger;->i(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    invoke-static {v4}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    invoke-direct {p0, v2, p1, v0}, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->configureConnection(Ljava/net/HttpURLConnection;Lcom/samsung/scsp/framework/core/network/HttpRequest;Ljava/util/Map;)V

    invoke-interface {p1}, Lcom/samsung/scsp/framework/core/network/HttpRequest;->getNetworkStatusListener()Lcom/samsung/scsp/framework/core/listeners/NetworkStatusListener;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/samsung/scsp/framework/core/listeners/NetworkStatusListener;->onStarted(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object v2

    :catch_0
    move-exception p1

    new-instance v0, Lcom/samsung/scsp/framework/core/ScspException;

    const v1, 0x3938700

    const-string v2, "IOException occurred during network use."

    invoke-direct {v0, v1, v2, p1}, Lcom/samsung/scsp/framework/core/ScspException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private declared-synchronized getSSLContext()Ljavax/net/ssl/SSLContext;
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->sslContext:Ljavax/net/ssl/SSLContext;

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/scsp/framework/core/network/base/k;->a:Lcom/samsung/scsp/framework/core/network/base/k;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/scsp/error/FaultBarrier;->get(Lcom/samsung/scsp/error/FaultBarrier$ThrowableSupplier;Ljava/lang/Object;)Lcom/samsung/scsp/error/Response;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/scsp/error/Response;->obj:Ljava/lang/Object;

    check-cast v0, Ljavax/net/ssl/SSLContext;

    sput-object v0, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->sslContext:Ljavax/net/ssl/SSLContext;

    :cond_0
    sget-object v0, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->sslContext:Ljavax/net/ssl/SSLContext;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->sslContext:Ljavax/net/ssl/SSLContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    new-instance v0, Lcom/samsung/scsp/framework/core/ScspException;

    const v1, 0x3938700

    const-string v2, "Runtime environment error. There is an exception while creating ssl context."

    invoke-direct {v0, v1, v2}, Lcom/samsung/scsp/framework/core/ScspException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static synthetic h(Ljava/net/HttpURLConnection;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->lambda$head$3(Ljava/net/HttpURLConnection;)V

    return-void
.end method

.method public static synthetic i(Ljava/net/HttpURLConnection;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->lambda$disconnect$13(Ljava/net/HttpURLConnection;)V

    return-void
.end method

.method public static synthetic j(Ljava/net/HttpURLConnection;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->lambda$get$2(Ljava/net/HttpURLConnection;)V

    return-void
.end method

.method public static synthetic k(Ljava/net/HttpURLConnection;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->lambda$disconnect$14(Ljava/net/HttpURLConnection;)V

    return-void
.end method

.method public static synthetic l(Lcom/samsung/scsp/framework/core/network/HttpRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->lambda$execute$10(Lcom/samsung/scsp/framework/core/network/HttpRequest;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$close$6(Ljava/net/HttpURLConnection;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic lambda$close$7(ILjava/net/HttpURLConnection;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$close$8(Lcom/samsung/scsp/framework/core/common/Predicate;)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->CLOSING_LOCK:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->isClosing:Z

    iget-object v1, p0, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->logger:Lcom/samsung/scsp/error/Logger;

    const-string v2, "close request by user."

    invoke-virtual {v1, v2}, Lcom/samsung/scsp/error/Logger;->i(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->connectionQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    iget-object v3, p0, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->logger:Lcom/samsung/scsp/error/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "finding connection to close."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/scsp/error/Logger;->i(Ljava/lang/String;)V

    invoke-interface {p1, v2}, Lcom/samsung/scsp/framework/core/common/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    :try_start_1
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getDoOutput()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->logger:Lcom/samsung/scsp/error/Logger;

    const-string v4, "conn has output, will be close..."

    invoke-virtual {v3, v4}, Lcom/samsung/scsp/error/Logger;->i(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    invoke-static {v2}, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->disconnect(Ljava/net/HttpURLConnection;)V

    iget-object v2, p0, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->logger:Lcom/samsung/scsp/error/Logger;

    const-string v3, "Connection is closed by user."

    invoke-virtual {v2, v3}, Lcom/samsung/scsp/error/Logger;->i(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->isClosing:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private static synthetic lambda$delete$4(Ljava/net/HttpURLConnection;)V
    .locals 1

    const-string v0, "DELETE"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$disconnect$12(Ljava/net/HttpURLConnection;)V
    .locals 0

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->closeSilently(Ljava/io/Closeable;)V

    return-void
.end method

.method private static synthetic lambda$disconnect$13(Ljava/net/HttpURLConnection;)V
    .locals 0

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->closeSilently(Ljava/io/Closeable;)V

    return-void
.end method

.method private static synthetic lambda$disconnect$14(Ljava/net/HttpURLConnection;)V
    .locals 0

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->closeSilently(Ljava/io/Closeable;)V

    return-void
.end method

.method private static synthetic lambda$execute$10(Lcom/samsung/scsp/framework/core/network/HttpRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/samsung/scsp/framework/core/network/HttpRequest;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "][redirected]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$get$2(Ljava/net/HttpURLConnection;)V
    .locals 1

    const-string v0, "GET"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$getConnection$9(Ljava/util/Map;Lcom/samsung/scsp/framework/core/network/HttpRequest;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3a

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    const-string v1, "]["

    const-string v2, "["

    if-lez p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/samsung/scsp/framework/core/network/HttpRequest;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "][ header - "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, p1, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ]"

    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/samsung/scsp/framework/core/network/HttpRequest;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "][ header - NONE]"

    goto :goto_1
.end method

.method private static synthetic lambda$getSSLContext$11()Ljavax/net/ssl/SSLContext;
    .locals 7

    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    const-string v2, "AndroidCAStore"

    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    invoke-virtual {v2, v1, v1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    invoke-virtual {v2}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    const-string v6, "system:"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v0, v4, v5}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    invoke-virtual {v2}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    return-object v0
.end method

.method private static synthetic lambda$head$3(Ljava/net/HttpURLConnection;)V
    .locals 1

    const-string v0, "HEAD"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$patch$5(Lcom/samsung/scsp/framework/core/network/HttpRequest;Lcom/samsung/scsp/framework/core/network/Network$ErrorListener;Lcom/samsung/scsp/framework/core/network/Network$StreamListener;Lcom/samsung/scsp/framework/core/network/Network$TransferListener;Ljava/net/HttpURLConnection;)V
    .locals 3

    const-string v0, "X-HTTP-Method-Override"

    const-string v1, "PATCH"

    invoke-virtual {p4, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p4, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p4, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    invoke-interface {p0, v0}, Lcom/samsung/scsp/framework/core/network/HttpRequest;->getContentType(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Content-Type"

    invoke-virtual {p4, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/samsung/scsp/framework/core/network/HttpRequest;->getContent(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/samsung/scsp/framework/core/network/visitor/PayloadWriterVisitor$Payload;

    invoke-direct {v2}, Lcom/samsung/scsp/framework/core/network/visitor/PayloadWriterVisitor$Payload;-><init>()V

    iput-object p0, v2, Lcom/samsung/scsp/framework/core/network/visitor/PayloadWriterVisitor$Payload;->httpRequest:Lcom/samsung/scsp/framework/core/network/HttpRequest;

    iput-object p1, v2, Lcom/samsung/scsp/framework/core/network/visitor/PayloadWriterVisitor$Payload;->errorListener:Lcom/samsung/scsp/framework/core/network/Network$ErrorListener;

    iput-object p2, v2, Lcom/samsung/scsp/framework/core/network/visitor/PayloadWriterVisitor$Payload;->streamListener:Lcom/samsung/scsp/framework/core/network/Network$StreamListener;

    iput-object p3, v2, Lcom/samsung/scsp/framework/core/network/visitor/PayloadWriterVisitor$Payload;->transferListener:Lcom/samsung/scsp/framework/core/network/Network$TransferListener;

    invoke-virtual {p4}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    iput-object p1, v2, Lcom/samsung/scsp/framework/core/network/visitor/PayloadWriterVisitor$Payload;->output:Ljava/lang/Object;

    iput-object v1, v2, Lcom/samsung/scsp/framework/core/network/visitor/PayloadWriterVisitor$Payload;->content:Ljava/lang/Object;

    invoke-interface {p0, v0}, Lcom/samsung/scsp/framework/core/network/HttpRequest;->getPayloadWriter(I)Lcom/samsung/scsp/framework/core/network/visitor/PayloadWriterVisitor$PayloadWriter;

    move-result-object p0

    sget-object p1, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->visitor:Lcom/samsung/scsp/framework/core/network/visitor/PayloadWriterVisitor;

    invoke-virtual {p0, v2, p1}, Lcom/samsung/scsp/framework/core/network/visitor/PayloadWriterVisitor$PayloadWriter;->accept(Lcom/samsung/scsp/framework/core/network/visitor/PayloadWriterVisitor$Payload;Lcom/samsung/scsp/framework/core/network/visitor/PayloadWriterVisitor;)V

    :cond_0
    invoke-virtual {p4}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method private static synthetic lambda$post$0(Lcom/samsung/scsp/framework/core/network/HttpRequest;Lcom/samsung/scsp/framework/core/network/Network$ErrorListener;Lcom/samsung/scsp/framework/core/network/Network$StreamListener;Lcom/samsung/scsp/framework/core/network/Network$TransferListener;Ljava/net/HttpURLConnection;)V
    .locals 10

    const-string v0, "POST"

    invoke-virtual {p4, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p4, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-interface {p0}, Lcom/samsung/scsp/framework/core/network/HttpRequest;->getSupportChunkedStreaming()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p4, v2}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    :cond_0
    invoke-interface {p0}, Lcom/samsung/scsp/framework/core/network/HttpRequest;->getPartCount()I

    move-result v1

    const-string v3, "Content-Type"

    if-le v1, v0, :cond_2

    invoke-interface {p0}, Lcom/samsung/scsp/framework/core/network/HttpRequest;->getBoundary()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0}, Lcom/samsung/scsp/framework/core/network/HttpRequest;->getCharset()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "multipart/form-data; boundary="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p4, v3, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ljava/io/OutputStreamWriter;

    invoke-virtual {p4}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    new-instance v7, Ljava/io/PrintWriter;

    invoke-direct {v7, v6, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    const-string v0, "\r\n"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "--"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    :try_start_0
    new-instance v8, Lcom/samsung/scsp/framework/core/network/visitor/PayloadWriterVisitor$Payload;

    invoke-direct {v8}, Lcom/samsung/scsp/framework/core/network/visitor/PayloadWriterVisitor$Payload;-><init>()V

    iput-object p0, v8, Lcom/samsung/scsp/framework/core/network/visitor/PayloadWriterVisitor$Payload;->httpRequest:Lcom/samsung/scsp/framework/core/network/HttpRequest;

    iput-object p1, v8, Lcom/samsung/scsp/framework/core/network/visitor/PayloadWriterVisitor$Payload;->errorListener:Lcom/samsung/scsp/framework/core/network/Network$ErrorListener;

    iput-object p2, v8, Lcom/samsung/scsp/framework/core/network/visitor/PayloadWriterVisitor$Payload;->streamListener:Lcom/samsung/scsp/framework/core/network/Network$StreamListener;

    iput-object p3, v8, Lcom/samsung/scsp/framework/core/network/visitor/PayloadWriterVisitor$Payload;->transferListener:Lcom/samsung/scsp/framework/core/network/Network$TransferListener;

    invoke-virtual {p4}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    iput-object p1, v8, Lcom/samsung/scsp/framework/core/network/visitor/PayloadWriterVisitor$Payload;->output:Ljava/lang/Object;

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string p1, "Content-Disposition:"

    invoke-virtual {v7, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p1

    const/16 p2, 0x20

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    move-result-object p1

    invoke-interface {p0, v2}, Lcom/samsung/scsp/framework/core/network/HttpRequest;->getContentDisposition(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p1

    const-string p2, ": "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p1

    invoke-interface {p0, v2}, Lcom/samsung/scsp/framework/core/network/HttpRequest;->getContentType(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p1

    const-string p2, "; "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string p1, "charset"

    invoke-virtual {v7, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p1

    const/16 p2, 0x3d

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    invoke-virtual {v7}, Ljava/io/PrintWriter;->flush()V

    invoke-interface {p0, v2}, Lcom/samsung/scsp/framework/core/network/HttpRequest;->getContent(I)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v8, Lcom/samsung/scsp/framework/core/network/visitor/PayloadWriterVisitor$Payload;->content:Ljava/lang/Object;

    invoke-interface {p0, v2}, Lcom/samsung/scsp/framework/core/network/HttpRequest;->getPayloadWriter(I)Lcom/samsung/scsp/framework/core/network/visitor/PayloadWriterVisitor$PayloadWriter;

    move-result-object p1

    sget-object p2, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->visitor:Lcom/samsung/scsp/framework/core/network/visitor/PayloadWriterVisitor;

    invoke-virtual {p1, v8, p2}, Lcom/samsung/scsp/framework/core/network/visitor/PayloadWriterVisitor$PayloadWriter;->accept(Lcom/samsung/scsp/framework/core/network/visitor/PayloadWriterVisitor$Payload;Lcom/samsung/scsp/framework/core/network/visitor/PayloadWriterVisitor;)V

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v7, v9}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    invoke-virtual {v7}, Ljava/io/PrintWriter;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v7}, Ljava/io/PrintWriter;->close()V

    invoke-virtual {v6}, Ljava/io/OutputStreamWriter;->close()V

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-virtual {v7}, Ljava/io/PrintWriter;->close()V

    invoke-virtual {v6}, Ljava/io/OutputStreamWriter;->close()V

    throw p0

    :cond_2
    invoke-interface {p0, v2}, Lcom/samsung/scsp/framework/core/network/HttpRequest;->getContentType(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v3, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/scsp/framework/core/network/visitor/PayloadWriterVisitor$Payload;

    invoke-direct {v0}, Lcom/samsung/scsp/framework/core/network/visitor/PayloadWriterVisitor$Payload;-><init>()V

    iput-object p0, v0, Lcom/samsung/scsp/framework/core/network/visitor/PayloadWriterVisitor$Payload;->httpRequest:Lcom/samsung/scsp/framework/core/network/HttpRequest;

    iput-object p1, v0, Lcom/samsung/scsp/framework/core/network/visitor/PayloadWriterVisitor$Payload;->errorListener:Lcom/samsung/scsp/framework/core/network/Network$ErrorListener;

    iput-object p2, v0, Lcom/samsung/scsp/framework/core/network/visitor/PayloadWriterVisitor$Payload;->streamListener:Lcom/samsung/scsp/framework/core/network/Network$StreamListener;

    iput-object p3, v0, Lcom/samsung/scsp/framework/core/network/visitor/PayloadWriterVisitor$Payload;->transferListener:Lcom/samsung/scsp/framework/core/network/Network$TransferListener;

    invoke-virtual {p4}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    iput-object p1, v0, Lcom/samsung/scsp/framework/core/network/visitor/PayloadWriterVisitor$Payload;->output:Ljava/lang/Object;

    invoke-interface {p0}, Lcom/samsung/scsp/framework/core/network/HttpRequest;->getRange()J

    move-result-wide p1

    iput-wide p1, v0, Lcom/samsung/scsp/framework/core/network/visitor/PayloadWriterVisitor$Payload;->transferred:J

    invoke-interface {p0, v2}, Lcom/samsung/scsp/framework/core/network/HttpRequest;->getContent(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    iput-object p1, v0, Lcom/samsung/scsp/framework/core/network/visitor/PayloadWriterVisitor$Payload;->content:Ljava/lang/Object;

    invoke-interface {p0, v2}, Lcom/samsung/scsp/framework/core/network/HttpRequest;->getPayloadWriter(I)Lcom/samsung/scsp/framework/core/network/visitor/PayloadWriterVisitor$PayloadWriter;

    move-result-object p0

    sget-object p1, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->visitor:Lcom/samsung/scsp/framework/core/network/visitor/PayloadWriterVisitor;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/scsp/framework/core/network/visitor/PayloadWriterVisitor$PayloadWriter;->accept(Lcom/samsung/scsp/framework/core/network/visitor/PayloadWriterVisitor$Payload;Lcom/samsung/scsp/framework/core/network/visitor/PayloadWriterVisitor;)V

    :cond_3
    :goto_1
    invoke-virtual {p4}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method private static synthetic lambda$put$1(Lcom/samsung/scsp/framework/core/network/HttpRequest;Lcom/samsung/scsp/framework/core/network/Network$ErrorListener;Lcom/samsung/scsp/framework/core/network/Network$StreamListener;Lcom/samsung/scsp/framework/core/network/Network$TransferListener;Ljava/net/HttpURLConnection;)V
    .locals 3

    const-string v0, "PUT"

    invoke-virtual {p4, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p4, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-interface {p0}, Lcom/samsung/scsp/framework/core/network/HttpRequest;->getSupportChunkedStreaming()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p4, v1}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    :cond_0
    invoke-interface {p0, v1}, Lcom/samsung/scsp/framework/core/network/HttpRequest;->getContentType(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Content-Type"

    invoke-virtual {p4, v2, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v1}, Lcom/samsung/scsp/framework/core/network/HttpRequest;->getContent(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v2, Lcom/samsung/scsp/framework/core/network/visitor/PayloadWriterVisitor$Payload;

    invoke-direct {v2}, Lcom/samsung/scsp/framework/core/network/visitor/PayloadWriterVisitor$Payload;-><init>()V

    iput-object p0, v2, Lcom/samsung/scsp/framework/core/network/visitor/PayloadWriterVisitor$Payload;->httpRequest:Lcom/samsung/scsp/framework/core/network/HttpRequest;

    iput-object p1, v2, Lcom/samsung/scsp/framework/core/network/visitor/PayloadWriterVisitor$Payload;->errorListener:Lcom/samsung/scsp/framework/core/network/Network$ErrorListener;

    iput-object p2, v2, Lcom/samsung/scsp/framework/core/network/visitor/PayloadWriterVisitor$Payload;->streamListener:Lcom/samsung/scsp/framework/core/network/Network$StreamListener;

    iput-object p3, v2, Lcom/samsung/scsp/framework/core/network/visitor/PayloadWriterVisitor$Payload;->transferListener:Lcom/samsung/scsp/framework/core/network/Network$TransferListener;

    invoke-interface {p0}, Lcom/samsung/scsp/framework/core/network/HttpRequest;->getRange()J

    move-result-wide p1

    iput-wide p1, v2, Lcom/samsung/scsp/framework/core/network/visitor/PayloadWriterVisitor$Payload;->transferred:J

    invoke-virtual {p4}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    iput-object p1, v2, Lcom/samsung/scsp/framework/core/network/visitor/PayloadWriterVisitor$Payload;->output:Ljava/lang/Object;

    iput-object v0, v2, Lcom/samsung/scsp/framework/core/network/visitor/PayloadWriterVisitor$Payload;->content:Ljava/lang/Object;

    invoke-interface {p0}, Lcom/samsung/scsp/framework/core/network/HttpRequest;->getLength()J

    move-result-wide p1

    iput-wide p1, v2, Lcom/samsung/scsp/framework/core/network/visitor/PayloadWriterVisitor$Payload;->length:J

    invoke-interface {p0, v1}, Lcom/samsung/scsp/framework/core/network/HttpRequest;->getPayloadWriter(I)Lcom/samsung/scsp/framework/core/network/visitor/PayloadWriterVisitor$PayloadWriter;

    move-result-object p0

    sget-object p1, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->visitor:Lcom/samsung/scsp/framework/core/network/visitor/PayloadWriterVisitor;

    invoke-virtual {p0, v2, p1}, Lcom/samsung/scsp/framework/core/network/visitor/PayloadWriterVisitor$PayloadWriter;->accept(Lcom/samsung/scsp/framework/core/network/visitor/PayloadWriterVisitor$Payload;Lcom/samsung/scsp/framework/core/network/visitor/PayloadWriterVisitor;)V

    :cond_1
    invoke-virtual {p4}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public static synthetic m(Lcom/samsung/scsp/framework/core/network/HttpRequest;Lcom/samsung/scsp/framework/core/network/Network$ErrorListener;Lcom/samsung/scsp/framework/core/network/Network$StreamListener;Lcom/samsung/scsp/framework/core/network/Network$TransferListener;Ljava/net/HttpURLConnection;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->lambda$put$1(Lcom/samsung/scsp/framework/core/network/HttpRequest;Lcom/samsung/scsp/framework/core/network/Network$ErrorListener;Lcom/samsung/scsp/framework/core/network/Network$StreamListener;Lcom/samsung/scsp/framework/core/network/Network$TransferListener;Ljava/net/HttpURLConnection;)V

    return-void
.end method

.method public static synthetic n(Lcom/samsung/scsp/framework/core/network/HttpRequest;Lcom/samsung/scsp/framework/core/network/Network$ErrorListener;Lcom/samsung/scsp/framework/core/network/Network$StreamListener;Lcom/samsung/scsp/framework/core/network/Network$TransferListener;Ljava/net/HttpURLConnection;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->lambda$patch$5(Lcom/samsung/scsp/framework/core/network/HttpRequest;Lcom/samsung/scsp/framework/core/network/Network$ErrorListener;Lcom/samsung/scsp/framework/core/network/Network$StreamListener;Lcom/samsung/scsp/framework/core/network/Network$TransferListener;Ljava/net/HttpURLConnection;)V

    return-void
.end method

.method public static synthetic o(Ljava/net/HttpURLConnection;)Z
    .locals 0

    invoke-static {p0}, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->lambda$close$6(Ljava/net/HttpURLConnection;)Z

    move-result p0

    return p0
.end method

.method private transferByteBuffer(Lcom/samsung/scsp/framework/core/network/HttpRequest;Ljava/util/Map;Ljava/io/InputStream;Lcom/samsung/scsp/framework/core/network/Network$TransferListener;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/scsp/framework/core/network/HttpRequest;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/io/InputStream;",
            "Lcom/samsung/scsp/framework/core/network/Network$TransferListener;",
            ")V"
        }
    .end annotation

    move-object/from16 v9, p1

    move-object/from16 v10, p4

    :try_start_0
    invoke-static/range {p3 .. p3}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v0

    const/high16 v1, 0x50000

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    const-string v1, "Content-Length"

    move-object/from16 v12, p2

    invoke-interface {v12, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    move-wide v13, v4

    goto :goto_0

    :cond_0
    move-wide v13, v2

    :goto_0
    invoke-interface {v0, v11}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v1

    int-to-long v4, v1

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-eqz v1, :cond_1

    add-long v15, v2, v4

    move-object/from16 v1, p4

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide v4, v15

    move-wide v6, v13

    move-object v8, v11

    invoke-interface/range {v1 .. v8}, Lcom/samsung/scsp/framework/core/network/Network$TransferListener;->onTransferred(Lcom/samsung/scsp/framework/core/network/HttpRequest;Ljava/util/Map;JJLjava/nio/ByteBuffer;)V

    move-wide v2, v15

    goto :goto_0

    :cond_1
    invoke-interface {v10, v9}, Lcom/samsung/scsp/framework/core/network/Network$TransferListener;->onCompleted(Lcom/samsung/scsp/framework/core/network/HttpRequest;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-interface {v10, v9}, Lcom/samsung/scsp/framework/core/network/Network$TransferListener;->onCompleted(Lcom/samsung/scsp/framework/core/network/HttpRequest;)V

    new-instance v1, Lcom/samsung/scsp/framework/core/ScspException;

    const v2, 0x3938700

    const-string v3, "IOException occurred while reading the response received from the server."

    invoke-direct {v1, v2, v3, v0}, Lcom/samsung/scsp/framework/core/ScspException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public close()V
    .locals 1

    sget-object v0, Lcom/samsung/scsp/framework/core/network/base/m;->a:Lcom/samsung/scsp/framework/core/network/base/m;

    invoke-direct {p0, v0}, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->close(Lcom/samsung/scsp/framework/core/common/Predicate;)V

    return-void
.end method

.method public close(I)V
    .locals 1

    new-instance v0, Lcom/samsung/scsp/framework/core/network/base/l;

    invoke-direct {v0, p1}, Lcom/samsung/scsp/framework/core/network/base/l;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->close(Lcom/samsung/scsp/framework/core/common/Predicate;)V

    return-void
.end method

.method public delete(Lcom/samsung/scsp/framework/core/network/HttpRequest;Lcom/samsung/scsp/framework/core/network/Network$ErrorListener;Lcom/samsung/scsp/framework/core/network/Network$StreamListener;Lcom/samsung/scsp/framework/core/network/Network$TransferListener;)V
    .locals 8

    iget-object v0, p0, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->logger:Lcom/samsung/scsp/error/Logger;

    const-string v1, "delete"

    invoke-virtual {v0, v1}, Lcom/samsung/scsp/error/Logger;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->CLOSING_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->isClosing:Z

    if-nez v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v4, Lcom/samsung/scsp/framework/core/network/base/d;->a:Lcom/samsung/scsp/framework/core/network/base/d;

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->execute(Lcom/samsung/scsp/framework/core/network/HttpRequest;Lcom/samsung/scsp/framework/core/network/base/NetworkImpl$ConnectionSetter;Lcom/samsung/scsp/framework/core/network/Network$ErrorListener;Lcom/samsung/scsp/framework/core/network/Network$StreamListener;Lcom/samsung/scsp/framework/core/network/Network$TransferListener;)V

    return-void

    :cond_0
    :try_start_1
    new-instance p1, Lcom/samsung/scsp/framework/core/ScspException;

    const p2, 0x4c4b400

    const-string p3, "Network is closed, should open() first."

    invoke-direct {p1, p2, p3}, Lcom/samsung/scsp/framework/core/ScspException;-><init>(ILjava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public get(Lcom/samsung/scsp/framework/core/network/HttpRequest;Lcom/samsung/scsp/framework/core/network/Network$ErrorListener;Lcom/samsung/scsp/framework/core/network/Network$StreamListener;Lcom/samsung/scsp/framework/core/network/Network$TransferListener;)V
    .locals 8

    iget-object v0, p0, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->logger:Lcom/samsung/scsp/error/Logger;

    const-string v1, "get"

    invoke-virtual {v0, v1}, Lcom/samsung/scsp/error/Logger;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->CLOSING_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->isClosing:Z

    if-nez v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v4, Lcom/samsung/scsp/framework/core/network/base/f;->a:Lcom/samsung/scsp/framework/core/network/base/f;

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->execute(Lcom/samsung/scsp/framework/core/network/HttpRequest;Lcom/samsung/scsp/framework/core/network/base/NetworkImpl$ConnectionSetter;Lcom/samsung/scsp/framework/core/network/Network$ErrorListener;Lcom/samsung/scsp/framework/core/network/Network$StreamListener;Lcom/samsung/scsp/framework/core/network/Network$TransferListener;)V

    return-void

    :cond_0
    :try_start_1
    new-instance p1, Lcom/samsung/scsp/framework/core/ScspException;

    const p2, 0x4c4b400

    const-string p3, "Network is closed, should open() first."

    invoke-direct {p1, p2, p3}, Lcom/samsung/scsp/framework/core/ScspException;-><init>(ILjava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public head(Lcom/samsung/scsp/framework/core/network/HttpRequest;Lcom/samsung/scsp/framework/core/network/Network$ErrorListener;Lcom/samsung/scsp/framework/core/network/Network$StreamListener;Lcom/samsung/scsp/framework/core/network/Network$TransferListener;)V
    .locals 8

    iget-object v0, p0, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->logger:Lcom/samsung/scsp/error/Logger;

    const-string v1, "head"

    invoke-virtual {v0, v1}, Lcom/samsung/scsp/error/Logger;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->CLOSING_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->isClosing:Z

    if-nez v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v4, Lcom/samsung/scsp/framework/core/network/base/e;->a:Lcom/samsung/scsp/framework/core/network/base/e;

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->execute(Lcom/samsung/scsp/framework/core/network/HttpRequest;Lcom/samsung/scsp/framework/core/network/base/NetworkImpl$ConnectionSetter;Lcom/samsung/scsp/framework/core/network/Network$ErrorListener;Lcom/samsung/scsp/framework/core/network/Network$StreamListener;Lcom/samsung/scsp/framework/core/network/Network$TransferListener;)V

    return-void

    :cond_0
    :try_start_1
    new-instance p1, Lcom/samsung/scsp/framework/core/ScspException;

    const p2, 0x4c4b400

    const-string p3, "Network is closed, should open() first."

    invoke-direct {p1, p2, p3}, Lcom/samsung/scsp/framework/core/ScspException;-><init>(ILjava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public open()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->CLOSING_LOCK:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->isClosing:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public patch(Lcom/samsung/scsp/framework/core/network/HttpRequest;Lcom/samsung/scsp/framework/core/network/Network$ErrorListener;Lcom/samsung/scsp/framework/core/network/Network$StreamListener;Lcom/samsung/scsp/framework/core/network/Network$TransferListener;)V
    .locals 8

    iget-object v0, p0, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->logger:Lcom/samsung/scsp/error/Logger;

    const-string v1, "patch"

    invoke-virtual {v0, v1}, Lcom/samsung/scsp/error/Logger;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->CLOSING_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->isClosing:Z

    if-nez v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v4, Lcom/samsung/scsp/framework/core/network/base/c;

    invoke-direct {v4, p1, p2, p3, p4}, Lcom/samsung/scsp/framework/core/network/base/c;-><init>(Lcom/samsung/scsp/framework/core/network/HttpRequest;Lcom/samsung/scsp/framework/core/network/Network$ErrorListener;Lcom/samsung/scsp/framework/core/network/Network$StreamListener;Lcom/samsung/scsp/framework/core/network/Network$TransferListener;)V

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->execute(Lcom/samsung/scsp/framework/core/network/HttpRequest;Lcom/samsung/scsp/framework/core/network/base/NetworkImpl$ConnectionSetter;Lcom/samsung/scsp/framework/core/network/Network$ErrorListener;Lcom/samsung/scsp/framework/core/network/Network$StreamListener;Lcom/samsung/scsp/framework/core/network/Network$TransferListener;)V

    return-void

    :cond_0
    :try_start_1
    new-instance p1, Lcom/samsung/scsp/framework/core/ScspException;

    const p2, 0x4c4b400

    const-string p3, "Network is closed, should open() first."

    invoke-direct {p1, p2, p3}, Lcom/samsung/scsp/framework/core/ScspException;-><init>(ILjava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public post(Lcom/samsung/scsp/framework/core/network/HttpRequest;Lcom/samsung/scsp/framework/core/network/Network$ErrorListener;Lcom/samsung/scsp/framework/core/network/Network$StreamListener;Lcom/samsung/scsp/framework/core/network/Network$TransferListener;)V
    .locals 8

    iget-object v0, p0, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->logger:Lcom/samsung/scsp/error/Logger;

    const-string v1, "post"

    invoke-virtual {v0, v1}, Lcom/samsung/scsp/error/Logger;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->CLOSING_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->isClosing:Z

    if-nez v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v4, Lcom/samsung/scsp/framework/core/network/base/p;

    invoke-direct {v4, p1, p2, p3, p4}, Lcom/samsung/scsp/framework/core/network/base/p;-><init>(Lcom/samsung/scsp/framework/core/network/HttpRequest;Lcom/samsung/scsp/framework/core/network/Network$ErrorListener;Lcom/samsung/scsp/framework/core/network/Network$StreamListener;Lcom/samsung/scsp/framework/core/network/Network$TransferListener;)V

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->execute(Lcom/samsung/scsp/framework/core/network/HttpRequest;Lcom/samsung/scsp/framework/core/network/base/NetworkImpl$ConnectionSetter;Lcom/samsung/scsp/framework/core/network/Network$ErrorListener;Lcom/samsung/scsp/framework/core/network/Network$StreamListener;Lcom/samsung/scsp/framework/core/network/Network$TransferListener;)V

    return-void

    :cond_0
    :try_start_1
    new-instance p1, Lcom/samsung/scsp/framework/core/ScspException;

    const p2, 0x4c4b400

    const-string p3, "Network is closed, should open() first."

    invoke-direct {p1, p2, p3}, Lcom/samsung/scsp/framework/core/ScspException;-><init>(ILjava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public put(Lcom/samsung/scsp/framework/core/network/HttpRequest;Lcom/samsung/scsp/framework/core/network/Network$ErrorListener;Lcom/samsung/scsp/framework/core/network/Network$StreamListener;Lcom/samsung/scsp/framework/core/network/Network$TransferListener;)V
    .locals 8

    iget-object v0, p0, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->logger:Lcom/samsung/scsp/error/Logger;

    const-string v1, "put"

    invoke-virtual {v0, v1}, Lcom/samsung/scsp/error/Logger;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->CLOSING_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->isClosing:Z

    if-nez v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v4, Lcom/samsung/scsp/framework/core/network/base/b;

    invoke-direct {v4, p1, p2, p3, p4}, Lcom/samsung/scsp/framework/core/network/base/b;-><init>(Lcom/samsung/scsp/framework/core/network/HttpRequest;Lcom/samsung/scsp/framework/core/network/Network$ErrorListener;Lcom/samsung/scsp/framework/core/network/Network$StreamListener;Lcom/samsung/scsp/framework/core/network/Network$TransferListener;)V

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->execute(Lcom/samsung/scsp/framework/core/network/HttpRequest;Lcom/samsung/scsp/framework/core/network/base/NetworkImpl$ConnectionSetter;Lcom/samsung/scsp/framework/core/network/Network$ErrorListener;Lcom/samsung/scsp/framework/core/network/Network$StreamListener;Lcom/samsung/scsp/framework/core/network/Network$TransferListener;)V

    return-void

    :cond_0
    :try_start_1
    new-instance p1, Lcom/samsung/scsp/framework/core/ScspException;

    const p2, 0x4c4b400

    const-string p3, "Network is closed, should open() first."

    invoke-direct {p1, p2, p3}, Lcom/samsung/scsp/framework/core/ScspException;-><init>(ILjava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
