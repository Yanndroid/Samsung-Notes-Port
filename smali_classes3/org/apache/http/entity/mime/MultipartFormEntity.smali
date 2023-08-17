.class Lorg/apache/http/entity/mime/MultipartFormEntity;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/http/HttpEntity;


# instance fields
.field private final contentLength:J

.field private final contentType:Lorg/apache/http/Header;

.field private final multipart:Lorg/apache/http/entity/mime/AbstractMultipartForm;


# direct methods
.method public constructor <init>(Lorg/apache/http/entity/mime/AbstractMultipartForm;Ljava/lang/String;J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/http/entity/mime/MultipartFormEntity;->multipart:Lorg/apache/http/entity/mime/AbstractMultipartForm;

    new-instance p1, Lorg/apache/http/message/BasicHeader;

    const-string v0, "Content-Type"

    invoke-direct {p1, v0, p2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/apache/http/entity/mime/MultipartFormEntity;->contentType:Lorg/apache/http/Header;

    iput-wide p3, p0, Lorg/apache/http/entity/mime/MultipartFormEntity;->contentLength:J

    return-void
.end method


# virtual methods
.method public consumeContent()V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/http/entity/mime/MultipartFormEntity;->isStreaming()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Streaming entity does not implement #consumeContent()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Multipart form entity does not implement #getContent()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getContentEncoding()Lorg/apache/http/Header;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/http/entity/mime/MultipartFormEntity;->contentLength:J

    return-wide v0
.end method

.method public getContentType()Lorg/apache/http/Header;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/entity/mime/MultipartFormEntity;->contentType:Lorg/apache/http/Header;

    return-object v0
.end method

.method public getMultipart()Lorg/apache/http/entity/mime/AbstractMultipartForm;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/entity/mime/MultipartFormEntity;->multipart:Lorg/apache/http/entity/mime/AbstractMultipartForm;

    return-object v0
.end method

.method public isChunked()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/http/entity/mime/MultipartFormEntity;->isRepeatable()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isRepeatable()Z
    .locals 4

    iget-wide v0, p0, Lorg/apache/http/entity/mime/MultipartFormEntity;->contentLength:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isStreaming()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/http/entity/mime/MultipartFormEntity;->isRepeatable()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/http/entity/mime/MultipartFormEntity;->multipart:Lorg/apache/http/entity/mime/AbstractMultipartForm;

    invoke-virtual {v0, p1}, Lorg/apache/http/entity/mime/AbstractMultipartForm;->writeTo(Ljava/io/OutputStream;)V

    return-void
.end method
