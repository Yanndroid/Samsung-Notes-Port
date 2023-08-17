.class Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingUtils$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingUtils;->checkLiveSharingStatus(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$Caller;Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$TipCardCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$activity:Landroid/app/Activity;

.field public final synthetic val$caller:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$Caller;

.field public final synthetic val$tipcardCallback:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$TipCardCallback;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$Caller;Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$TipCardCallback;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingUtils$1;->val$caller:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$Caller;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingUtils$1;->val$tipcardCallback:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$TipCardCallback;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingUtils$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private callerIsTipCard()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingUtils$1;->val$caller:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$Caller;

    sget-object v1, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$Caller;->TIP_CARD_NEW:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$Caller;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$Caller;->TIP_CARD_EXIST:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$Caller;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$Caller;->TIP_CARD_JOIN:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$Caller;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public onMeetNotWorking()V
    .locals 3

    const-string v0, "LS$LiveSharingUtils"

    const-string v1, "onMeetNotWorking#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingUtils$1;->val$tipcardCallback:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$TipCardCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$TipCardCallback;->dismiss()V

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingUtils$1;->callerIsTipCard()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;

    move-result-object v0

    const-string v1, "onMeetNotWorking, Tipcard dismiss"

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->setCanceled(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingUtils$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->meet_is_cancelled:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;II)V

    :cond_1
    return-void
.end method

.method public onMeetWorking(Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMeetWorking# caller : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingUtils$1;->val$caller:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$Caller;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isHost : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LS$LiveSharingUtils"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingUtils$1;->callerIsTipCard()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "onMeetWorking, Tipcard show again"

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingUtils$1;->val$caller:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$Caller;

    sget-object v2, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$Caller;->TIP_CARD_JOIN:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$Caller;

    if-ne v1, v2, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingUtils$1;->val$tipcardCallback:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$TipCardCallback;

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->setCanceled(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingUtils$1;->val$tipcardCallback:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$TipCardCallback;

    sget v0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->TIPCARD_HOST:I

    :goto_0
    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$TipCardCallback;->show(I)V

    goto :goto_2

    :cond_0
    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingUtils$1;->val$caller:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$Caller;

    sget-object v2, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$Caller;->TIP_CARD_NEW:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$Caller;

    if-ne v1, v2, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingUtils$1;->val$tipcardCallback:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$TipCardCallback;

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->setCanceled(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingUtils$1;->val$tipcardCallback:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$TipCardCallback;

    sget v0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->TIPCARD_GUEST:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingUtils$1;->val$activity:Landroid/app/Activity;

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingUtils$1;->val$caller:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$Caller;

    sget-object v2, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$Caller;->TIP_CARD_EXIST:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$Caller;

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-static {v0, p1, v1}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->runLiveSharingActivity(Landroid/app/Activity;ZZ)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingUtils$1;->val$tipcardCallback:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$TipCardCallback;

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;

    move-result-object p1

    const-string v0, "onMeetWorking, runLiveSharingActivity, Tipcard dismiss"

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->setCanceled(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingUtils$1;->val$tipcardCallback:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$TipCardCallback;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$TipCardCallback;->dismiss()V

    :cond_3
    :goto_2
    return-void

    :cond_4
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->getNotNow()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingUtils$1;->val$tipcardCallback:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$TipCardCallback;

    if-eqz v0, :cond_6

    if-eqz p1, :cond_5

    sget p1, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->TIPCARD_HOST:I

    goto :goto_3

    :cond_5
    sget p1, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->TIPCARD_GUEST:I

    :goto_3
    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$TipCardCallback;->show(I)V

    :cond_6
    return-void

    :cond_7
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingUtils$1;->val$activity:Landroid/app/Activity;

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingUtils$1$1;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingUtils$1$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingUtils$1;Z)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->showConfirmDialog(Landroid/app/Activity;ZLandroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method
