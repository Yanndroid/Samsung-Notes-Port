.class public Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "LS$LiveSharingUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkLiveSharingStatus(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$Caller;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingUtils;->checkLiveSharingStatus(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$Caller;Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$TipCardCallback;)V

    return-void
.end method

.method public static checkLiveSharingStatus(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$Caller;Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$TipCardCallback;)V
    .locals 3
    .param p2    # Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$TipCardCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingUtils$1;

    invoke-direct {v2, p1, p2, p0}, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingUtils$1;-><init>(Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$Caller;Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$TipCardCallback;Landroid/app/Activity;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->requestQueryMeeting(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$Caller;Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryCallback;)Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryMeetingResult;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryMeetingResult;->SUCCESS:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryMeetingResult;

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkLiveSharingStatus# requestQueryMeeting false "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LS$LiveSharingUtils"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$TipCardCallback;->dismiss()V

    :cond_2
    sget-object v1, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryMeetingResult;->ALREADY_CONNECTED:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryMeetingResult;

    if-ne v0, v1, :cond_3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingUtils$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingUtils$2;-><init>(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$Caller;Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$TipCardCallback;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->setLiveSharingDisconnectionListener(Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$LiveSharingDisconnectionListener;)V

    :cond_3
    return-void
.end method

.method public static stopCheckLiveSharing(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->stopQueryMeeting(Landroid/content/Context;)V

    return-void
.end method
