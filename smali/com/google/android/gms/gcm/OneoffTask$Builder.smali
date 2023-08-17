.class public Lcom/google/android/gms/gcm/OneoffTask$Builder;
.super Lcom/google/android/gms/gcm/Task$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/gcm/OneoffTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private zzal:J

.field private zzam:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/gcm/Task$Builder;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/gcm/OneoffTask$Builder;->zzal:J

    iput-wide v0, p0, Lcom/google/android/gms/gcm/OneoffTask$Builder;->zzam:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/gcm/Task$Builder;->isPersisted:Z

    return-void
.end method

.method public static synthetic zzd(Lcom/google/android/gms/gcm/OneoffTask$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/gcm/OneoffTask$Builder;->zzal:J

    return-wide v0
.end method

.method public static synthetic zze(Lcom/google/android/gms/gcm/OneoffTask$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/gcm/OneoffTask$Builder;->zzam:J

    return-wide v0
.end method


# virtual methods
.method public build()Lcom/google/android/gms/gcm/OneoffTask;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/gcm/Task$Builder;->checkConditions()V

    new-instance v0, Lcom/google/android/gms/gcm/OneoffTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/gcm/OneoffTask;-><init>(Lcom/google/android/gms/gcm/OneoffTask$Builder;Lcom/google/android/gms/gcm/zzi;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/android/gms/gcm/Task;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/gcm/OneoffTask$Builder;->build()Lcom/google/android/gms/gcm/OneoffTask;

    move-result-object v0

    return-object v0
.end method

.method public checkConditions()V
    .locals 6

    invoke-super {p0}, Lcom/google/android/gms/gcm/Task$Builder;->checkConditions()V

    iget-wide v0, p0, Lcom/google/android/gms/gcm/OneoffTask$Builder;->zzal:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-wide v4, p0, Lcom/google/android/gms/gcm/OneoffTask$Builder;->zzam:J

    cmp-long v2, v4, v2

    if-eqz v2, :cond_1

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Window start must be shorter than window end."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must specify an execution window using setExecutionWindow."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setExecutionWindow(JJ)Lcom/google/android/gms/gcm/OneoffTask$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/gcm/OneoffTask$Builder;->zzal:J

    iput-wide p3, p0, Lcom/google/android/gms/gcm/OneoffTask$Builder;->zzam:J

    return-object p0
.end method

.method public setExtras(Landroid/os/Bundle;)Lcom/google/android/gms/gcm/OneoffTask$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/gcm/Task$Builder;->extras:Landroid/os/Bundle;

    return-object p0
.end method

.method public bridge synthetic setExtras(Landroid/os/Bundle;)Lcom/google/android/gms/gcm/Task$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/gcm/OneoffTask$Builder;->setExtras(Landroid/os/Bundle;)Lcom/google/android/gms/gcm/OneoffTask$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setPersisted(Z)Lcom/google/android/gms/gcm/OneoffTask$Builder;
    .locals 0
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.RECEIVE_BOOT_COMPLETED"
    .end annotation

    iput-boolean p1, p0, Lcom/google/android/gms/gcm/Task$Builder;->isPersisted:Z

    return-object p0
.end method

.method public bridge synthetic setPersisted(Z)Lcom/google/android/gms/gcm/Task$Builder;
    .locals 0
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.RECEIVE_BOOT_COMPLETED"
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/gcm/OneoffTask$Builder;->setPersisted(Z)Lcom/google/android/gms/gcm/OneoffTask$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRequiredNetwork(I)Lcom/google/android/gms/gcm/OneoffTask$Builder;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/gcm/Task$Builder;->requiredNetworkState:I

    return-object p0
.end method

.method public bridge synthetic setRequiredNetwork(I)Lcom/google/android/gms/gcm/Task$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/gcm/OneoffTask$Builder;->setRequiredNetwork(I)Lcom/google/android/gms/gcm/OneoffTask$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRequiresCharging(Z)Lcom/google/android/gms/gcm/OneoffTask$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/gcm/Task$Builder;->requiresCharging:Z

    return-object p0
.end method

.method public bridge synthetic setRequiresCharging(Z)Lcom/google/android/gms/gcm/Task$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/gcm/OneoffTask$Builder;->setRequiresCharging(Z)Lcom/google/android/gms/gcm/OneoffTask$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setService(Ljava/lang/Class;)Lcom/google/android/gms/gcm/OneoffTask$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/gms/gcm/GcmTaskService;",
            ">;)",
            "Lcom/google/android/gms/gcm/OneoffTask$Builder;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/gcm/Task$Builder;->gcmTaskService:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setService(Ljava/lang/Class;)Lcom/google/android/gms/gcm/Task$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/gcm/OneoffTask$Builder;->setService(Ljava/lang/Class;)Lcom/google/android/gms/gcm/OneoffTask$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setTag(Ljava/lang/String;)Lcom/google/android/gms/gcm/OneoffTask$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/gcm/Task$Builder;->tag:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setTag(Ljava/lang/String;)Lcom/google/android/gms/gcm/Task$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/gcm/OneoffTask$Builder;->setTag(Ljava/lang/String;)Lcom/google/android/gms/gcm/OneoffTask$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setUpdateCurrent(Z)Lcom/google/android/gms/gcm/OneoffTask$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/gcm/Task$Builder;->updateCurrent:Z

    return-object p0
.end method

.method public bridge synthetic setUpdateCurrent(Z)Lcom/google/android/gms/gcm/Task$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/gcm/OneoffTask$Builder;->setUpdateCurrent(Z)Lcom/google/android/gms/gcm/OneoffTask$Builder;

    move-result-object p1

    return-object p1
.end method
