.class public Lcom/android/volley/toolbox/NoAsyncCache;
.super Lcom/android/volley/AsyncCache;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/volley/AsyncCache;-><init>()V

    return-void
.end method


# virtual methods
.method public clear(Lcom/android/volley/AsyncCache$OnWriteCompleteCallback;)V
    .locals 0

    invoke-interface {p1}, Lcom/android/volley/AsyncCache$OnWriteCompleteCallback;->onWriteComplete()V

    return-void
.end method

.method public get(Ljava/lang/String;Lcom/android/volley/AsyncCache$OnGetCompleteCallback;)V
    .locals 0

    const/4 p1, 0x0

    invoke-interface {p2, p1}, Lcom/android/volley/AsyncCache$OnGetCompleteCallback;->onGetComplete(Lcom/android/volley/Cache$Entry;)V

    return-void
.end method

.method public initialize(Lcom/android/volley/AsyncCache$OnWriteCompleteCallback;)V
    .locals 0

    invoke-interface {p1}, Lcom/android/volley/AsyncCache$OnWriteCompleteCallback;->onWriteComplete()V

    return-void
.end method

.method public invalidate(Ljava/lang/String;ZLcom/android/volley/AsyncCache$OnWriteCompleteCallback;)V
    .locals 0

    invoke-interface {p3}, Lcom/android/volley/AsyncCache$OnWriteCompleteCallback;->onWriteComplete()V

    return-void
.end method

.method public put(Ljava/lang/String;Lcom/android/volley/Cache$Entry;Lcom/android/volley/AsyncCache$OnWriteCompleteCallback;)V
    .locals 0

    invoke-interface {p3}, Lcom/android/volley/AsyncCache$OnWriteCompleteCallback;->onWriteComplete()V

    return-void
.end method

.method public remove(Ljava/lang/String;Lcom/android/volley/AsyncCache$OnWriteCompleteCallback;)V
    .locals 0

    invoke-interface {p2}, Lcom/android/volley/AsyncCache$OnWriteCompleteCallback;->onWriteComplete()V

    return-void
.end method
