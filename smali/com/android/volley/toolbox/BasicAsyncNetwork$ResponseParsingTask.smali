.class Lcom/android/volley/toolbox/BasicAsyncNetwork$ResponseParsingTask;
.super Lcom/android/volley/RequestTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/toolbox/BasicAsyncNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ResponseParsingTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/volley/RequestTask<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public callback:Lcom/android/volley/AsyncNetwork$OnRequestComplete;

.field public httpResponse:Lcom/android/volley/toolbox/HttpResponse;

.field public inputStream:Ljava/io/InputStream;

.field public request:Lcom/android/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Request<",
            "TT;>;"
        }
    .end annotation
.end field

.field public requestStartMs:J

.field public responseHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/volley/Header;",
            ">;"
        }
    .end annotation
.end field

.field public statusCode:I

.field public final synthetic this$0:Lcom/android/volley/toolbox/BasicAsyncNetwork;


# direct methods
.method public constructor <init>(Lcom/android/volley/toolbox/BasicAsyncNetwork;Ljava/io/InputStream;Lcom/android/volley/toolbox/HttpResponse;Lcom/android/volley/Request;Lcom/android/volley/AsyncNetwork$OnRequestComplete;JLjava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lcom/android/volley/toolbox/HttpResponse;",
            "Lcom/android/volley/Request<",
            "TT;>;",
            "Lcom/android/volley/AsyncNetwork$OnRequestComplete;",
            "J",
            "Ljava/util/List<",
            "Lcom/android/volley/Header;",
            ">;I)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$ResponseParsingTask;->this$0:Lcom/android/volley/toolbox/BasicAsyncNetwork;

    invoke-direct {p0, p4}, Lcom/android/volley/RequestTask;-><init>(Lcom/android/volley/Request;)V

    iput-object p2, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$ResponseParsingTask;->inputStream:Ljava/io/InputStream;

    iput-object p3, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$ResponseParsingTask;->httpResponse:Lcom/android/volley/toolbox/HttpResponse;

    iput-object p4, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$ResponseParsingTask;->request:Lcom/android/volley/Request;

    iput-object p5, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$ResponseParsingTask;->callback:Lcom/android/volley/AsyncNetwork$OnRequestComplete;

    iput-wide p6, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$ResponseParsingTask;->requestStartMs:J

    iput-object p8, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$ResponseParsingTask;->responseHeaders:Ljava/util/List;

    iput p9, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$ResponseParsingTask;->statusCode:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    :try_start_0
    iget-object v0, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$ResponseParsingTask;->inputStream:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$ResponseParsingTask;->httpResponse:Lcom/android/volley/toolbox/HttpResponse;

    invoke-virtual {v1}, Lcom/android/volley/toolbox/HttpResponse;->getContentLength()I

    move-result v1

    iget-object v2, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$ResponseParsingTask;->this$0:Lcom/android/volley/toolbox/BasicAsyncNetwork;

    invoke-static {v2}, Lcom/android/volley/toolbox/BasicAsyncNetwork;->access$200(Lcom/android/volley/toolbox/BasicAsyncNetwork;)Lcom/android/volley/toolbox/ByteArrayPool;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/volley/toolbox/NetworkUtility;->inputStreamToBytes(Ljava/io/InputStream;ILcom/android/volley/toolbox/ByteArrayPool;)[B

    move-result-object v11
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v3, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$ResponseParsingTask;->this$0:Lcom/android/volley/toolbox/BasicAsyncNetwork;

    iget-wide v4, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$ResponseParsingTask;->requestStartMs:J

    iget v6, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$ResponseParsingTask;->statusCode:I

    iget-object v7, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$ResponseParsingTask;->httpResponse:Lcom/android/volley/toolbox/HttpResponse;

    iget-object v8, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$ResponseParsingTask;->request:Lcom/android/volley/Request;

    iget-object v9, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$ResponseParsingTask;->callback:Lcom/android/volley/AsyncNetwork$OnRequestComplete;

    iget-object v10, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$ResponseParsingTask;->responseHeaders:Ljava/util/List;

    invoke-static/range {v3 .. v11}, Lcom/android/volley/toolbox/BasicAsyncNetwork;->access$300(Lcom/android/volley/toolbox/BasicAsyncNetwork;JILcom/android/volley/toolbox/HttpResponse;Lcom/android/volley/Request;Lcom/android/volley/AsyncNetwork$OnRequestComplete;Ljava/util/List;[B)V

    return-void

    :catch_0
    move-exception v0

    move-object v4, v0

    iget-object v1, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$ResponseParsingTask;->this$0:Lcom/android/volley/toolbox/BasicAsyncNetwork;

    iget-object v2, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$ResponseParsingTask;->request:Lcom/android/volley/Request;

    iget-object v3, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$ResponseParsingTask;->callback:Lcom/android/volley/AsyncNetwork$OnRequestComplete;

    iget-wide v5, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$ResponseParsingTask;->requestStartMs:J

    iget-object v7, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$ResponseParsingTask;->httpResponse:Lcom/android/volley/toolbox/HttpResponse;

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/android/volley/toolbox/BasicAsyncNetwork;->access$100(Lcom/android/volley/toolbox/BasicAsyncNetwork;Lcom/android/volley/Request;Lcom/android/volley/AsyncNetwork$OnRequestComplete;Ljava/io/IOException;JLcom/android/volley/toolbox/HttpResponse;[B)V

    return-void
.end method
