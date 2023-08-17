.class Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment;->d(Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment;->e(Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment;->a(Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment$1$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment$1$1;-><init>(Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment$1;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment;->a(Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    const/4 v0, -0x2

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment$1$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment$1$2;-><init>(Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment$1;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method
