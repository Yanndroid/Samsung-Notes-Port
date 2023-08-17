.class public interface abstract Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController$SearchCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SearchCallback"
.end annotation


# virtual methods
.method public abstract onAfterSearchOnThread()V
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation
.end method

.method public abstract onBeforeSearchOnThread(Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchModel;)V
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation
.end method

.method public abstract onPreSearchCancel()V
.end method

.method public abstract onSearchDone(Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchModel;)V
    .annotation build Landroidx/annotation/MainThread;
    .end annotation
.end method

.method public abstract onSearchReady()V
    .annotation build Landroidx/annotation/MainThread;
    .end annotation
.end method

.method public abstract onUpdateSearchingResult(ILcom/samsung/android/sdk/composer/search/SearchData;)V
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation
.end method
