.class public Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Times;,
        Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;
    }
.end annotation


# static fields
.field public static final DEFAULT_SKIP_TIME:J = 0x2bcL

.field private static final TAG:Ljava/lang/String; = "UserInputSkipper"

.field private static mHoldingEventTime:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Times;

.field private static mHoldingSingleActionEventTime:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Times;

.field private static mHoldingSingleActionTagMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;",
            "Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Times;",
            ">;"
        }
    .end annotation
.end field

.field private static mHoldingTagMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;",
            "Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Times;",
            ">;"
        }
    .end annotation
.end field

.field private static mSkipEventTime:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Times;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Times;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Times;-><init>(JJ)V

    sput-object v0, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->mSkipEventTime:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Times;

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Times;

    invoke-direct {v0, v1, v2, v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Times;-><init>(JJ)V

    sput-object v0, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->mHoldingEventTime:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Times;

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Times;

    invoke-direct {v0, v1, v2, v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Times;-><init>(JJ)V

    sput-object v0, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->mHoldingSingleActionEventTime:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Times;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->mHoldingTagMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->mHoldingSingleActionTagMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized isValidEvent()Z
    .locals 2

    const-class v0, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->isValidEventFn()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static varargs declared-synchronized isValidEvent([Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;)Z
    .locals 10

    const-class v0, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    array-length v4, p0

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_2

    aget-object v7, p0, v6

    sget-object v8, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->mHoldingTagMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8, v7}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    sget-object v8, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->mHoldingTagMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Times;

    invoke-virtual {v8, v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Times;->isValid(J)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v8}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Times;->endTime()J

    move-result-wide v8

    cmp-long v8, v8, v1

    if-lez v8, :cond_0

    move-object v3, v7

    goto :goto_1

    :cond_0
    sget-object v8, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->mHoldingTagMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8, v7}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x1

    :goto_1
    const-string p0, "UserInputSkipper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isValidEvent, invalidTag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", ret: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v5

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static isValidEventFn()Z
    .locals 6

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->mSkipEventTime:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Times;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Times;->isActive()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->mHoldingEventTime:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Times;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Times;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->mSkipEventTime:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Times;

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Times;->isValid(J)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->mSkipEventTime:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Times;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Times;->endTime()J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-gez v0, :cond_2

    :cond_1
    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->mSkipEventTime:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Times;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Times;->reset()V

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->mHoldingEventTime:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Times;

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Times;->isValid(J)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->mHoldingEventTime:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Times;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Times;->endTime()J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-gez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return v0

    :cond_3
    :goto_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->mHoldingEventTime:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Times;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Times;->reset()V

    return v1
.end method

.method public static varargs declared-synchronized isValidSingleActionEvent(Z[Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;)Z
    .locals 10

    const-class v0, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;

    monitor-enter v0

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->isValidEventFn()Z

    move-result p0

    if-nez p0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    if-eqz p0, :cond_3

    array-length v5, p1

    move v6, v1

    :goto_1
    if-ge v6, v5, :cond_3

    aget-object v7, p1, v6

    sget-object v8, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->mHoldingSingleActionTagMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8, v7}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    sget-object v8, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->mHoldingSingleActionTagMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Times;

    invoke-virtual {v8, v2, v3}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Times;->isValid(J)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v8}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Times;->endTime()J

    move-result-wide v8

    cmp-long v8, v8, v2

    if-lez v8, :cond_1

    move-object v4, v7

    goto :goto_2

    :cond_1
    sget-object v8, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->mHoldingSingleActionTagMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8, v7}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    move v1, p0

    :goto_2
    const-string p0, "UserInputSkipper"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isValidSingleActionEvent, invalidTag: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", ret: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized releaseHoldingEventTimeByTag(Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;)V
    .locals 4

    const-class v0, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;

    monitor-enter v0

    :try_start_0
    const-string v1, "UserInputSkipper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releaseHoldingEventTimeByTag, request tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->mHoldingTagMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized releaseHoldingSingleActionEventTimeByTag(Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;)V
    .locals 4

    const-class v0, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;

    monitor-enter v0

    :try_start_0
    const-string v1, "UserInputSkipper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releaseHoldingEventTimeByTag, request tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->mHoldingSingleActionTagMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized reset()V
    .locals 2

    const-class v0, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->resetFn()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static varargs declared-synchronized reset(Z[Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;)V
    .locals 8

    const-class v0, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;

    monitor-enter v0

    if-eqz p1, :cond_6

    :try_start_0
    array-length v1, p1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->mHoldingTagMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p1, v3

    sget-object v5, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->mHoldingTagMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "UserInputSkipper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "reset, remainTag : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->mHoldingTagMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Times;

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    sput-object v1, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->mHoldingTagMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object p1, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->mHoldingEventTime:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Times;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Times;->reset()V

    sget-object p1, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->mHoldingTagMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    sget-object p1, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->mHoldingTagMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Times;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Times;->endTime()J

    move-result-wide v2

    sget-object v4, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->mHoldingEventTime:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Times;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Times;->endTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    sget-object v2, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->mHoldingEventTime:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Times;

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Times;->setTime(Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Times;)V

    goto :goto_1

    :cond_4
    if-eqz p0, :cond_5

    sget-object p0, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->mSkipEventTime:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Times;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Times;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    monitor-exit v0

    return-void

    :cond_6
    :goto_2
    :try_start_1
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->resetFn()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static resetFn()V
    .locals 2

    const-string v0, "UserInputSkipper"

    const-string v1, "resetFn"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->mHoldingTagMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->mHoldingEventTime:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Times;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Times;->reset()V

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->mSkipEventTime:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Times;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Times;->reset()V

    return-void
.end method

.method public static setDefaultSkipEventTime(Z)Z
    .locals 2

    const-wide/16 v0, 0x2bc

    invoke-static {v0, v1, p0}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->setSkipEventTime(JZ)Z

    move-result p0

    return p0
.end method

.method public static setHoldingEventTime()V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;->Default:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    const-wide/16 v1, 0x2bc

    invoke-static {v1, v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->setHoldingEventTime(JLcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;)V

    return-void
.end method

.method public static setHoldingEventTime(J)V
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;->Default:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    invoke-static {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->setHoldingEventTime(JLcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;)V

    return-void
.end method

.method public static declared-synchronized setHoldingEventTime(JLcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;)V
    .locals 7

    const-class v0, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;

    monitor-enter v0

    if-nez p2, :cond_0

    :try_start_0
    sget-object p2, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;->Default:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    :cond_0
    const-string v1, "UserInputSkipper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setHoldingEventTime, request time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", tag : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-object v3, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->mHoldingTagMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v4, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Times;

    invoke-direct {v4, v1, v2, p0, p1}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Times;-><init>(JJ)V

    invoke-virtual {v3, p2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p2, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->mHoldingEventTime:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Times;

    invoke-virtual {p2, v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Times;->isValid(J)Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p2, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->mHoldingEventTime:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Times;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Times;->endTime()J

    move-result-wide v3

    add-long v5, v1, p0

    cmp-long p2, v3, v5

    if-gez p2, :cond_2

    :cond_1
    sget-object p2, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->mHoldingEventTime:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Times;

    invoke-virtual {p2, v1, v2, p0, p1}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Times;->setTime(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static setHoldingEventTime(Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;)V
    .locals 2

    const-wide/16 v0, 0x2bc

    invoke-static {v0, v1, p0}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->setHoldingEventTime(JLcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;)V

    return-void
.end method

.method public static declared-synchronized setHoldingSingleActionEventTime(JLcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;)V
    .locals 7
    .param p2    # Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-class v0, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;

    monitor-enter v0

    :try_start_0
    const-string v1, "UserInputSkipper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setHoldingSingleActionEventTime, request time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", tag : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-object v3, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->mHoldingSingleActionTagMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v4, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Times;

    invoke-direct {v4, v1, v2, p0, p1}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Times;-><init>(JJ)V

    invoke-virtual {v3, p2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p2, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->mHoldingSingleActionEventTime:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Times;

    invoke-virtual {p2, v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Times;->isValid(J)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->mHoldingSingleActionEventTime:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Times;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Times;->endTime()J

    move-result-wide v3

    add-long v5, v1, p0

    cmp-long p2, v3, v5

    if-gez p2, :cond_1

    :cond_0
    sget-object p2, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->mHoldingSingleActionEventTime:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Times;

    invoke-virtual {p2, v1, v2, p0, p1}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Times;->setTime(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setSkipEventTime(JZ)Z
    .locals 3

    const-class v0, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;

    monitor-enter v0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->isValidEventFn()Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_0

    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :cond_0
    :try_start_1
    sget-object p2, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->mSkipEventTime:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Times;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2, p0, p1}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Times;->setTime(JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
