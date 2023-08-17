.class public Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/scsp/framework/core/network/HttpRequestImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HttpRequestBuilder"
.end annotation


# instance fields
.field private content:Ljava/lang/Object;

.field private contentType:Ljava/lang/String;

.field private exceptErrorHandle:Z

.field private final headerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private length:J

.field private method:Lcom/samsung/scsp/framework/core/network/HttpRequest$Method;

.field private name:Ljava/lang/String;

.field private networkStatusListener:Lcom/samsung/scsp/framework/core/listeners/NetworkStatusListener;

.field private payloadWriter:Lcom/samsung/scsp/framework/core/network/visitor/PayloadWriterVisitor$PayloadWriter;

.field private progressListener:Lcom/samsung/scsp/framework/core/listeners/ProgressListener;

.field private range:J

.field private responseListener:Lcom/samsung/scsp/framework/core/listeners/ResponseListener;

.field private supportChunkedStreaming:Z

.field private timeout:I

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/scsp/framework/core/SContextHolder;Lcom/samsung/scsp/framework/core/network/HttpRequest$Method;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;->range:J

    iput-wide v0, p0, Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;->length:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;->payloadWriter:Lcom/samsung/scsp/framework/core/network/visitor/PayloadWriterVisitor$PayloadWriter;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;->supportChunkedStreaming:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;->exceptErrorHandle:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;->headerMap:Ljava/util/Map;

    iput-object p3, p0, Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;->url:Ljava/lang/String;

    iget p3, p1, Lcom/samsung/scsp/framework/core/SContextHolder;->requestTimeOut:I

    iput p3, p0, Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;->timeout:I

    iput-object p2, p0, Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;->method:Lcom/samsung/scsp/framework/core/network/HttpRequest$Method;

    invoke-static {p1}, Lcom/samsung/scsp/framework/core/network/HeaderSetup;->commonHeader(Lcom/samsung/scsp/framework/core/SContextHolder;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;->range:J

    iput-wide v0, p0, Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;->length:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;->payloadWriter:Lcom/samsung/scsp/framework/core/network/visitor/PayloadWriterVisitor$PayloadWriter;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;->supportChunkedStreaming:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;->exceptErrorHandle:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;->headerMap:Ljava/util/Map;

    iput-object p2, p0, Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;->url:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;->timeout:I

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;->url:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;)Lcom/samsung/scsp/framework/core/listeners/ResponseListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;->responseListener:Lcom/samsung/scsp/framework/core/listeners/ResponseListener;

    return-object p0
.end method

.method public static synthetic access$1100(Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;)Lcom/samsung/scsp/framework/core/listeners/ProgressListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;->progressListener:Lcom/samsung/scsp/framework/core/listeners/ProgressListener;

    return-object p0
.end method

.method public static synthetic access$1200(Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;)Lcom/samsung/scsp/framework/core/listeners/NetworkStatusListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;->networkStatusListener:Lcom/samsung/scsp/framework/core/listeners/NetworkStatusListener;

    return-object p0
.end method

.method public static synthetic access$1300(Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;->name:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1400(Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;->supportChunkedStreaming:Z

    return p0
.end method

.method public static synthetic access$1500(Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;->exceptErrorHandle:Z

    return p0
.end method

.method public static synthetic access$200(Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;)I
    .locals 0

    iget p0, p0, Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;->timeout:I

    return p0
.end method

.method public static synthetic access$300(Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;->contentType:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;->content:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;)Lcom/samsung/scsp/framework/core/network/visitor/PayloadWriterVisitor$PayloadWriter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;->payloadWriter:Lcom/samsung/scsp/framework/core/network/visitor/PayloadWriterVisitor$PayloadWriter;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;->headerMap:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;)Lcom/samsung/scsp/framework/core/network/HttpRequest$Method;
    .locals 0

    iget-object p0, p0, Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;->method:Lcom/samsung/scsp/framework/core/network/HttpRequest$Method;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;->range:J

    return-wide v0
.end method

.method public static synthetic access$900(Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;->length:J

    return-wide v0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;->headerMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public addHeaderMap(Ljava/util/Map;)Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;->headerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public addLength(J)Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;
    .locals 2

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Content-Length"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;

    iput-wide p1, p0, Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;->length:J

    return-object p0
.end method

.method public addRange(J)Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;
    .locals 3

    const-string v0, "Range"

    const-string v1, "bytes=0-"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_0

    const-wide/16 v1, 0x1

    add-long/2addr p1, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bytes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;

    :cond_0
    iput-wide p1, p0, Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;->range:J

    return-object p0
.end method

.method public addRange(JJJ)Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bytes "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, "/"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "Content-Range"

    invoke-virtual {p0, p4, p3}, Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;

    iput-wide p1, p0, Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;->range:J

    return-object p0
.end method

.method public build()Lcom/samsung/scsp/framework/core/network/HttpRequest;
    .locals 2

    new-instance v0, Lcom/samsung/scsp/framework/core/network/HttpRequestImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/scsp/framework/core/network/HttpRequestImpl;-><init>(Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$1;)V

    return-object v0
.end method

.method public clearHeader()Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;->headerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-object p0
.end method

.method public exceptErrorHandle(Z)Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;->exceptErrorHandle:Z

    return-object p0
.end method

.method public name(Ljava/lang/String;)Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;->name:Ljava/lang/String;

    return-object p0
.end method

.method public networkStatusListener(Lcom/samsung/scsp/framework/core/listeners/NetworkStatusListener;)Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;->networkStatusListener:Lcom/samsung/scsp/framework/core/listeners/NetworkStatusListener;

    return-object p0
.end method

.method public payload(Ljava/lang/String;Ljava/io/File;)Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;
    .locals 1

    const-string v0, "Content-Type"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;

    iput-object p1, p0, Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;->contentType:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;->content:Ljava/lang/Object;

    new-instance p1, Lcom/samsung/scsp/framework/core/network/visitor/FilePayloadWriter;

    invoke-direct {p1}, Lcom/samsung/scsp/framework/core/network/visitor/FilePayloadWriter;-><init>()V

    iput-object p1, p0, Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;->payloadWriter:Lcom/samsung/scsp/framework/core/network/visitor/PayloadWriterVisitor$PayloadWriter;

    return-object p0
.end method

.method public payload(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;
    .locals 1

    const-string v0, "Content-Type"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;

    iput-object p1, p0, Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;->contentType:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;->content:Ljava/lang/Object;

    new-instance p1, Lcom/samsung/scsp/framework/core/network/visitor/StringPayloadWriter;

    invoke-direct {p1}, Lcom/samsung/scsp/framework/core/network/visitor/StringPayloadWriter;-><init>()V

    iput-object p1, p0, Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;->payloadWriter:Lcom/samsung/scsp/framework/core/network/visitor/PayloadWriterVisitor$PayloadWriter;

    return-object p0
.end method

.method public progressListener(Lcom/samsung/scsp/framework/core/listeners/ProgressListener;)Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;->progressListener:Lcom/samsung/scsp/framework/core/listeners/ProgressListener;

    return-object p0
.end method

.method public removeHeader(Ljava/lang/String;)Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;->headerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public requestTimeOut(I)Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;
    .locals 0

    iput p1, p0, Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;->timeout:I

    return-object p0
.end method

.method public responseListener(Lcom/samsung/scsp/framework/core/listeners/ResponseListener;)Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;->responseListener:Lcom/samsung/scsp/framework/core/listeners/ResponseListener;

    return-object p0
.end method

.method public supportChunkedStreaming(Z)Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;->supportChunkedStreaming:Z

    return-object p0
.end method
