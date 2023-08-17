.class Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;->showWarningDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog$1;->this$0:Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 p1, 0x1

    const/4 p3, 0x0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog$1;->this$0:Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;->finish()V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog$1;->this$0:Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;

    invoke-static {p2, p3}, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;->g(Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;Z)V

    return p1

    :cond_0
    const/16 v0, 0x42

    if-eq p2, v0, :cond_2

    const/16 v0, 0x17

    if-ne p2, v0, :cond_1

    goto :goto_0

    :cond_1
    return p3

    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog$1;->this$0:Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;->c(Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog$1;->this$0:Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;->c(Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Dialog;->isShowing()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog$1;->this$0:Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;->c(Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p2

    const/4 v0, -0x1

    invoke-virtual {p2, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog$1;->this$0:Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;->c(Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;)Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog$1;->this$0:Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;->finish()V

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/widget/Button;->isFocused()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog$1;->this$0:Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;->g(Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;Z)V

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/widget/Button;->isFocused()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog$1;->this$0:Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;

    invoke-static {p2, p3}, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;->g(Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;Z)V

    :cond_4
    :goto_1
    return p1
.end method
