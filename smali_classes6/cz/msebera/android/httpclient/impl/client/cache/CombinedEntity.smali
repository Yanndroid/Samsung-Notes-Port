.class Lcz/msebera/android/httpclient/impl/client/cache/CombinedEntity;
.super Lcz/msebera/android/httpclient/entity/AbstractHttpEntity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcz/msebera/android/httpclient/impl/client/cache/CombinedEntity$ResourceStream;
    }
.end annotation


# instance fields
.field private final combinedStream:Ljava/io/InputStream;

.field private final resource:Lcz/msebera/android/httpclient/client/cache/Resource;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/client/cache/Resource;Ljava/io/InputStream;)V
    .locals 2

    invoke-direct {p0}, Lcz/msebera/android/httpclient/entity/AbstractHttpEntity;-><init>()V

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CombinedEntity;->resource:Lcz/msebera/android/httpclient/client/cache/Resource;

    new-instance v0, Ljava/io/SequenceInputStream;

    new-instance v1, Lcz/msebera/android/httpclient/impl/client/cache/CombinedEntity$ResourceStream;

    invoke-interface {p1}, Lcz/msebera/android/httpclient/client/cache/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/CombinedEntity$ResourceStream;-><init>(Lcz/msebera/android/httpclient/impl/client/cache/CombinedEntity;Ljava/io/InputStream;)V

    invoke-direct {v0, v1, p2}, Ljava/io/SequenceInputStream;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CombinedEntity;->combinedStream:Ljava/io/InputStream;

    return-void
.end method

.method public static synthetic access$000(Lcz/msebera/android/httpclient/impl/client/cache/CombinedEntity;)V
    .locals 0

    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/client/cache/CombinedEntity;->dispose()V

    return-void
.end method

.method private dispose()V
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CombinedEntity;->resource:Lcz/msebera/android/httpclient/client/cache/Resource;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/client/cache/Resource;->dispose()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CombinedEntity;->combinedStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public isRepeatable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isStreaming()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 4

    const-string v0, "Output stream"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/cache/CombinedEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    const/16 v1, 0x800

    :try_start_0
    new-array v1, v1, [B

    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw p1
.end method
