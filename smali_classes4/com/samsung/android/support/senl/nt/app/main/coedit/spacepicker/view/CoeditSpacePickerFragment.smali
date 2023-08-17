.class public Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/view/CoeditSpacePickerFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/adapter/SpacePickerSelectListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "CoeditSpacePickerFragment"


# instance fields
.field private mCoeditCreateInfo:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo;

.field private final mCoeditCreateResult:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector$CoeditCreateResult;

.field private final mEditDialogResultListener:Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IEditDialogResult;

.field private mIsOpenedByList:Z

.field private mPresenter:Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/presenter/CoeditSpacePresenter;

.field private mProgressCircle:Landroidx/appcompat/widget/SeslProgressBar;

.field private mSessionConnector:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector;

.field private mSpaceList:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/view/CoeditSpacePickerFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/view/CoeditSpacePickerFragment$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/view/CoeditSpacePickerFragment;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/view/CoeditSpacePickerFragment;->mCoeditCreateResult:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector$CoeditCreateResult;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/view/CoeditSpacePickerFragment$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/view/CoeditSpacePickerFragment$2;-><init>(Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/view/CoeditSpacePickerFragment;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/view/CoeditSpacePickerFragment;->mEditDialogResultListener:Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IEditDialogResult;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/view/CoeditSpacePickerFragment;)Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/view/CoeditSpacePickerFragment;->mCoeditCreateInfo:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/view/CoeditSpacePickerFragment;)Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector$CoeditCreateResult;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/view/CoeditSpacePickerFragment;->mCoeditCreateResult:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector$CoeditCreateResult;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/view/CoeditSpacePickerFragment;)Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/view/CoeditSpacePickerFragment;->mSessionConnector:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/view/CoeditSpacePickerFragment;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/view/CoeditSpacePickerFragment;->mSpaceList:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/view/CoeditSpacePickerFragment;Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/view/CoeditSpacePickerFragment;->mCoeditCreateInfo:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo;

    return-void
.end method

.method public static bridge synthetic f(Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/view/CoeditSpacePickerFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/view/CoeditSpacePickerFragment;->finishActivityWithResult(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private finishActivityWithResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finishActivityWithResult# groupId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", spaceId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CoeditSpacePickerFragment"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "mde_group_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "mde_space_id"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lv/b;->b()Lv/b;

    move-result-object p1

    invoke-virtual {p1}, Lv/b;->a()Ljava/lang/String;

    move-result-object p1

    const-string p2, "mde_owner_id"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/view/CoeditSpacePickerFragment;->mCoeditCreateInfo:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo;->getInvitationLink()Lcom/samsung/android/sdk/mobileservice/social/group/InvitationLink;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/view/CoeditSpacePickerFragment;->mCoeditCreateInfo:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo;->getInvitationLink()Lcom/samsung/android/sdk/mobileservice/social/group/InvitationLink;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/mobileservice/social/group/InvitationLink;->getUrl()Ljava/lang/String;

    move-result-object p1

    const-string p2, "mde_coedit_invite_url"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 p2, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public static bridge synthetic g(Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/view/CoeditSpacePickerFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/view/CoeditSpacePickerFragment;->setProgressVisibility(I)V

    return-void
.end method

.method private initLayout(Landroid/view/View;)V
    .locals 2

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->coedit_invite_space_list:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/view/CoeditSpacePickerFragment;->mSpaceList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/view/CoeditSpacePickerFragment;->mSpaceList:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->seslSetGoToTopEnabled(Z)V

    return-void
.end method

.method private initProgressView()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->comp_progress_circle:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->progress_bar:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    check-cast v0, Landroidx/appcompat/widget/SeslProgressBar;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/view/CoeditSpacePickerFragment;->mProgressCircle:Landroidx/appcompat/widget/SeslProgressBar;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/view/CoeditSpacePickerFragment;->mProgressCircle:Landroidx/appcompat/widget/SeslProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method private setProgressVisibility(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/view/CoeditSpacePickerFragment;->mProgressCircle:Landroidx/appcompat/widget/SeslProgressBar;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/view/CoeditSpacePickerFragment;->initProgressView()V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setProgressVisibility# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CoeditSpacePickerFragment"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/view/CoeditSpacePickerFragment;->mProgressCircle:Landroidx/appcompat/widget/SeslProgressBar;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public createNewSpace()V
    .locals 3

    const-string v0, "CoeditSpacePickerFragment"

    const-string v1, "createNewSpace"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/CoeditNameDialogFragment;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/CoeditNameDialogFragment;-><init>()V

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->action_create_notebook:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;->setAnchorViewId(I)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/view/CoeditSpacePickerFragment;->mEditDialogResultListener:Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IEditDialogResult;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->setEditDialogResultListener(Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IEditDialogResult;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "add_notebook_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/view/CoeditSpacePickerFragment;->mIsOpenedByList:Z

    if-eqz v0, :cond_0

    const-string v0, "7704"

    goto :goto_0

    :cond_0
    const-string v0, "7504"

    :goto_0
    const-string v1, "685"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$layout;->coedit_space_picker_fragment:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/view/CoeditSpacePickerFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/presenter/CoeditSpacePresenter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/presenter/CoeditSpacePresenter;->removeObserver()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/view/CoeditSpacePickerFragment;->mProgressCircle:Landroidx/appcompat/widget/SeslProgressBar;

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/view/CoeditSpacePickerFragment;->mIsOpenedByList:Z

    const-string v1, "key_opened_by_list"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onSpaceSelected(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "CoeditSpacePickerFragment"

    const-string v1, "onSpaceSelected"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/view/CoeditSpacePickerFragment;->finishActivityWithResult(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/view/CoeditSpacePickerFragment;->mIsOpenedByList:Z

    if-eqz p1, :cond_0

    const-string p1, "7705"

    goto :goto_0

    :cond_0
    const-string p1, "7505"

    :goto_0
    const-string p2, "685"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 v0, 0x0

    const-string v1, "key_opened_by_list"

    if-eqz p2, :cond_0

    :goto_0
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/view/CoeditSpacePickerFragment;->mIsOpenedByList:Z

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/view/CoeditSpacePickerFragment;->initLayout(Landroid/view/View;)V

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/presenter/CoeditSpacePresenter;

    new-instance p2, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/view/CoeditSpacePickerFragment$3;

    invoke-direct {p2, p0}, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/view/CoeditSpacePickerFragment$3;-><init>(Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/view/CoeditSpacePickerFragment;)V

    invoke-direct {p1, p0, p0, p2}, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/presenter/CoeditSpacePresenter;-><init>(Landroidx/fragment/app/Fragment;Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/adapter/SpacePickerSelectListener;Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/presenter/CoeditSpacePresenter$ViewContract$IRecyclerView;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/view/CoeditSpacePickerFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/presenter/CoeditSpacePresenter;

    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "add_notebook_dialog"

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/CoeditNameDialogFragment;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/view/CoeditSpacePickerFragment;->mEditDialogResultListener:Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IEditDialogResult;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->setEditDialogResultListener(Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IEditDialogResult;)V

    :cond_0
    return-void
.end method

.method public setCoeditSessionConnector(Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/view/CoeditSpacePickerFragment;->mSessionConnector:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector;

    return-void
.end method
