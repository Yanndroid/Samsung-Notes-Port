.class public Lcom/samsung/android/sdk/smp/common/interfaces/ListenerManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ListenerManager"

.field private static sListenerManager:Lcom/samsung/android/sdk/smp/common/interfaces/ListenerManager;


# instance fields
.field private mSmpInitResultListener:Lcom/samsung/android/sdk/smp/SmpListeners$SmpInitResultListener;

.field private mSmpPushResultListener:Lcom/samsung/android/sdk/smp/SmpListeners$SmpPushResultListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/sdk/smp/common/interfaces/ListenerManager;
    .locals 2

    const-class v0, Lcom/samsung/android/sdk/smp/common/interfaces/ListenerManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/smp/common/interfaces/ListenerManager;->sListenerManager:Lcom/samsung/android/sdk/smp/common/interfaces/ListenerManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/sdk/smp/common/interfaces/ListenerManager;

    invoke-direct {v1}, Lcom/samsung/android/sdk/smp/common/interfaces/ListenerManager;-><init>()V

    sput-object v1, Lcom/samsung/android/sdk/smp/common/interfaces/ListenerManager;->sListenerManager:Lcom/samsung/android/sdk/smp/common/interfaces/ListenerManager;

    :cond_0
    sget-object v1, Lcom/samsung/android/sdk/smp/common/interfaces/ListenerManager;->sListenerManager:Lcom/samsung/android/sdk/smp/common/interfaces/ListenerManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private releaseListenerManagerIfNotNecessary()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/common/interfaces/ListenerManager;->mSmpPushResultListener:Lcom/samsung/android/sdk/smp/SmpListeners$SmpPushResultListener;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/common/interfaces/ListenerManager;->mSmpInitResultListener:Lcom/samsung/android/sdk/smp/SmpListeners$SmpInitResultListener;

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/smp/common/interfaces/ListenerManager;->TAG:Ljava/lang/String;

    const-string v1, "release listener manager"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/sdk/smp/common/interfaces/ListenerManager;->sListenerManager:Lcom/samsung/android/sdk/smp/common/interfaces/ListenerManager;

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized removeSmpInitResultListener()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/samsung/android/sdk/smp/common/interfaces/ListenerManager;->mSmpInitResultListener:Lcom/samsung/android/sdk/smp/SmpListeners$SmpInitResultListener;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/common/interfaces/ListenerManager;->releaseListenerManagerIfNotNecessary()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeSmpPushResultListener()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/samsung/android/sdk/smp/common/interfaces/ListenerManager;->mSmpPushResultListener:Lcom/samsung/android/sdk/smp/SmpListeners$SmpPushResultListener;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/common/interfaces/ListenerManager;->releaseListenerManagerIfNotNecessary()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized sendInitResultFail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/common/interfaces/ListenerManager;->mSmpInitResultListener:Lcom/samsung/android/sdk/smp/SmpListeners$SmpInitResultListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget-object v0, Lcom/samsung/android/sdk/smp/common/interfaces/ListenerManager;->TAG:Ljava/lang/String;

    const-string v1, "SEND LISTENER START : SMP_INIT_RESULT_FAIL"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->hi(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/smp/common/interfaces/ListenerManager;->mSmpInitResultListener:Lcom/samsung/android/sdk/smp/SmpListeners$SmpInitResultListener;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/sdk/smp/SmpListeners$SmpInitResultListener;->onFail(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "SEND LISTENER END : SMP_INIT_RESULT_FAIL"

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->hi(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized sendInitResultSuccess()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/common/interfaces/ListenerManager;->mSmpInitResultListener:Lcom/samsung/android/sdk/smp/SmpListeners$SmpInitResultListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget-object v0, Lcom/samsung/android/sdk/smp/common/interfaces/ListenerManager;->TAG:Ljava/lang/String;

    const-string v1, "SEND LISTENER START : SMP_INIT_RESULT_SUCCESS"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->hi(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/smp/common/interfaces/ListenerManager;->mSmpInitResultListener:Lcom/samsung/android/sdk/smp/SmpListeners$SmpInitResultListener;

    invoke-interface {v1}, Lcom/samsung/android/sdk/smp/SmpListeners$SmpInitResultListener;->onSuccess()V

    const-string v1, "SEND LISTENER END : SMP_INIT_RESULT_SUCCESS"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->hi(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized sendPushResultFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/common/interfaces/ListenerManager;->mSmpPushResultListener:Lcom/samsung/android/sdk/smp/SmpListeners$SmpPushResultListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget-object v0, Lcom/samsung/android/sdk/smp/common/interfaces/ListenerManager;->TAG:Ljava/lang/String;

    const-string v1, "SEND LISTENER START : PUSH_REGISTRATION_RESULT_FAIL"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->hi(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/smp/common/interfaces/ListenerManager;->mSmpPushResultListener:Lcom/samsung/android/sdk/smp/SmpListeners$SmpPushResultListener;

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/sdk/smp/SmpListeners$SmpPushResultListener;->onFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "SEND LISTENER END : PUSH_REGISTRATION_RESULT_FAIL"

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->hi(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized sendPushResultSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/common/interfaces/ListenerManager;->mSmpPushResultListener:Lcom/samsung/android/sdk/smp/SmpListeners$SmpPushResultListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget-object v0, Lcom/samsung/android/sdk/smp/common/interfaces/ListenerManager;->TAG:Ljava/lang/String;

    const-string v1, "SEND LISTENER START : PUSH_REGISTRATION_RESULT_SUCCESS"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->hi(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/smp/common/interfaces/ListenerManager;->mSmpPushResultListener:Lcom/samsung/android/sdk/smp/SmpListeners$SmpPushResultListener;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/sdk/smp/SmpListeners$SmpPushResultListener;->onSuccess(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "SEND LISTENER END : PUSH_REGISTRATION_RESULT_SUCCESS"

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->hi(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setSmpInitResultListener(Lcom/samsung/android/sdk/smp/SmpListeners$SmpInitResultListener;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/samsung/android/sdk/smp/common/interfaces/ListenerManager;->mSmpInitResultListener:Lcom/samsung/android/sdk/smp/SmpListeners$SmpInitResultListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setSmpPushResultListener(Lcom/samsung/android/sdk/smp/SmpListeners$SmpPushResultListener;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/samsung/android/sdk/smp/common/interfaces/ListenerManager;->mSmpPushResultListener:Lcom/samsung/android/sdk/smp/SmpListeners$SmpPushResultListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
