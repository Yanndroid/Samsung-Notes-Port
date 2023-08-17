.class public Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageSyncMode;
.super Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ManageSyncMode"


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;-><init>(Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;)V

    return-void
.end method

.method private initDescription()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_sync_to_ms_folder_to_sync_description:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private initDoneButton()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "action_ms_login"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    sget v2, Lcom/samsung/android/support/senl/nt/app/R$id;->done_button:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$string;->action_done:I

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v3, 0x41880000    # 17.0f

    invoke-static {v1, v2, v3}, Lcom/samsung/android/support/senl/nt/base/common/util/CharUtils;->applyTextSizeUntilLargeSize(Landroid/content/Context;Landroid/widget/TextView;F)V

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageSyncMode$1;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageSyncMode$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageSyncMode;Landroid/view/View;)V

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0, v1}, Lo1/a;->i(Landroid/content/Context;I)V

    :cond_2
    return-void
.end method


# virtual methods
.method public getModeIndex()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public onBackKeyDown()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    return v1
.end method

.method public onCustomKeyEvent(ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->onCustomKeyEvent(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onFolderSelected(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;I)Z
    .locals 3

    const/4 p1, 0x1

    new-array p2, p1, [Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;->ManageCategory:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    const/4 v1, 0x0

    aput-object v0, p2, v1

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->isValidEvent([Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;)Z

    move-result p2

    if-nez p2, :cond_0

    return v1

    :cond_0
    const-wide/16 v1, 0x12c

    invoke-static {v1, v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->setHoldingEventTime(JLcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;)V

    return p1
.end method

.method public onLayout()V
    .locals 2

    const-string v0, "ManageSyncMode"

    const-string v1, "onLayout"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mActionMenuController:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_sync_to_ms_folder_to_sync_title:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->setToolbarTitle(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mActionMenuController:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->setDisplayHomeAsUpEnabled(Z)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageSyncMode;->initDescription()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageSyncMode;->initDoneButton()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->attachAddFolderItem(ZZ)V

    return-void
.end method
