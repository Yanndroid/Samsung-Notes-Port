.class public interface abstract Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/EventBus;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getListeners()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/Listenable;",
            ">;"
        }
    .end annotation
.end method

.method public abstract publish(Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/Event;)Z
.end method

.method public abstract register(Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/Listenable;)V
.end method

.method public abstract unregister(Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/Listenable;)V
.end method
