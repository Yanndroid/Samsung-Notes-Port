.class public abstract Lcom/samsung/android/support/senl/nt/app/jobscheduler/jobs/common/AbsNoteJob;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/base/common/jobscheduler/INoteJob;


# static fields
.field private static final TAG:Ljava/lang/String; = "AbsNoteJob"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    return-void
.end method

.method public schedule(Landroid/app/job/JobScheduler;ILandroid/content/ComponentName;)V
    .locals 1
    .param p1    # Landroid/app/job/JobScheduler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "AbsNoteJob/ schedule"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/jobscheduler/JobTestLogger;->log(Ljava/lang/String;)V

    :try_start_0
    invoke-static {p2, p3}, Lcom/samsung/android/support/senl/cm/base/framework/constructor/SystemConstructor;->createJobInfoBuilder(ILandroid/content/ComponentName;)Landroid/app/job/JobInfo$Builder;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/samsung/android/support/senl/nt/app/jobscheduler/jobs/common/AbsNoteJob;->setUpJobInfoProperties(Landroid/app/job/JobInfo$Builder;)V

    invoke-virtual {p2}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "schedule "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AbsNoteJob"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public abstract setUpJobInfoProperties(Landroid/app/job/JobInfo$Builder;)V
.end method
