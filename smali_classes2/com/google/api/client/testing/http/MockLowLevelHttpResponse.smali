.class public Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;
.super Lcom/google/api/client/http/LowLevelHttpResponse;
.source "SourceFile"


# annotations
.annotation build Lcom/google/api/client/util/Beta;
.end annotation


# instance fields
.field private content:Ljava/io/InputStream;

.field private contentEncoding:Ljava/lang/String;

.field private contentLength:J

.field private contentType:Ljava/lang/String;

.field private headerNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private headerValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isDisconnected:Z

.field private reasonPhrase:Ljava/lang/String;

.field private statusCode:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/api/client/http/LowLevelHttpResponse;-><init>()V

    const/16 v0, 0xc8

    iput v0, p0, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->statusCode:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->headerNames:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->headerValues:Ljava/util/List;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->contentLength:J

    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;
    .locals 1

    iget-object v0, p0, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->headerNames:Ljava/util/List;

    invoke-static {p1}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->headerValues:Ljava/util/List;

    invoke-static {p2}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public disconnect()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->isDisconnected:Z

    invoke-super {p0}, Lcom/google/api/client/http/LowLevelHttpResponse;->disconnect()V

    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->content:Ljava/io/InputStream;

    return-object v0
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->contentEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    iget-wide v0, p0, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->contentLength:J

    return-wide v0
.end method

.method public final getContentType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaderCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->headerNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getHeaderName(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->headerNames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final getHeaderNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->headerNames:Ljava/util/List;

    return-object v0
.end method

.method public getHeaderValue(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->headerValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final getHeaderValues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->headerValues:Ljava/util/List;

    return-object v0
.end method

.method public getReasonPhrase()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->reasonPhrase:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    iget v0, p0, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->statusCode:I

    return v0
.end method

.method public getStatusLine()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->statusCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->reasonPhrase:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isDisconnected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->isDisconnected:Z

    return v0
.end method

.method public setContent(Ljava/io/InputStream;)Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;
    .locals 0

    iput-object p1, p0, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->content:Ljava/io/InputStream;

    return-object p0
.end method

.method public setContent(Ljava/lang/String;)Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->setZeroContent()Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/google/api/client/util/StringUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->setContent([B)Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public setContent([B)Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;
    .locals 2

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->setZeroContent()Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Lcom/google/api/client/testing/util/TestableByteArrayInputStream;

    invoke-direct {v0, p1}, Lcom/google/api/client/testing/util/TestableByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->content:Ljava/io/InputStream;

    array-length p1, p1

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->setContentLength(J)Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;

    return-object p0
.end method

.method public setContentEncoding(Ljava/lang/String;)Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;
    .locals 0

    iput-object p1, p0, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->contentEncoding:Ljava/lang/String;

    return-object p0
.end method

.method public setContentLength(J)Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;
    .locals 2

    iput-wide p1, p0, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->contentLength:J

    const-wide/16 v0, -0x1

    cmp-long p1, p1, v0

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/google/api/client/util/Preconditions;->checkArgument(Z)V

    return-object p0
.end method

.method public setContentType(Ljava/lang/String;)Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;
    .locals 0

    iput-object p1, p0, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->contentType:Ljava/lang/String;

    return-object p0
.end method

.method public setHeaderNames(Ljava/util/List;)Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->headerNames:Ljava/util/List;

    return-object p0
.end method

.method public setHeaderValues(Ljava/util/List;)Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->headerValues:Ljava/util/List;

    return-object p0
.end method

.method public setReasonPhrase(Ljava/lang/String;)Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;
    .locals 0

    iput-object p1, p0, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->reasonPhrase:Ljava/lang/String;

    return-object p0
.end method

.method public setStatusCode(I)Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;
    .locals 0

    iput p1, p0, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->statusCode:I

    return-object p0
.end method

.method public setZeroContent()Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->content:Ljava/io/InputStream;

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->setContentLength(J)Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;

    return-object p0
.end method
