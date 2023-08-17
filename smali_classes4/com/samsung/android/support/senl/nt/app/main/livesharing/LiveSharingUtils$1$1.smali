.class Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingUtils$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingUtils$1;->onMeetWorking(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingUtils$1;

.field public final synthetic val$isHost:Z


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingUtils$1;Z)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingUtils$1$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingUtils$1;

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingUtils$1$1;->val$isHost:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 p1, -0x3

    if-eq p2, p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingUtils$1$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingUtils$1;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingUtils$1;->val$activity:Landroid/app/Activity;

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingUtils$1$1;->val$isHost:Z

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p1, v0, p2}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->runLiveSharingActivity(Landroid/app/Activity;ZZ)V

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingUtils$1$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingUtils$1;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingUtils$1;->val$tipcardCallback:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$TipCardCallback;

    if-eqz p1, :cond_3

    iget-boolean p2, p0, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingUtils$1$1;->val$isHost:Z

    if-eqz p2, :cond_2

    sget p2, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->TIPCARD_HOST:I

    goto :goto_1

    :cond_2
    sget p2, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->TIPCARD_GUEST:I

    :goto_1
    invoke-interface {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$TipCardCallback;->show(I)V

    :cond_3
    return-void
.end method
