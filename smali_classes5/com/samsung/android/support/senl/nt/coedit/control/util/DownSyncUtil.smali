.class public Lcom/samsung/android/support/senl/nt/coedit/control/util/DownSyncUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/coedit/control/util/DownSyncUtil$ResponseHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NT/DownSyncUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addContentTypeHeader(Ljava/util/Map;Ljava/io/ByteArrayInputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/ByteArrayInputStream;",
            ")V"
        }
    .end annotation

    const/16 v0, 0x3e8

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    :try_start_0
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "--"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "Content-Type"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Content-Type: multipart/form-data; boundary="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_2

    :catchall_0
    move-exception p0

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_6
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p0

    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v0

    :try_start_8
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    :try_start_9
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :goto_2
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->reset()V

    return-void

    :goto_3
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->reset()V

    throw p0
.end method

.method public static requestDownSync(Landroid/content/Context;Ljava/io/ByteArrayInputStream;Lcom/samsung/android/support/senl/nt/coedit/control/util/DownSyncUtil$ResponseHandler;)V
    .locals 5

    const-string v0, "NT/DownSyncUtil"

    const-string v1, "requestDownSync() : Start"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/util/DownSyncUtil;->addContentTypeHeader(Ljava/util/Map;Ljava/io/ByteArrayInputStream;)V

    const-string v2, "Content-Encoding"

    const-string v3, "gzip"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/samsung/android/support/senl/nt/coedit/control/util/ParseResponseXml;

    invoke-direct {v2}, Lcom/samsung/android/support/senl/nt/coedit/control/util/ParseResponseXml;-><init>()V

    new-instance v3, Lcom/samsung/android/app/notes/sync/network/networkutils/j$a;

    invoke-direct {v3}, Lcom/samsung/android/app/notes/sync/network/networkutils/j$a;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/notes/sync/network/networkutils/j$a;->a(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/network/networkutils/j$a;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/samsung/android/app/notes/sync/network/networkutils/j$a;->f(Ljava/util/Map;)Lcom/samsung/android/app/notes/sync/network/networkutils/j$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/notes/sync/network/networkutils/j$a;->h(Ljava/io/InputStream;)Lcom/samsung/android/app/notes/sync/network/networkutils/j$a;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/notes/sync/network/networkutils/j$a;->d(Landroid/content/Context;)Lcom/samsung/android/app/notes/sync/network/networkutils/j$a;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/support/senl/nt/coedit/control/util/DownSyncUtil$1;

    invoke-direct {p1, v2, p2}, Lcom/samsung/android/support/senl/nt/coedit/control/util/DownSyncUtil$1;-><init>(Lcom/samsung/android/support/senl/nt/coedit/control/util/ParseResponseXml;Lcom/samsung/android/support/senl/nt/coedit/control/util/DownSyncUtil$ResponseHandler;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/sync/network/networkutils/j$a;->j(Lcom/samsung/android/app/notes/sync/network/networkutils/j$c;)Lcom/samsung/android/app/notes/sync/network/networkutils/j$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/network/networkutils/j$a;->c()Lcom/samsung/android/app/notes/sync/network/networkutils/j;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->A()Lcom/samsung/android/app/notes/sync/network/networkutils/j;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/coedit/control/util/ParseResponseXml;->getDownloadUrlMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/samsung/android/support/senl/nt/coedit/control/util/DownSyncUtil$ResponseHandler;->handleDownloadUrlMap(Ljava/util/Map;)V

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/coedit/control/util/ParseResponseXml;->getXmlBody()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/samsung/android/support/senl/nt/coedit/control/util/DownSyncUtil$ResponseHandler;->handleDownloadXmlData(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "requestDownSync, fail to requestDownSync : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
