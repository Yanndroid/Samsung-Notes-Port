.class public Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "AbsDialogFragment"


# instance fields
.field private mAnchorView:Landroid/view/View;

.field private mAnchorViewId:I

.field private mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mParentDialog:Landroidx/appcompat/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment$1;-><init>(Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;->setAnchor()V

    return-void
.end method

.method private getAnchor()Landroid/view/View;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;->mAnchorViewId:I

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;->mParentDialog:Landroidx/appcompat/app/AlertDialog;

    if-nez v2, :cond_2

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/common/util/CommonUtil;->isAvailableActivity(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v1, p0, Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;->mAnchorViewId:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1

    :cond_2
    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;->mAnchorViewId:I

    invoke-virtual {v2, v0}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private removeAnchorWithLayoutChangeListener()V
    .locals 2

    const-string v0, "AbsDialogFragment"

    const-string v1, "removeAnchorWithLayoutChangeListener# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;->mAnchorView:Landroid/view/View;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;->getAnchor()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;->mAnchorView:Landroid/view/View;

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;->mAnchorView:Landroid/view/View;

    if-nez v1, :cond_1

    const-string v1, "removeAnchorWithLayoutChangeListener# anchorView is null"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v1, v0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method private setAnchor()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;->mAnchorView:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;->getAnchor()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;->mAnchorView:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;->mAnchorView:Landroid/view/View;

    const-string v1, "AbsDialogFragment"

    if-nez v0, :cond_1

    const-string v0, "setAnchor# anchorView is null"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "setAnchor# "

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;->mAnchorView:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/app/popover/AlertDialogWrapper;->setAnchorView(Landroid/app/Dialog;Landroid/view/View;)V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/winset/app/popover/AlertDialogWrapper;->anchorLayoutStyle(Landroid/app/Dialog;)V

    return-void
.end method

.method private setAnchorWithActivityDecorView()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;->mAnchorView:Landroid/view/View;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/common/util/CommonUtil;->isNotAvailableActivity(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment$2;-><init>(Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setAnchorWithLayoutChangeListener()V
    .locals 2

    const-string v0, "AbsDialogFragment"

    const-string v1, "setAnchorWithLayoutChangeListener# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;->mAnchorView:Landroid/view/View;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;->getAnchor()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;->mAnchorView:Landroid/view/View;

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;->mAnchorView:Landroid/view/View;

    if-nez v1, :cond_1

    const-string v1, "setAnchorWithLayoutChangeListener# anchorView is null"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    :try_start_0
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AbsDialogFragment"

    const-string v2, "dismiss : "

    invoke-static {v1, v2, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;->setAnchorWithLayoutChangeListener()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "anchorViewId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;->mAnchorViewId:I

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;->removeAnchorWithLayoutChangeListener()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;->mParentDialog:Landroidx/appcompat/app/AlertDialog;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;->mAnchorView:Landroid/view/View;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;->mAnchorViewId:I

    const-string v1, "anchorViewId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    const-string v0, "AbsDialogFragment"

    const-string v1, "onStart#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;->setAnchor()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;->setAnchorWithActivityDecorView()V

    return-void
.end method

.method public setAnchorViewId(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;->mAnchorViewId:I

    return-void
.end method

.method public setAnchorViewId(Landroidx/appcompat/app/AlertDialog;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;->mParentDialog:Landroidx/appcompat/app/AlertDialog;

    iput p2, p0, Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;->mAnchorViewId:I

    return-void
.end method

.method public show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/FragmentManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    :try_start_0
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "AbsDialogFragment"

    const-string v0, "show : "

    invoke-static {p2, v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
