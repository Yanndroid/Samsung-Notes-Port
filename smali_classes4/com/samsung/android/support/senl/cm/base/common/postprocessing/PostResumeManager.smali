.class public Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostResumeManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostResumeManager$Token;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PostResumeManager"

.field public static final TAG_ACTIVITY_ON_RESUME:I = 0x1

.field public static final TAG_ATTACH_PHONE_DRAWER_ON_RESUME:I = 0x65

.field public static final TAG_ATTACH_TABLET_DRAWER_ON_RESUME:I = 0x66

.field public static final TAG_PRESENTER_ON_RESUME:I = 0x2

.field private static mInstance:Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostResumeManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostResumeManager;
    .locals 2

    const-class v0, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostResumeManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostResumeManager;->mInstance:Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostResumeManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostResumeManager;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostResumeManager;-><init>()V

    sput-object v1, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostResumeManager;->mInstance:Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostResumeManager;

    :cond_0
    sget-object v1, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostResumeManager;->mInstance:Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostResumeManager;
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
.method public declared-synchronized addLogic(Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostResumeManager$Token;ILjava/lang/Runnable;)V
    .locals 0

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p1, p1, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostResumeManager$Token;->mListMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public createToken()Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostResumeManager$Token;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostResumeManager$Token;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostResumeManager$Token;-><init>()V

    return-object v0
.end method

.method public declared-synchronized executeNotesListLogics(Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostResumeManager$Token;)V
    .locals 3

    monitor-enter p0

    if-eqz p1, :cond_2

    :try_start_0
    iget-object v0, p1, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostResumeManager$Token;->mListMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "PostResumeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "executeNotesListLogics# NotesListMap : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostResumeManager$Token;->mListMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostResumeManager$Token;->mListMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_1
    iget-object p1, p1, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostResumeManager$Token;->mListMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_2
    :goto_1
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized removeLogic(Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostResumeManager$Token;I)Z
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    :try_start_0
    iget-object p1, p1, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostResumeManager$Token;->mListMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_1
    monitor-exit p0

    return v0
.end method
