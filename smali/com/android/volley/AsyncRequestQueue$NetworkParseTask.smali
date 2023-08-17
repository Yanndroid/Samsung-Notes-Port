.class Lcom/android/volley/AsyncRequestQueue$NetworkParseTask;
.super Lcom/android/volley/RequestTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/AsyncRequestQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NetworkParseTask"
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
.field public networkResponse:Lcom/android/volley/NetworkResponse;

.field public final synthetic this$0:Lcom/android/volley/AsyncRequestQueue;


# direct methods
.method public constructor <init>(Lcom/android/volley/AsyncRequestQueue;Lcom/android/volley/Request;Lcom/android/volley/NetworkResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "TT;>;",
            "Lcom/android/volley/NetworkResponse;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/volley/AsyncRequestQueue$NetworkParseTask;->this$0:Lcom/android/volley/AsyncRequestQueue;

    invoke-direct {p0, p2}, Lcom/android/volley/RequestTask;-><init>(Lcom/android/volley/Request;)V

    iput-object p3, p0, Lcom/android/volley/AsyncRequestQueue$NetworkParseTask;->networkResponse:Lcom/android/volley/NetworkResponse;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/android/volley/RequestTask;->mRequest:Lcom/android/volley/Request;

    iget-object v1, p0, Lcom/android/volley/AsyncRequestQueue$NetworkParseTask;->networkResponse:Lcom/android/volley/NetworkResponse;

    invoke-virtual {v0, v1}, Lcom/android/volley/Request;->parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;

    move-result-object v0

    iget-object v1, p0, Lcom/android/volley/RequestTask;->mRequest:Lcom/android/volley/Request;

    const-string v2, "network-parse-complete"

    invoke-virtual {v1, v2}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/volley/RequestTask;->mRequest:Lcom/android/volley/Request;

    invoke-virtual {v1}, Lcom/android/volley/Request;->shouldCache()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/volley/Response;->cacheEntry:Lcom/android/volley/Cache$Entry;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/volley/AsyncRequestQueue$NetworkParseTask;->this$0:Lcom/android/volley/AsyncRequestQueue;

    invoke-static {v1}, Lcom/android/volley/AsyncRequestQueue;->access$100(Lcom/android/volley/AsyncRequestQueue;)Lcom/android/volley/AsyncCache;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/volley/AsyncRequestQueue$NetworkParseTask;->this$0:Lcom/android/volley/AsyncRequestQueue;

    invoke-static {v1}, Lcom/android/volley/AsyncRequestQueue;->access$200(Lcom/android/volley/AsyncRequestQueue;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/android/volley/AsyncRequestQueue$CachePutTask;

    iget-object v3, p0, Lcom/android/volley/AsyncRequestQueue$NetworkParseTask;->this$0:Lcom/android/volley/AsyncRequestQueue;

    iget-object v4, p0, Lcom/android/volley/RequestTask;->mRequest:Lcom/android/volley/Request;

    invoke-direct {v2, v3, v4, v0}, Lcom/android/volley/AsyncRequestQueue$CachePutTask;-><init>(Lcom/android/volley/AsyncRequestQueue;Lcom/android/volley/Request;Lcom/android/volley/Response;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/volley/AsyncRequestQueue$NetworkParseTask;->this$0:Lcom/android/volley/AsyncRequestQueue;

    invoke-static {v1}, Lcom/android/volley/AsyncRequestQueue;->access$500(Lcom/android/volley/AsyncRequestQueue;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/android/volley/AsyncRequestQueue$CachePutTask;

    iget-object v3, p0, Lcom/android/volley/AsyncRequestQueue$NetworkParseTask;->this$0:Lcom/android/volley/AsyncRequestQueue;

    iget-object v4, p0, Lcom/android/volley/RequestTask;->mRequest:Lcom/android/volley/Request;

    invoke-direct {v2, v3, v4, v0}, Lcom/android/volley/AsyncRequestQueue$CachePutTask;-><init>(Lcom/android/volley/AsyncRequestQueue;Lcom/android/volley/Request;Lcom/android/volley/Response;)V

    :goto_0
    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/volley/AsyncRequestQueue$NetworkParseTask;->this$0:Lcom/android/volley/AsyncRequestQueue;

    iget-object v2, p0, Lcom/android/volley/RequestTask;->mRequest:Lcom/android/volley/Request;

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/android/volley/AsyncRequestQueue;->access$700(Lcom/android/volley/AsyncRequestQueue;Lcom/android/volley/Request;Lcom/android/volley/Response;Z)V

    :goto_1
    return-void
.end method
