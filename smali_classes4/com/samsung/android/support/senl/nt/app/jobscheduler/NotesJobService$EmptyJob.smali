.class Lcom/samsung/android/support/senl/nt/app/jobscheduler/NotesJobService$EmptyJob;
.super Lcom/samsung/android/support/senl/nt/app/jobscheduler/jobs/common/AbsNoteJob;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/jobscheduler/NotesJobService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmptyJob"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/jobscheduler/jobs/common/AbsNoteJob;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/app/jobscheduler/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/jobscheduler/NotesJobService$EmptyJob;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/samsung/android/support/senl/nt/base/common/jobscheduler/INoteJob$INoteJobFinishCallback;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setUpJobInfoProperties(Landroid/app/job/JobInfo$Builder;)V
    .locals 0

    return-void
.end method
