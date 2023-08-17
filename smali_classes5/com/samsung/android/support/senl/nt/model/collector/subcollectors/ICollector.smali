.class public interface abstract Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollector;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract cancel()Z
.end method

.method public abstract cancelNext()Z
.end method

.method public abstract collect(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;Lcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;)Z
.end method

.method public abstract collectNext(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;Lcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;)Z
.end method

.method public abstract fail(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;Lcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;)Z
.end method

.method public abstract failNext(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;Lcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;)Z
.end method

.method public abstract isAvailable(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;)Z
.end method

.method public abstract isCanceled()Z
.end method

.method public abstract isSupported()Z
.end method

.method public abstract linkWith(Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollector;)Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollector;
.end method

.method public abstract postCollect(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;Lcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;)V
.end method

.method public abstract preCollect(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;Lcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;)V
.end method
