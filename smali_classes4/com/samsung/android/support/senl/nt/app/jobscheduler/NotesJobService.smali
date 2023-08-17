.class public Lcom/samsung/android/support/senl/nt/app/jobscheduler/NotesJobService;
.super Landroid/app/job/JobService;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/jobscheduler/NotesJobService$EmptyJob;,
        Lcom/samsung/android/support/senl/nt/app/jobscheduler/NotesJobService$FinishListener;
    }
.end annotation


# static fields
.field private static final JOB_ID_COLLECTION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "NotesJobService"

.field private static sInstance:Lcom/samsung/android/support/senl/nt/app/jobscheduler/NotesJobService;


# instance fields
.field private mRunningJobs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/support/senl/nt/base/common/jobscheduler/INoteJob;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/jobscheduler/NotesJobService;->mRunningJobs:Ljava/util/Map;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/jobscheduler/NotesJobService;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/jobscheduler/NotesJobService;->mRunningJobs:Ljava/util/Map;

    return-object p0
.end method

.method private createJobs(I)Lcom/samsung/android/support/senl/nt/app/jobscheduler/jobs/common/AbsNoteJob;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotesJobService/ createJobs "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/jobscheduler/JobTestLogger;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/jobscheduler/jobs/collection/CollectionJob;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/app/jobscheduler/jobs/collection/CollectionJob;-><init>()V

    return-object p1

    :cond_0
    new-instance p1, Lcom/samsung/android/support/senl/nt/app/jobscheduler/NotesJobService$EmptyJob;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/nt/app/jobscheduler/NotesJobService$EmptyJob;-><init>(Lcom/samsung/android/support/senl/nt/app/jobscheduler/a;)V

    return-object p1
.end method

.method private dumpStopJobReason(Landroid/app/job/JobParameters;)V
    .locals 4

    :try_start_0
    const-string v0, "android.app.job.JobParameters"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getStopReason"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/ dumpStopJobReason "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/jobscheduler/JobTestLogger;->log(Ljava/lang/String;)V

    const-string v0, "NotesJobService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dumpStopJobReason "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    goto :goto_0

    :catch_3
    move-exception p1

    goto :goto_0

    :catch_4
    move-exception p1

    goto :goto_0

    :catch_5
    move-exception p1

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/ dumpStopJobReason error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/jobscheduler/JobTestLogger;->log(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/support/senl/nt/app/jobscheduler/NotesJobService;
    .locals 2

    const-class v0, Lcom/samsung/android/support/senl/nt/app/jobscheduler/NotesJobService;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/app/jobscheduler/NotesJobService;->sInstance:Lcom/samsung/android/support/senl/nt/app/jobscheduler/NotesJobService;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/jobscheduler/NotesJobService;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/app/jobscheduler/NotesJobService;-><init>()V

    sput-object v1, Lcom/samsung/android/support/senl/nt/app/jobscheduler/NotesJobService;->sInstance:Lcom/samsung/android/support/senl/nt/app/jobscheduler/NotesJobService;

    :cond_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/app/jobscheduler/NotesJobService;->sInstance:Lcom/samsung/android/support/senl/nt/app/jobscheduler/NotesJobService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private scheduleJob(Landroid/app/job/JobScheduler;ILandroid/content/ComponentName;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotesJobService/ scheduleJob "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/jobscheduler/JobTestLogger;->log(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/app/jobscheduler/NotesJobService;->createJobs(I)Lcom/samsung/android/support/senl/nt/app/jobscheduler/jobs/common/AbsNoteJob;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/jobscheduler/jobs/common/AbsNoteJob;->schedule(Landroid/app/job/JobScheduler;ILandroid/content/ComponentName;)V

    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NotesJobService/ onStartJob "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/jobscheduler/JobTestLogger;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartJob "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NotesJobService"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/jobscheduler/NotesJobService;->createJobs(I)Lcom/samsung/android/support/senl/nt/app/jobscheduler/jobs/common/AbsNoteJob;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/jobscheduler/NotesJobService$FinishListener;

    invoke-direct {v2, p1}, Lcom/samsung/android/support/senl/nt/app/jobscheduler/NotesJobService$FinishListener;-><init>(Landroid/app/job/JobParameters;)V

    invoke-interface {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/jobscheduler/INoteJob;->execute(Lcom/samsung/android/support/senl/nt/base/common/jobscheduler/INoteJob$INoteJobFinishCallback;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/jobscheduler/NotesJobService;->mRunningJobs:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/base/common/jobscheduler/INoteJob;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/base/common/jobscheduler/INoteJob;->cancel()V

    const-string v0, "NotesJobService/ onStartJob, same job is triggered"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/jobscheduler/JobTestLogger;->log(Ljava/lang/String;)V

    :cond_0
    return p1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NotesJobService/ onStopJob "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/jobscheduler/JobTestLogger;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStopJob "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NotesJobService"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/jobscheduler/NotesJobService;->dumpStopJobReason(Landroid/app/job/JobParameters;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/jobscheduler/NotesJobService;->mRunningJobs:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/base/common/jobscheduler/INoteJob;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/base/common/jobscheduler/INoteJob;->cancel()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public registerJobs()V
    .locals 4

    const-string v0, "NotesJobService/ registerJobs"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/jobscheduler/JobTestLogger;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "jobscheduler"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobScheduler;

    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/samsung/android/support/senl/nt/app/jobscheduler/NotesJobService;

    invoke-direct {v2, v0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v0, 0x1

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/support/senl/nt/app/jobscheduler/NotesJobService;->scheduleJob(Landroid/app/job/JobScheduler;ILandroid/content/ComponentName;)V

    return-void
.end method
