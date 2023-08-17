.class public Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final LAZY_INITIALIZATION_TIME:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "ApplicationManager"

.field private static mInstance:Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;


# instance fields
.field private mActivityTracker:Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker;

.field private mAppContext:Landroid/content/Context;

.field private mAppPackageName:Ljava/lang/String;

.field private mAsyncTaskManager:Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->mAppContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->mAppPackageName:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->mActivityTracker:Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker;

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->mAsyncTaskManager:Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;
    .locals 2

    const-class v0, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->mInstance:Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;-><init>()V

    sput-object v1, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->mInstance:Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;

    :cond_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->mInstance:Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;
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
.method public getActivityTracker()Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->mActivityTracker:Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker;

    return-object v0
.end method

.method public getAppContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method public getApplicationID()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->mAppContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->mAppPackageName:Ljava/lang/String;

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->mAppPackageName:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->mAppPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationID(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->mAppPackageName:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->mAppPackageName:Ljava/lang/String;

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->mAppPackageName:Ljava/lang/String;

    return-object p1
.end method

.method public getAsyncTaskManager()Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->mAsyncTaskManager:Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager;

    return-object v0
.end method

.method public setAppContext(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->mAppContext:Landroid/content/Context;

    return-void
.end method
