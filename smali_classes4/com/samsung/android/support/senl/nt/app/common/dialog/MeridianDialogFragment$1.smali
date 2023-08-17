.class Lcom/samsung/android/support/senl/nt/app/common/dialog/MeridianDialogFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/common/dialog/MeridianDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/common/dialog/MeridianDialogFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/common/dialog/MeridianDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/common/dialog/MeridianDialogFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/app/common/dialog/MeridianDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 p2, 0x6f

    if-ne p1, p2, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/common/dialog/MeridianDialogFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/app/common/dialog/MeridianDialogFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/common/dialog/MeridianDialogFragment;->b(Lcom/samsung/android/support/senl/nt/app/common/dialog/MeridianDialogFragment;)Lcom/samsung/android/support/senl/nt/app/common/dialog/MeridianDialogFragment$DialogListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/common/dialog/MeridianDialogFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/app/common/dialog/MeridianDialogFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/common/dialog/MeridianDialogFragment;->b(Lcom/samsung/android/support/senl/nt/app/common/dialog/MeridianDialogFragment;)Lcom/samsung/android/support/senl/nt/app/common/dialog/MeridianDialogFragment$DialogListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/common/dialog/MeridianDialogFragment$DialogListener;->onCancel()V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
