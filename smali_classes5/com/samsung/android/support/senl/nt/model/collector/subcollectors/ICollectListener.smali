.class public interface abstract Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollectListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getOpenedDoc(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;)Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;
.end method

.method public abstract onCollectCanceled(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectResult;)V
.end method

.method public abstract onCollectFailed(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectResult;)V
.end method

.method public abstract onCollectFinished(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectResult;)V
.end method

.method public abstract onCollectStarted(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;)V
.end method

.method public abstract setStrokeRecognitionData(Ljava/util/Map;Ljava/util/List;Z)V
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
.end method
