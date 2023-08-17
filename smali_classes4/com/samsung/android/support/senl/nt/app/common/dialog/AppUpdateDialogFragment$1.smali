.class Lcom/samsung/android/support/senl/nt/app/common/dialog/AppUpdateDialogFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/common/dialog/AppUpdateDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/common/dialog/AppUpdateDialogFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/common/dialog/AppUpdateDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/common/dialog/AppUpdateDialogFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/app/common/dialog/AppUpdateDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/common/dialog/AppUpdateDialogFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/app/common/dialog/AppUpdateDialogFragment;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/common/dialog/AppUpdateDialogFragment;->a(Lcom/samsung/android/support/senl/nt/app/common/dialog/AppUpdateDialogFragment;)Lcom/samsung/android/support/senl/nt/app/common/dialog/AppUpdateDialogFragment$AppUpdateDialogListener;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/common/dialog/AppUpdateDialogFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/app/common/dialog/AppUpdateDialogFragment;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/common/dialog/AppUpdateDialogFragment;->a(Lcom/samsung/android/support/senl/nt/app/common/dialog/AppUpdateDialogFragment;)Lcom/samsung/android/support/senl/nt/app/common/dialog/AppUpdateDialogFragment$AppUpdateDialogListener;

    move-result-object p2

    const/4 p3, -0x2

    invoke-interface {p2, p1, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
