.class public interface abstract Lcom/airbnb/lottie/network/LottieNetworkFetcher;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract fetchSync(Ljava/lang/String;)Lcom/airbnb/lottie/network/LottieFetchResult;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation
.end method
