.class Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->createConfirmDialog(Landroid/app/Activity;ZLandroid/content/DialogInterface$OnClickListener;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;

.field public final synthetic val$activity:Landroid/app/Activity;

.field public final synthetic val$isHost:Z

.field public final synthetic val$onClickListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;Z)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$1;->this$0:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$1;->val$onClickListener:Landroid/content/DialogInterface$OnClickListener;

    iput-boolean p4, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$1;->val$isHost:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$1;->this$0:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->c(Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$1;->this$0:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->c(Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$1;->this$0:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->c(Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    new-instance v0, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$1;->val$activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$1$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$1$1;-><init>(Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$1;)V

    iget-boolean v2, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$1;->val$isHost:Z

    if-eqz v2, :cond_1

    sget v2, Lcom/samsung/android/support/senl/nt/base/R$string;->live_sharing_dialog_host_title:I

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/nt/base/R$string;->live_sharing_dialog_body:I

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/nt/base/R$string;->base_string_not_now:I

    invoke-virtual {v2, v3, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/nt/base/R$string;->live_sharing_dialog_host_create_note:I

    invoke-virtual {v2, v3, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/nt/base/R$string;->live_sharing_dialog_host_select_note:I

    goto :goto_0

    :cond_1
    sget v2, Lcom/samsung/android/support/senl/nt/base/R$string;->live_sharing_dialog_guest_title:I

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/nt/base/R$string;->live_sharing_dialog_body:I

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/nt/base/R$string;->base_string_not_now:I

    invoke-virtual {v2, v3, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/nt/base/R$string;->base_string_join:I

    :goto_0
    invoke-virtual {v2, v3, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v1, Lcom/samsung/android/support/senl/nt/base/R$drawable;->ic_meet:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setIcon(I)Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$1;->this$0:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->g(Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;Landroid/app/Dialog;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$1;->this$0:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->c(Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;)Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$1;->this$0:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->c(Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$1;->this$0:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->c(Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;)Landroid/app/Dialog;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$1$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$1$2;-><init>(Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$1;->this$0:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->c(Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
