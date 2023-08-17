.class Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/EventManager$DefaultEventBusImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/EventBus;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/EventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultEventBusImpl"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultEventBusImpl"


# instance fields
.field private final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/Listenable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/EventManager$DefaultEventBusImpl;->mListeners:Ljava/util/Set;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/EventManager$DefaultEventBusImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getListeners()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/Listenable;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/EventManager$DefaultEventBusImpl;->mListeners:Ljava/util/Set;

    return-object v0
.end method

.method public publish(Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/Event;)Z
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/EventManager$DefaultEventBusImpl;->mListeners:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/EventManager$DefaultEventBusImpl;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/Listenable;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/Event;->getEventType()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/Listenable;->requestName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    :try_start_1
    invoke-interface {v3, p1}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/Listenable;->run(Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/Event;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_2
    const-string v4, "DefaultEventBusImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "publish failed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public register(Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/Listenable;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/EventManager$DefaultEventBusImpl;->mListeners:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/EventManager$DefaultEventBusImpl;->mListeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public unregister(Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/Listenable;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/EventManager$DefaultEventBusImpl;->mListeners:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/EventManager$DefaultEventBusImpl;->mListeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
