.class Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$1;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$1$1;->this$1:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showConfirmDialog#onClick: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LS$LiveSharingManager"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x3

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$1$1;->this$1:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$1;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$1;->this$0:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;

    const-string v1, "onClick cancel"

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->setCanceled(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$1$1;->this$1:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$1;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$1;->val$onClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-interface {v0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$1$1;->this$1:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$1;

    iget-object v0, p1, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$1;->this$0:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;

    iget-boolean p1, p1, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$1;->val$isHost:Z

    invoke-static {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->h(Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;ZI)V

    return-void
.end method
