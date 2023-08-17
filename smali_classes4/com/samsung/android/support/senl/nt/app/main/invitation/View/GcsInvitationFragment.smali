.class public Lcom/samsung/android/support/senl/nt/app/main/invitation/View/GcsInvitationFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String; = "GcsInvitationFragment"


# instance fields
.field private mDialog:Lcom/samsung/android/support/senl/nt/app/main/invitation/View/dialog/InvitationJoinDialogFragment;

.field private mInvitationList:Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;

.field private mNoInviteView:Landroid/widget/TextView;

.field private mPresenter:Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter;

.field private final receivedReceiver:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesInviteReceivedReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/invitation/View/GcsInvitationFragment$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/invitation/View/GcsInvitationFragment$3;-><init>(Lcom/samsung/android/support/senl/nt/app/main/invitation/View/GcsInvitationFragment;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/invitation/View/GcsInvitationFragment;->receivedReceiver:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesInviteReceivedReceiver;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/main/invitation/View/GcsInvitationFragment;)Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/invitation/View/GcsInvitationFragment;->mInvitationList:Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/app/main/invitation/View/GcsInvitationFragment;)Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/invitation/View/GcsInvitationFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/app/main/invitation/View/GcsInvitationFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/invitation/View/GcsInvitationFragment;->onGcsInvitationReceived()V

    return-void
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/app/main/invitation/View/GcsInvitationFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/invitation/View/GcsInvitationFragment;->setNoInvitationViewVisibility(Z)V

    return-void
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/app/main/invitation/View/GcsInvitationFragment;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/invitation/View/GcsInvitationFragment;->showInvitationJoinDialog(ILjava/lang/String;)V

    return-void
.end method

.method private initInvitationJoinDialog()V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/invitation/View/dialog/InvitationJoinDialogFragment;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/main/invitation/View/dialog/InvitationJoinDialogFragment;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/invitation/View/GcsInvitationFragment;->mDialog:Lcom/samsung/android/support/senl/nt/app/main/invitation/View/dialog/InvitationJoinDialogFragment;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/invitation/View/GcsInvitationFragment$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/main/invitation/View/GcsInvitationFragment$4;-><init>(Lcom/samsung/android/support/senl/nt/app/main/invitation/View/GcsInvitationFragment;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/invitation/View/dialog/InvitationJoinDialogFragment;->setOnResultListener(Lcom/samsung/android/support/senl/nt/app/main/invitation/View/dialog/InvitationJoinDialogFragment$IInvitationJoinDialogResultListener;)V

    return-void
.end method

.method private initLayout()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->nonote:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/invitation/View/GcsInvitationFragment;->mNoInviteView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->appbar_layout:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/common/listener/OffsetUpdateListener;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/support/senl/nt/app/common/listener/OffsetUpdateListener;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/invitation/View/GcsInvitationFragment;->mNoInviteView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/app/common/listener/OffsetUpdateListener;->setVerticalView(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->recyclerview_invitationlist:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/invitation/View/GcsInvitationFragment;->mInvitationList:Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/invitation/View/GcsInvitationFragment;->mInvitationList:Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->seslSetGoToTopEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/invitation/View/GcsInvitationFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter;->initializeListAdapter()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/invitation/View/GcsInvitationFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter;->getInvitationsCount()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-direct {p0, v2}, Lcom/samsung/android/support/senl/nt/app/main/invitation/View/GcsInvitationFragment;->setNoInvitationViewVisibility(Z)V

    return-void
.end method

.method private onGcsInvitationReceived()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/invitation/View/GcsInvitationFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter;->requestInvitationList()V

    return-void
.end method

.method private setNoInvitationViewVisibility(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/invitation/View/GcsInvitationFragment;->mNoInviteView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setNoInvitationViewVisibility "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GcsInvitationFragment"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/invitation/View/GcsInvitationFragment;->mNoInviteView:Landroid/widget/TextView;

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/invitation/View/GcsInvitationFragment;->mNoInviteView:Landroid/widget/TextView;

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private showInvitationJoinDialog(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/invitation/View/GcsInvitationFragment;->mDialog:Lcom/samsung/android/support/senl/nt/app/main/invitation/View/dialog/InvitationJoinDialogFragment;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/invitation/View/GcsInvitationFragment;->initInvitationJoinDialog()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/invitation/View/GcsInvitationFragment;->mDialog:Lcom/samsung/android/support/senl/nt/app/main/invitation/View/dialog/InvitationJoinDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const-string v0, "GcsInvitationFragment"

    const-string v1, "showInvitationJoinDialog()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/invitation/View/GcsInvitationFragment;->mDialog:Lcom/samsung/android/support/senl/nt/app/main/invitation/View/dialog/InvitationJoinDialogFragment;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/invitation/View/dialog/InvitationJoinDialogFragment;->setGroupId(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/invitation/View/GcsInvitationFragment;->mDialog:Lcom/samsung/android/support/senl/nt/app/main/invitation/View/dialog/InvitationJoinDialogFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    const-string v1, "InvitationJoinDialogFragment"

    invoke-virtual {p1, p2, v1}, Lcom/samsung/android/support/senl/nt/app/main/invitation/View/dialog/InvitationJoinDialogFragment;->showAllowingStateLoss(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IllegalStateException :"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/invitation/View/GcsInvitationFragment;->initLayout()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/invitation/View/GcsInvitationFragment$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/main/invitation/View/GcsInvitationFragment$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/invitation/View/GcsInvitationFragment;)V

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/main/invitation/View/GcsInvitationFragment$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/nt/app/main/invitation/View/GcsInvitationFragment$2;-><init>(Lcom/samsung/android/support/senl/nt/app/main/invitation/View/GcsInvitationFragment;)V

    invoke-direct {p1, v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter;-><init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/ViewContract$IView;Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/ViewContract$IRecyclerView;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/invitation/View/GcsInvitationFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/invitation/View/GcsInvitationFragment;->receivedReceiver:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesInviteReceivedReceiver;

    invoke-static {p1, v0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesInviteReceivedReceiver;->registerReceiver(Landroid/content/Context;Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesInviteReceivedReceiver;)V

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

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$layout;->gcs_invitation_list_fragment:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/common/GcsInvitationMenuBadgeUpdater;->setInvitationListHasBadgePref(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/invitation/View/GcsInvitationFragment;->receivedReceiver:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesInviteReceivedReceiver;

    invoke-static {v0, v1}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesInviteReceivedReceiver;->unregisterReceiver(Landroid/content/Context;Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesInviteReceivedReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/common/GcsInvitationMenuBadgeUpdater;->setInvitationListHasBadgePref(Z)V

    const-string v0, "663"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;)V

    return-void
.end method

.method public onSesSessionConnected()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/invitation/View/GcsInvitationFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter;->requestInvitationList()V

    return-void
.end method
