.class Lcom/samsung/android/support/senl/nt/app/jobscheduler/NotesJobService$FinishListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/base/common/jobscheduler/INoteJob$INoteJobFinishCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/jobscheduler/NotesJobService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FinishListener"
.end annotation


# instance fields
.field private mParameters:Landroid/app/job/JobParameters;


# direct methods
.method public constructor <init>(Landroid/app/job/JobParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/jobscheduler/NotesJobService$FinishListener;->mParameters:Landroid/app/job/JobParameters;

    return-void
.end method


# virtual methods
.method public onFinishJob()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotesJobService/ onFinishJob "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/jobscheduler/NotesJobService$FinishListener;->mParameters:Landroid/app/job/JobParameters;

    invoke-virtual {v1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/jobscheduler/JobTestLogger;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFinishJob "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/jobscheduler/NotesJobService$FinishListener;->mParameters:Landroid/app/job/JobParameters;

    invoke-virtual {v1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotesJobService"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/jobscheduler/NotesJobService;->getInstance()Lcom/samsung/android/support/senl/nt/app/jobscheduler/NotesJobService;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/jobscheduler/NotesJobService;->a(Lcom/samsung/android/support/senl/nt/app/jobscheduler/NotesJobService;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/jobscheduler/NotesJobService$FinishListener;->mParameters:Landroid/app/job/JobParameters;

    invoke-virtual {v1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/base/common/jobscheduler/INoteJob;

    if-nez v0, :cond_0

    const-string v0, "NotesJobService/ onFinishJob invalid job"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/jobscheduler/JobTestLogger;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/base/common/jobscheduler/INoteJob;->cancel()V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/jobscheduler/NotesJobService;->getInstance()Lcom/samsung/android/support/senl/nt/app/jobscheduler/NotesJobService;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/jobscheduler/NotesJobService$FinishListener;->mParameters:Landroid/app/job/JobParameters;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/jobscheduler/NotesJobService$FinishListener;->mParameters:Landroid/app/job/JobParameters;

    return-void
.end method
