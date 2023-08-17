.class public abstract Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/AbsCollectListenerManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollectListenerManager;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollectListenerManager<",
        "Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollectListener;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public final mListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollectListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "AbsCollectListenerManager"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/model/common/log/CollectLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/AbsCollectListenerManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/AbsCollectListenerManager;->mListenerList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addListener(Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollectListener;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/AbsCollectListenerManager;->mListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/AbsCollectListenerManager;->mListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic addListener(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollectListener;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/AbsCollectListenerManager;->addListener(Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollectListener;)V

    return-void
.end method

.method public getOpenedDoc(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;)Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/AbsCollectListenerManager;->mListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollectListener;

    invoke-interface {v1, p1}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollectListener;->getOpenedDoc(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;)Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public notifyOnCollectCanceled(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;Lcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/AbsCollectListenerManager;->mListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/AbsCollectListenerManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyOnCollectCanceled, uuid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/AbsCollectListenerManager;->mListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollectListener;

    new-instance v2, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectResult;

    sget-object v3, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectResult$Result;->CANCELED:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectResult$Result;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectResult$Result;->getValue()I

    move-result v3

    invoke-direct {v2, v3, p2}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectResult;-><init>(ILcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;)V

    invoke-interface {v1, p1, v2}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollectListener;->onCollectCanceled(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectResult;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public notifyOnCollectFailed(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;Lcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/AbsCollectListenerManager;->mListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/AbsCollectListenerManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyOnCollectFailed, uuid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/AbsCollectListenerManager;->mListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollectListener;

    new-instance v2, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectResult;

    sget-object v3, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectResult$Result;->FAILED:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectResult$Result;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectResult$Result;->getValue()I

    move-result v3

    invoke-direct {v2, v3, p2}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectResult;-><init>(ILcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;)V

    invoke-interface {v1, p1, v2}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollectListener;->onCollectFailed(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectResult;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public notifyOnCollectFinished(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;Lcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/AbsCollectListenerManager;->mListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/AbsCollectListenerManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyOnCollectFinished, uuid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/AbsCollectListenerManager;->mListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollectListener;

    new-instance v2, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectResult;

    sget-object v3, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectResult$Result;->FINISHED:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectResult$Result;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectResult$Result;->getValue()I

    move-result v3

    invoke-direct {v2, v3, p2}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectResult;-><init>(ILcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;)V

    invoke-interface {v1, p1, v2}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollectListener;->onCollectFinished(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectResult;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public notifyOnCollectStarted(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/AbsCollectListenerManager;->mListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/AbsCollectListenerManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyOnCollectStarted, uuid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/AbsCollectListenerManager;->mListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollectListener;

    invoke-interface {v1, p1}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollectListener;->onCollectStarted(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeListener(Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollectListener;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/AbsCollectListenerManager;->mListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/AbsCollectListenerManager;->mListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic removeListener(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollectListener;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/AbsCollectListenerManager;->removeListener(Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollectListener;)V

    return-void
.end method

.method public setStrokeRecognitionData(Ljava/util/Map;Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$StrokeRecognitionData;",
            ">;>;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/AbsCollectListenerManager;->mListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollectListener;

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollectListener;->setStrokeRecognitionData(Ljava/util/Map;Ljava/util/List;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method
