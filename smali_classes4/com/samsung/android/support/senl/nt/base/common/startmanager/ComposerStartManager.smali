.class public Lcom/samsung/android/support/senl/nt/base/common/startmanager/ComposerStartManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ComposerStartManager"

.field private static sInstance:Lcom/samsung/android/support/senl/nt/base/common/startmanager/ComposerStartManager;


# instance fields
.field private mFinalBlockTime:J

.field private final mUuids:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/startmanager/ComposerStartManager;->mUuids:Ljava/util/HashMap;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/support/senl/nt/base/common/startmanager/ComposerStartManager;
    .locals 2

    const-class v0, Lcom/samsung/android/support/senl/nt/base/common/startmanager/ComposerStartManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/base/common/startmanager/ComposerStartManager;->sInstance:Lcom/samsung/android/support/senl/nt/base/common/startmanager/ComposerStartManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/nt/base/common/startmanager/ComposerStartManager;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/base/common/startmanager/ComposerStartManager;-><init>()V

    sput-object v1, Lcom/samsung/android/support/senl/nt/base/common/startmanager/ComposerStartManager;->sInstance:Lcom/samsung/android/support/senl/nt/base/common/startmanager/ComposerStartManager;

    :cond_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/base/common/startmanager/ComposerStartManager;->sInstance:Lcom/samsung/android/support/senl/nt/base/common/startmanager/ComposerStartManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public canStartComposer(Ljava/lang/String;)Z
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/support/senl/nt/base/common/startmanager/ComposerStartManager;->mFinalBlockTime:J

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    const-string v4, "ComposerStartManager"

    if-gez v2, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "canStartComposer# false / time = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/base/common/startmanager/ComposerStartManager;->mFinalBlockTime:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {v4, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/base/common/startmanager/ComposerStartManager;->mUuids:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v0, v0, v5

    if-gez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "canStartComposer# false / uuid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " / time = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public clearUuidsToStartComposer()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/startmanager/ComposerStartManager;->mUuids:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public closeAllComposer(Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$IClosedListener;)Z
    .locals 2

    const-string v0, "ComposerStartManager"

    const-string v1, "closeAllComposer# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->closeAllComposer(Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$IClosedListener;)Z

    move-result p1

    return p1
.end method

.method public removeUuidToStartComposer(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/startmanager/ComposerStartManager;->mUuids:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setFinalBlockTimeToStartComposer(J)V
    .locals 2

    iput-wide p1, p0, Lcom/samsung/android/support/senl/nt/base/common/startmanager/ComposerStartManager;->mFinalBlockTime:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFinalBlockTimeToStartComposer# time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ComposerStartManager"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setUuidWithBlockTimeToStartComposer(Ljava/lang/String;J)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/startmanager/ComposerStartManager;->mUuids:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
