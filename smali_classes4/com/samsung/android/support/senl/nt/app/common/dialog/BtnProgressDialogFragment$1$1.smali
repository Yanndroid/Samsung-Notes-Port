.class Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment$1;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment$1;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment$1$1;->this$1:Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment$1$1;->this$1:Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment$1;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment;->b(Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment;)Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment$IAddonsInstallDialog;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment$1$1;->this$1:Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment$1;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment;->b(Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment;)Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment$IAddonsInstallDialog;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment$1$1;->this$1:Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment$1;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment;->c(Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment$IAddonsInstallDialog;->onConfirm(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment$1$1;->this$1:Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment$1;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment;->e(Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment;)V

    return-void
.end method
