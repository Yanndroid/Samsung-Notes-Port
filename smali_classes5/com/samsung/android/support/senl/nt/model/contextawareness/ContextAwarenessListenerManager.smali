.class public Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessListenerManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessListenerManager$MessageHandler;
    }
.end annotation


# static fields
.field private static final LIST_CAPACITY:I = 0xa

.field private static final MESSAGE_NOTIFY_FINISHED:I = 0x1

.field private static final SCHEDULING_INTERVAL_TIME:J = 0x12cL

.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessListenerManager;


# instance fields
.field private final mHandler:Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessListenerManager$MessageHandler;

.field private final mListenerMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mSchedulingResultList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "ContextAwarenessListenerManager"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/model/common/log/CALogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessListenerManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessListenerManager;->mListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessListenerManager;->mSchedulingResultList:Ljava/util/List;

    new-instance v0, Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessListenerManager$MessageHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessListenerManager$MessageHandler;-><init>(Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessListenerManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessListenerManager;->mHandler:Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessListenerManager$MessageHandler;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessListenerManager;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessListenerManager;->mSchedulingResultList:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessListenerManager;Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessListenerManager;->notifyContextAwarenessFinishedImmediately(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult;)V

    return-void
.end method

.method public static bridge synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessListenerManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessListenerManager;
    .locals 2

    const-class v0, Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessListenerManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessListenerManager;->sInstance:Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessListenerManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessListenerManager;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessListenerManager;-><init>()V

    sput-object v1, Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessListenerManager;->sInstance:Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessListenerManager;

    :cond_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessListenerManager;->sInstance:Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessListenerManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private notifyContextAwarenessFinishedImmediately(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult;)V
    .locals 2
    .param p1    # Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessListenerManager;->TAG:Ljava/lang/String;

    const-string v1, "notifyContextAwarenessFinishedImmediately"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessListenerManager;->mListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessListener;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessListener;->onContextAwarenessFinished(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private notifyContextAwarenessFinishedScheduling(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult;)V
    .locals 13
    .param p1    # Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessListenerManager;->mSchedulingResultList:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessListenerManager;->mSchedulingResultList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0xa

    if-le v0, v2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessListenerManager;->mSchedulingResultList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessListenerManager;->mSchedulingResultList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessListenerManager;->mSchedulingResultList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v1, :cond_1

    :goto_0
    invoke-direct {p0, v2}, Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessListenerManager;->notifyContextAwarenessFinishedImmediately(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult;)V

    goto/16 :goto_1

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessListenerManager;->mSchedulingResultList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult;

    invoke-interface {v2}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult;->getSuggestionInfoList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult;->getSuggestionInfoList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sget-object v4, Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessListenerManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "notifyContextAwarenessFinishedScheduling first/second "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, ")"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessListenerManager;->mSchedulingResultList:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_2
    sub-long/2addr v6, v8

    const-wide/16 v3, 0x12c

    cmp-long p1, v6, v3

    if-ltz p1, :cond_3

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessListenerManager;->mHandler:Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessListenerManager$MessageHandler;

    invoke-virtual {v0}, Landroid/util/Pair;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessListenerManager;->mHandler:Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessListenerManager$MessageHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessListenerManager;->mHandler:Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessListenerManager$MessageHandler;

    invoke-virtual {v0, p1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_1
    return-void
.end method


# virtual methods
.method public addListener(ILcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessListener;)V
    .locals 2

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessListenerManager;->mListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessListenerManager;->mListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public notifyContextAwarenessFinished(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult;)V
    .locals 2
    .param p1    # Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessListenerManager;->TAG:Ljava/lang/String;

    const-string v1, "notifyContextAwarenessFinished"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessListenerManager;->mListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult;->getRequest()Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Request;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Request;->DRAW_SUGGESTION:Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Request;

    if-ne v0, v1, :cond_1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult;->getResponse()Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Response;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Response;->DRAW_SUGGESTION_SUCCESS:Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Response;

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessListenerManager;->notifyContextAwarenessFinishedScheduling(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessListenerManager;->notifyContextAwarenessFinishedImmediately(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult;)V

    :goto_0
    return-void
.end method

.method public notifyContextAwarenessStarted()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessListenerManager;->mListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessListenerManager;->mListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessListener;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessListener;->onContextAwarenessStarted()V

    :cond_2
    return-void
.end method

.method public removeListener(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessListenerManager;->mListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessListenerManager;->mListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
