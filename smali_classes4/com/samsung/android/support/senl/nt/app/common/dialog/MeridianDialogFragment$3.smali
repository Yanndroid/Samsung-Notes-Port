.class Lcom/samsung/android/support/senl/nt/app/common/dialog/MeridianDialogFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/common/dialog/MeridianDialogFragment$3;->this$0:Lcom/samsung/android/support/senl/nt/app/common/dialog/MeridianDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/common/dialog/MeridianDialogFragment$3;->this$0:Lcom/samsung/android/support/senl/nt/app/common/dialog/MeridianDialogFragment;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;->dismiss()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/common/dialog/MeridianDialogFragment$3;->this$0:Lcom/samsung/android/support/senl/nt/app/common/dialog/MeridianDialogFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/common/dialog/MeridianDialogFragment;->b(Lcom/samsung/android/support/senl/nt/app/common/dialog/MeridianDialogFragment;)Lcom/samsung/android/support/senl/nt/app/common/dialog/MeridianDialogFragment$DialogListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/common/dialog/MeridianDialogFragment$3;->this$0:Lcom/samsung/android/support/senl/nt/app/common/dialog/MeridianDialogFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/common/dialog/MeridianDialogFragment;->b(Lcom/samsung/android/support/senl/nt/app/common/dialog/MeridianDialogFragment;)Lcom/samsung/android/support/senl/nt/app/common/dialog/MeridianDialogFragment$DialogListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/common/dialog/MeridianDialogFragment$DialogListener;->onConfirm()V

    :cond_0
    return-void
.end method
