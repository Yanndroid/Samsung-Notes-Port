.class Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ChangeColorDialogFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette$OnColorChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ChangeColorDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ChangeColorDialogFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ChangeColorDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ChangeColorDialogFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ChangeColorDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ChangeColorDialogFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ChangeColorDialogFragment;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ChangeColorDialogFragment;->e(Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ChangeColorDialogFragment;I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ChangeColorDialogFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ChangeColorDialogFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ChangeColorDialogFragment;->b(Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ChangeColorDialogFragment;)Lcom/samsung/android/support/senl/nt/app/main/common/dialog/IColorConfirmDialogResult;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ChangeColorDialogFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ChangeColorDialogFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ChangeColorDialogFragment;->b(Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ChangeColorDialogFragment;)Lcom/samsung/android/support/senl/nt/app/main/common/dialog/IColorConfirmDialogResult;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ChangeColorDialogFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ChangeColorDialogFragment;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ChangeColorDialogFragment;->c(Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ChangeColorDialogFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ChangeColorDialogFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ChangeColorDialogFragment;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ChangeColorDialogFragment;->d(Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ChangeColorDialogFragment;)I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/IColorConfirmDialogResult;->onConfirm(Ljava/util/ArrayList;I)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ChangeColorDialogFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ChangeColorDialogFragment;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;->dismiss()V

    return-void
.end method
