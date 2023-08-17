.class public interface abstract Lcom/google/android/livesharing/CoDoingSessionDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/livesharing/annotations/PublicApi;
.end annotation


# virtual methods
.method public abstract onCoDoingStateChanged(Lcom/google/android/livesharing/CoDoingState;)V
    .param p1    # Lcom/google/android/livesharing/CoDoingState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onCoDoingStateQuery()Ljava/util/Optional;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/google/android/livesharing/CoDoingState;",
            ">;"
        }
    .end annotation
.end method
