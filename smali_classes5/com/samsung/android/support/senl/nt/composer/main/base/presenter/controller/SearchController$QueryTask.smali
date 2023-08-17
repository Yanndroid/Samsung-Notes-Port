.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController$QueryTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QueryTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchModel;",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchModel;",
        ">;"
    }
.end annotation


# instance fields
.field public includeSearchData:Z

.field public searchCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController$SearchCallback;

.field public searchController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController;

.field public searchEngine:Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchEngine;

.field public threadId:J

.field public word:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController;Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchEngine;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController$SearchCallback;Z)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController$QueryTask;->searchController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController$QueryTask;->searchEngine:Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchEngine;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController$QueryTask;->word:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController$QueryTask;->searchCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController$SearchCallback;

    iput-boolean p5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController$QueryTask;->includeSearchData:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController;Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchEngine;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController$SearchCallback;ZLcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/b;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController$QueryTask;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController;Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchEngine;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController$SearchCallback;Z)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController$QueryTask;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController$QueryTask;->getWord()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getWord()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController$QueryTask;->word:Ljava/lang/String;

    return-object v0
.end method

.method private release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController$QueryTask;->searchController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController$QueryTask;->searchCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController$SearchCallback;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController$QueryTask;->searchCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController$SearchCallback;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController$SearchCallback;->onPreSearchCancel()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    return-void
.end method

.method public varargs doInBackground([Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchModel;
    .locals 4

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doInBackground#  isReadyToCancel is true ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p1, v1

    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController$QueryTask;->threadId:J

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doInBackground# "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p1, v1

    invoke-static {v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController$QueryTask;->searchEngine:Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchEngine;

    aget-object p1, p1, v1

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController$QueryTask;->includeSearchData:Z

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchEngine;->createSearchModel(Ljava/lang/String;Z)Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchModel;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController$QueryTask;->searchCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController$SearchCallback;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController$SearchCallback;->onBeforeSearchOnThread(Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchModel;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController$QueryTask;->searchEngine:Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchEngine;

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController$QueryTask;->includeSearchData:Z

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchEngine;->searchComposer(Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchModel;Z)Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchModel;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController$QueryTask;->searchCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController$SearchCallback;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController$SearchCallback;->onAfterSearchOnThread()V

    return-object p1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController$QueryTask;->doInBackground([Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchModel;

    move-result-object p1

    return-object p1
.end method

.method public getThreadId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController$QueryTask;->threadId:J

    return-wide v0
.end method

.method public isReleased()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController$QueryTask;->searchController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onCancelled()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCancelled# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController$QueryTask;->word:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController$QueryTask;->release()V

    return-void
.end method

.method public onPostExecute(Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchModel;)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPostExecute# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController$QueryTask;->searchCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController$SearchCallback;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController$SearchCallback;->onSearchDone(Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchModel;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController$QueryTask;->release()V

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchModel;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController$QueryTask;->onPostExecute(Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchModel;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreExecute# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController$QueryTask;->word:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController$QueryTask;->searchCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController$SearchCallback;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController$SearchCallback;->onSearchReady()V

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
