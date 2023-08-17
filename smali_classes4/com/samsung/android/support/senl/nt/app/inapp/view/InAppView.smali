.class public Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppView;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppView$ActivityContract;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "InAppView"


# instance fields
.field private final mActivityContract:Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppView$ActivityContract;

.field private final mAddOnsToolbarFlowView:Landroid/view/View;

.field private mCloseButton:Landroid/view/View;

.field private mCloseButtonVisibility:I

.field private final mFloatingView:Landroid/view/View;

.field private mIsFoldStateClosed:Z

.field private final mIsFoldableModel:Z

.field private mIsLargeHandsetLayout:Z

.field private mMultiWindowMode:I

.field private mRootView:Landroid/view/ViewGroup;

.field private final mSubToolbarView:Landroid/view/View;

.field private final mToolbarManager:Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppToolbarManager;

.field private final mToolbarView:Landroid/view/View;

.field private mUiMode:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppView$ActivityContract;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppView;->mCloseButtonVisibility:I

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppView;->mActivityContract:Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppView$ActivityContract;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->getMultiWindowMode(Landroid/content/res/Configuration;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppView;->mMultiWindowMode:I

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/ResourceUtils;->isLargeHandsetLayout(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppView;->mIsLargeHandsetLayout:Z

    iget p2, p2, Landroid/content/res/Configuration;->uiMode:I

    iput p2, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppView;->mUiMode:I

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->isFoldableModel()Z

    move-result p2

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppView;->mIsFoldableModel:Z

    if-eqz p2, :cond_0

    iget-boolean p2, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppView;->mIsLargeHandsetLayout:Z

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppView;->mIsFoldStateClosed:Z

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$layout;->in_app_collaboration_floating_layout:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppView;->mFloatingView:Landroid/view/View;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$layout;->in_app_collaboration_toolbar_container:I

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppView;->mToolbarView:Landroid/view/View;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$layout;->in_app_collaboration_sub_toolbar_container:I

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppView;->mSubToolbarView:Landroid/view/View;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$layout;->in_app_collaboration_add_ons_toolbar_flow:I

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppView;->mAddOnsToolbarFlowView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppView;->createView(Landroid/app/Activity;)V

    new-instance p2, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppToolbarManager;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppView;->mRootView:Landroid/view/ViewGroup;

    invoke-direct {p2, p1, v0}, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppToolbarManager;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppView;->mToolbarManager:Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppToolbarManager;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppView;->onClickClose()V

    return-void
.end method

.method private initCloseButton(Landroid/view/View;)V
    .locals 1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->action_close_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppView;->mCloseButton:Landroid/view/View;

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppView;->mCloseButtonVisibility:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppView;->mCloseButton:Landroid/view/View;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppView$1;-><init>(Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppView;->mCloseButton:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->setTooltipText(Landroid/view/View;)V

    return-void
.end method

.method private invalidateToolbarLayout(Landroid/app/Activity;)V
    .locals 3

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppView;->mRootView:Landroid/view/ViewGroup;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->in_app_toolbar_container:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$dimen;->in_app_toolbar_container_padding_start_end:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1, p1, v1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method private onClickClose()V
    .locals 2

    const-string v0, "InAppView"

    const-string v1, "onClickClose()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityClientManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityClientManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->closeInAppCollaboration()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppView;->mActivityContract:Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppView$ActivityContract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppView$ActivityContract;->finishActivity()V

    :cond_0
    const-string v0, "671"

    const-string v1, "6638"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public createView(Landroid/app/Activity;)V
    .locals 4
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppView;->mActivityContract:Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppView$ActivityContract;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$layout;->in_app_collaboration_activity:I

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppView$ActivityContract;->setContentView(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppView;->mRootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->layout_toolbar_container:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppView;->mToolbarView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppView;->mRootView:Landroid/view/ViewGroup;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->layout_sub_toolbar_container:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppView;->mSubToolbarView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppView;->mRootView:Landroid/view/ViewGroup;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->layout_add_ons_toolbar_container:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppView;->mAddOnsToolbarFlowView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppView;->mRootView:Landroid/view/ViewGroup;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->inapp_toolbar_root_view:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppView;->mFloatingView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppView;->mAddOnsToolbarFlowView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppView;->mAddOnsToolbarFlowView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$layout;->in_app_collaboration_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppView;->mRootView:Landroid/view/ViewGroup;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->layout_toolbar_container:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppView;->mToolbarView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppView;->mRootView:Landroid/view/ViewGroup;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->layout_sub_toolbar_container:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppView;->mSubToolbarView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppView;->mRootView:Landroid/view/ViewGroup;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->layout_add_ons_toolbar_container:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppView;->mAddOnsToolbarFlowView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppView;->mRootView:Landroid/view/ViewGroup;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->inapp_toolbar_root_view:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppView;->mFloatingView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->fragment_container:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppView;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppView;->mFloatingView:Landroid/view/View;

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$id;->floating_layout_container_for_sub:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$id;->in_app_collaboration_dim_background_for_action_bar:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppView;->mIsFoldStateClosed:Z

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$dimen;->in_app_toolbar_container_margin_start_end_for_sub_display:I

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$dimen;->in_app_toolbar_container_margin_start_end:I

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppView;->mRootView:Landroid/view/ViewGroup;

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$id;->in_app_layout_container:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppView;->invalidateToolbarLayout(Landroid/app/Activity;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppView;->initCloseButton(Landroid/view/View;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppView;->mToolbarManager:Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppToolbarManager;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppToolbarManager;->invalidateFlow()V

    :cond_2
    return-void
.end method

.method public detachedView()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppView;->mToolbarManager:Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppToolbarManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppToolbarManager;->release()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppView;->mToolbarManager:Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppToolbarManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppToolbarManager;->close()V

    return-void
.end method

.method public needViewChange(Landroid/content/res/Configuration;)Z
    .locals 5
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppView;->mIsLargeHandsetLayout:Z

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppView;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/util/ResourceUtils;->isLargeHandsetLayout(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "InAppView"

    const/4 v4, 0x1

    if-eq v0, v1, :cond_1

    iget-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppView;->mIsLargeHandsetLayout:Z

    xor-int/2addr p1, v4

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppView;->mIsLargeHandsetLayout:Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "needViewChange() change to LargeHandsetLayout "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppView;->mIsLargeHandsetLayout:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppView;->mIsFoldableModel:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppView;->mIsLargeHandsetLayout:Z

    if-nez p1, :cond_0

    move v2, v4

    :cond_0
    iput-boolean v2, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppView;->mIsFoldStateClosed:Z

    return v4

    :cond_1
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->getMultiWindowMode(Landroid/content/res/Configuration;)I

    move-result v0

    iget v1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppView;->mMultiWindowMode:I

    if-eq v1, v0, :cond_2

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppView;->mMultiWindowMode:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "needViewChange() change to windowMode "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppView;->mMultiWindowMode:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_2
    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppView;->mUiMode:I

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    if-eq v0, p1, :cond_3

    return v4

    :cond_3
    return v2
.end method

.method public receiveData([B)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppView;->mToolbarManager:Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppToolbarManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppToolbarManager;->receiveData([B)V

    return-void
.end method

.method public setDimView()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppView;->mToolbarManager:Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppToolbarManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppToolbarManager;->closeColorPopups()V

    return-void
.end method

.method public showCloseButton()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppView;->mCloseButtonVisibility:I

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppView;->mCloseButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public showDisconnectDialog(Landroidx/fragment/app/FragmentManager;Lcom/samsung/android/support/senl/nt/app/inapp/view/dialog/DisconnectDialogFragment$Contract;)V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/inapp/view/dialog/DisconnectDialogFragment;

    invoke-direct {v0, p2}, Lcom/samsung/android/support/senl/nt/app/inapp/view/dialog/DisconnectDialogFragment;-><init>(Lcom/samsung/android/support/senl/nt/app/inapp/view/dialog/DisconnectDialogFragment$Contract;)V

    const-string p2, "DisconnectDialogFragment"

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    const-string p1, "750"

    const-string p2, "7067"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
