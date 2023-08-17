.class public interface abstract Lcom/google/android/livesharing/CoWatchingSessionDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/livesharing/annotations/PublicApi;
.end annotation


# virtual methods
.method public abstract onCoWatchingStateChanged(Lcom/google/android/livesharing/CoWatchingState;)V
    .param p1    # Lcom/google/android/livesharing/CoWatchingState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onCoWatchingStateQuery()Ljava/util/Optional;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/google/android/livesharing/CoWatchingState;",
            ">;"
        }
    .end annotation
.end method
