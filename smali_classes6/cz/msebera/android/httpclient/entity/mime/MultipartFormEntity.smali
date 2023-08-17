.class Lcz/msebera/android/httpclient/entity/mime/MultipartFormEntity;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcz/msebera/android/httpclient/HttpEntity;


# instance fields
.field private final contentLength:J

.field private final contentType:Lcz/msebera/android/httpclient/Header;

.field private final multipart:Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;Lcz/msebera/android/httpclient/entity/ContentType;J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcz/msebera/android/httpclient/entity/mime/MultipartFormEntity;->multipart:Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;

    new-instance p1, Lcz/msebera/android/httpclient/message/BasicHeader;

    invoke-virtual {p2}, Lcz/msebera/android/httpclient/entity/ContentType;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Content-Type"

    invoke-direct {p1, v0, p2}, Lcz/msebera/android/httpclient/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcz/msebera/android/httpclient/entity/mime/MultipartFormEntity;->contentType:Lcz/msebera/android/httpclient/Header;

    iput-wide p3, p0, Lcz/msebera/android/httpclient/entity/mime/MultipartFormEntity;->contentLength:J

    return-void
.end method


# virtual methods
.method public consumeContent()V
    .locals 0

    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 4

    iget-wide v0, p0, Lcz/msebera/android/httpclient/entity/mime/MultipartFormEntity;->contentLength:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    const-wide/16 v2, 0x6400

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/entity/mime/MultipartFormEntity;->writeTo(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v1

    :cond_0
    new-instance v0, Lcz/msebera/android/httpclient/ContentTooLongException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Content length is too long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcz/msebera/android/httpclient/entity/mime/MultipartFormEntity;->contentLength:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/ContentTooLongException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcz/msebera/android/httpclient/ContentTooLongException;

    const-string v1, "Content length is unknown"

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/ContentTooLongException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getContentEncoding()Lcz/msebera/android/httpclient/Header;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    iget-wide v0, p0, Lcz/msebera/android/httpclient/entity/mime/MultipartFormEntity;->contentLength:J

    return-wide v0
.end method

.method public getContentType()Lcz/msebera/android/httpclient/Header;
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/mime/MultipartFormEntity;->contentType:Lcz/msebera/android/httpclient/Header;

    return-object v0
.end method

.method public getMultipart()Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/mime/MultipartFormEntity;->multipart:Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;

    return-object v0
.end method

.method public isChunked()Z
    .locals 1

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/entity/mime/MultipartFormEntity;->isRepeatable()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isRepeatable()Z
    .locals 4

    iget-wide v0, p0, Lcz/msebera/android/httpclient/entity/mime/MultipartFormEntity;->contentLength:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStreaming()Z
    .locals 1

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/entity/mime/MultipartFormEntity;->isRepeatable()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/mime/MultipartFormEntity;->multipart:Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->writeTo(Ljava/io/OutputStream;)V

    return-void
.end method
