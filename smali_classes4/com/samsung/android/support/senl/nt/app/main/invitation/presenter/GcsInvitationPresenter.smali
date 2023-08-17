.class public Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter$GroupCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GcsInvitationPresenter"


# instance fields
.field private final mAdapter:Lcom/samsung/android/support/senl/nt/app/main/invitation/adapter/GcsInvitationAdapter;

.field private final mContext:Landroid/content/Context;

.field private final mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/ViewContract$IRecyclerView;

.field private final mView:Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/ViewContract$IView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/ViewContract$IView;Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/ViewContract$IRecyclerView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter;->mView:Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/ViewContract$IView;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/ViewContract$IRecyclerView;

    new-instance p2, Lcom/samsung/android/support/senl/nt/app/main/invitation/adapter/GcsInvitationAdapter;

    new-instance p3, Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter$1;

    invoke-direct {p3, p0}, Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter;)V

    invoke-direct {p2, p1, p3}, Lcom/samsung/android/support/senl/nt/app/main/invitation/adapter/GcsInvitationAdapter;-><init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/app/main/invitation/adapter/AdapterContract$IPresenter;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter;->mAdapter:Lcom/samsung/android/support/senl/nt/app/main/invitation/adapter/GcsInvitationAdapter;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter;)Lcom/samsung/android/support/senl/nt/app/main/invitation/adapter/GcsInvitationAdapter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter;->mAdapter:Lcom/samsung/android/support/senl/nt/app/main/invitation/adapter/GcsInvitationAdapter;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter;)Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/ViewContract$IView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter;->mView:Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/ViewContract$IView;

    return-object p0
.end method

.method private checkNetworkConnection()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lc3/h;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter$6;-><init>(Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    return v0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter;Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationListResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter;->initInvitationList(Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationListResult;)V

    return-void
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter;ILcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationListResult$GroupInvitation;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter;->onItemSelected(ILcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationListResult$GroupInvitation;)V

    return-void
.end method

.method public static bridge synthetic f(Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter;->updateInviteList(I)V

    return-void
.end method

.method private initInvitationList(Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationListResult;)V
    .locals 4

    const-string v0, "GcsInvitationPresenter"

    const-string v1, "initInvitationList()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationListResult;->getInvitationList()Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationListResult$GroupInvitation;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationListResult$GroupInvitation;->getGroupId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "UNM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter;->mAdapter:Lcom/samsung/android/support/senl/nt/app/main/invitation/adapter/GcsInvitationAdapter;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/invitation/adapter/GcsInvitationAdapter;->setInvitationList(Ljava/util/List;)V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter$2;-><init>(Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onItemSelected(ILcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationListResult$GroupInvitation;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    sget-object v1, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;->Default:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->isValidSingleActionEvent(Z[Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3, v1}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->setHoldingSingleActionEventTime(JLcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;)V

    const-string v0, "663"

    const-string v1, "6607"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter;->mView:Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/ViewContract$IView;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationListResult$GroupInvitation;->getGroupId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/ViewContract$IView;->showInvitationJoinDialog(ILjava/lang/String;)V

    return-void
.end method

.method private showWifiSyncOnlyToast(Ly1/b;)V
    .locals 1

    invoke-virtual {p1}, Ly1/b;->a()Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;->FAIL_WIFI_ONLY_EXCEPTION:Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;

    if-ne p1, v0, :cond_0

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter$5;-><init>(Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private updateInviteList(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter;->mAdapter:Lcom/samsung/android/support/senl/nt/app/main/invitation/adapter/GcsInvitationAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/invitation/adapter/GcsInvitationAdapter;->removeInvitationItemByPosition(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter;->mAdapter:Lcom/samsung/android/support/senl/nt/app/main/invitation/adapter/GcsInvitationAdapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter;->mView:Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/ViewContract$IView;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter;->mAdapter:Lcom/samsung/android/support/senl/nt/app/main/invitation/adapter/GcsInvitationAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/invitation/adapter/GcsInvitationAdapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/ViewContract$IView;->setNoInvitationViewVisibility(Z)V

    return-void
.end method


# virtual methods
.method public getInvitationsCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter;->mAdapter:Lcom/samsung/android/support/senl/nt/app/main/invitation/adapter/GcsInvitationAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/invitation/adapter/GcsInvitationAdapter;->getItemCount()I

    move-result v0

    return v0
.end method

.method public initializeListAdapter()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/ViewContract$IRecyclerView;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter;->mAdapter:Lcom/samsung/android/support/senl/nt/app/main/invitation/adapter/GcsInvitationAdapter;

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/ViewContract$IRecyclerView;->setAdapter(Lcom/samsung/android/support/senl/nt/app/main/invitation/adapter/GcsInvitationAdapter;)V

    return-void
.end method

.method public requestInvitationAcceptance(ILjava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter;->checkNetworkConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/k;->L()Lcom/samsung/android/app/notes/sync/contentsharing/sessession/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter$3;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter$3;-><init>(Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter;I)V

    invoke-static {p2, v0}, Lu/g;->f(Ljava/lang/String;Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$GroupResultCallback;)I
    :try_end_0
    .catch Ly1/b; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "requestInvitationAcceptance() Exception : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GcsInvitationPresenter"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter;->showWifiSyncOnlyToast(Ly1/b;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public requestInvitationList()V
    .locals 5

    const-string v0, "GcsInvitationPresenter"

    const/4 v1, -0x1

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter;->checkNetworkConnection()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/k;->L()Lcom/samsung/android/app/notes/sync/contentsharing/sessession/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->A()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter$GroupCallback;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter$GroupCallback;-><init>(Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter;)V

    invoke-static {v2}, Lu/g;->m(Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$GroupResultCallback;)I

    move-result v1

    goto :goto_0

    :cond_0
    const-string v2, "[CS2-2] requestInvitationList() invalid connection!"

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestInvitationList() Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const-string v1, "[CS2-2] requestInvitationList() Failed to request my invitation list."

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter;->mView:Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/ViewContract$IView;

    invoke-interface {v0, v2}, Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/ViewContract$IView;->setNoInvitationViewVisibility(Z)V

    :cond_1
    return-void
.end method

.method public requestInvitationRejection(ILjava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter;->checkNetworkConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/k;->L()Lcom/samsung/android/app/notes/sync/contentsharing/sessession/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter$4;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter$4;-><init>(Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter;I)V

    invoke-static {p2, v0}, Lu/g;->h(Ljava/lang/String;Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$GroupResultCallback;)I
    :try_end_0
    .catch Ly1/b; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "requestInvitationRejection() Exception : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GcsInvitationPresenter"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter;->showWifiSyncOnlyToast(Ly1/b;)V

    :cond_0
    :goto_0
    return-void
.end method
