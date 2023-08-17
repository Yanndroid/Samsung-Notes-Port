.class Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingUtils$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$LiveSharingDisconnectionListener;


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
.method public constructor <init>(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$Caller;Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$TipCardCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingUtils$2;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingUtils$2;->val$caller:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$Caller;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingUtils$2;->val$tipcardCallback:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$TipCardCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisconnected()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingUtils$2;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/docscan/common/util/CommonUtils;->isNotAvailableActivity(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "LS$LiveSharingUtils"

    const-string v1, "LiveSharingDisconnectionListener#onDisconnected#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingUtils$2;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingUtils$2;->val$caller:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$Caller;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingUtils$2;->val$tipcardCallback:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$TipCardCallback;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingUtils;->checkLiveSharingStatus(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$Caller;Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$TipCardCallback;)V

    return-void
.end method
