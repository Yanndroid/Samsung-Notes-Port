.class public Lcom/samsung/android/sdk/smp/common/sharedvariable/SharedMemoryVariableManager;
.super Lcom/samsung/android/sdk/smp/common/interfaces/SharedDataManager;
.source "SourceFile"


# static fields
.field private static final IS_DATA_CLEARED:Ljava/lang/String; = "is_data_cleared"

.field private static final POPUP_CURRENT_DISPLAY_ID:Ljava/lang/String; = "popup_current_display_id"

.field private static final RUNNING_REALTIME_MID_IN_FCMSERVICE:Ljava/lang/String; = "running_realtime_mid_in_fcmservice"

.field private static sSharedManager:Lcom/samsung/android/sdk/smp/common/sharedvariable/SharedMemoryVariableManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/smp/common/interfaces/SharedDataManager;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/sharedvariable/SharedMemoryVariableManager;
    .locals 2

    const-class v0, Lcom/samsung/android/sdk/smp/common/sharedvariable/SharedMemoryVariableManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/smp/common/sharedvariable/SharedMemoryVariableManager;->sSharedManager:Lcom/samsung/android/sdk/smp/common/sharedvariable/SharedMemoryVariableManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/sdk/smp/common/sharedvariable/SharedMemoryVariableManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/smp/common/sharedvariable/SharedMemoryVariableManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/sdk/smp/common/sharedvariable/SharedMemoryVariableManager;->sSharedManager:Lcom/samsung/android/sdk/smp/common/sharedvariable/SharedMemoryVariableManager;

    :cond_0
    sget-object p0, Lcom/samsung/android/sdk/smp/common/sharedvariable/SharedMemoryVariableManager;->sSharedManager:Lcom/samsung/android/sdk/smp/common/sharedvariable/SharedMemoryVariableManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public declared-synchronized addRunningRealtimeMidInFcmService(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "running_realtime_mid_in_fcmservice"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/sdk/smp/common/interfaces/SharedDataManager;->putStringSet(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized countRunningRealtimeMidsInFcmService()I
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "running_realtime_mid_in_fcmservice"

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/smp/common/interfaces/SharedDataManager;->getStringSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBooleanForSingleProcess(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 0

    invoke-static {}, Lcom/samsung/android/sdk/smp/common/sharedvariable/SharedMemoryVariable;->getInstance()Lcom/samsung/android/sdk/smp/common/sharedvariable/SharedMemoryVariable;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/sdk/smp/common/sharedvariable/SharedMemoryVariable;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getBooleanUri()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/common/interfaces/SharedDataManager;->getSmpPrefProviderBaseUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "variable_boolean"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getCurrentDisplayId()I
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "popup_current_display_id"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/smp/common/interfaces/SharedDataManager;->getInteger(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getIntegerForSingleProcess(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 0

    invoke-static {}, Lcom/samsung/android/sdk/smp/common/sharedvariable/SharedMemoryVariable;->getInstance()Lcom/samsung/android/sdk/smp/common/sharedvariable/SharedMemoryVariable;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/sdk/smp/common/sharedvariable/SharedMemoryVariable;->getInteger(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getIntegerUri()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/common/interfaces/SharedDataManager;->getSmpPrefProviderBaseUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "variable_integer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLongForSingleProcess(Landroid/content/Context;Ljava/lang/String;J)J
    .locals 0

    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public getLongUri()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRemoveStringSetUri()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/common/interfaces/SharedDataManager;->getSmpPrefProviderBaseUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "variable_delete_string_set"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemoveUri()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getStringForSingleProcess(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getStringSetForSingleProcess(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/sdk/smp/common/sharedvariable/SharedMemoryVariable;->getInstance()Lcom/samsung/android/sdk/smp/common/sharedvariable/SharedMemoryVariable;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/smp/common/sharedvariable/SharedMemoryVariable;->getStringSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public getStringSetUri()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/common/interfaces/SharedDataManager;->getSmpPrefProviderBaseUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "variable_string_set"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringUri()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized isDataCleared()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "is_data_cleared"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/smp/common/interfaces/SharedDataManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isRunningRealtimeMidInFcmService(Ljava/lang/String;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    monitor-exit p0

    return p1

    :cond_0
    :try_start_1
    const-string v0, "running_realtime_mid_in_fcmservice"

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/smp/common/interfaces/SharedDataManager;->getStringSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public putBooleanForSingleProcess(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    invoke-static {}, Lcom/samsung/android/sdk/smp/common/sharedvariable/SharedMemoryVariable;->getInstance()Lcom/samsung/android/sdk/smp/common/sharedvariable/SharedMemoryVariable;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/sdk/smp/common/sharedvariable/SharedMemoryVariable;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public putIntegerForSingleProcess(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    invoke-static {}, Lcom/samsung/android/sdk/smp/common/sharedvariable/SharedMemoryVariable;->getInstance()Lcom/samsung/android/sdk/smp/common/sharedvariable/SharedMemoryVariable;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/sdk/smp/common/sharedvariable/SharedMemoryVariable;->putInteger(Ljava/lang/String;I)V

    return-void
.end method

.method public putLongForSingleProcess(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 0

    return-void
.end method

.method public putStringForSingleProcess(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public putStringSetForSingleProcess(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Lcom/samsung/android/sdk/smp/common/sharedvariable/SharedMemoryVariable;->getInstance()Lcom/samsung/android/sdk/smp/common/sharedvariable/SharedMemoryVariable;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/sdk/smp/common/sharedvariable/SharedMemoryVariable;->putStringSet(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public removeForSingleProcess(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public declared-synchronized removeRunningRealtimeMidInFcmService(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "running_realtime_mid_in_fcmservice"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/sdk/smp/common/interfaces/SharedDataManager;->removeStringSet(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public removeStringSetForSingleProcess(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Lcom/samsung/android/sdk/smp/common/sharedvariable/SharedMemoryVariable;->getInstance()Lcom/samsung/android/sdk/smp/common/sharedvariable/SharedMemoryVariable;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/sdk/smp/common/sharedvariable/SharedMemoryVariable;->removeStringSet(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized setCurrentDisplayId(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "popup_current_display_id"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/sdk/smp/common/interfaces/SharedDataManager;->putInteger(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setDataCleared(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "is_data_cleared"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/sdk/smp/common/interfaces/SharedDataManager;->putBoolean(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
