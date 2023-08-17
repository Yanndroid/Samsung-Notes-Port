.class public Lcom/samsung/android/support/senl/nt/app/inapp/InAppCollaborationActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppView$ActivityContract;


# static fields
.field private static final TAG:Ljava/lang/String; = "InAppCollaborationActivity"


# instance fields
.field private final mBlockTouchListener:Landroid/view/View$OnTouchListener;

.field private mInAppActivityAttributes:Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppActivityAttributes;

.field private mView:Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/inapp/InAppCollaborationActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/inapp/InAppCollaborationActivity$1;-><init>(Lcom/samsung/android/support/senl/nt/app/inapp/InAppCollaborationActivity;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/InAppCollaborationActivity;->mBlockTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/app/inapp/InAppCollaborationActivity;)Landroid/view/View$OnTouchListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/InAppCollaborationActivity;->mBlockTouchListener:Landroid/view/View$OnTouchListener;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/app/inapp/InAppCollaborationActivity;)Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/InAppCollaborationActivity;->mView:Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppView;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/app/inapp/InAppCollaborationActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/inapp/InAppCollaborationActivity;->updateUIMode(Ljava/lang/String;)V

    return-void
.end method

.method private initBlockView(I)V
    .locals 1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->in_app_collaboration_dim:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/InAppCollaborationActivity;->mBlockTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method

.method private initContinuityService()V
    .locals 2

    const-string v0, "InAppCollaborationActivity"

    const-string v1, "initContinuityService"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityClientManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityClientManager;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/inapp/InAppCollaborationActivity$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/inapp/InAppCollaborationActivity$2;-><init>(Lcom/samsung/android/support/senl/nt/app/inapp/InAppCollaborationActivity;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->setActionContract(Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager$ContinuityActionContract;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityClientManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityClientManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityClientManager;->setContinuityIntent(Landroid/content/Intent;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityClientManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityClientManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->connect(Landroid/content/Context;)V

    return-void
.end method

.method private updateUIMode(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateUIMode# message : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InAppCollaborationActivity"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->in_app_collaboration_dim:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "updateUIMode# blockView is null"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v1, Lcom/samsung/android/support/senl/nt/app/inapp/InAppCollaborationActivity$4;

    invoke-direct {v1, p0, p1, v0}, Lcom/samsung/android/support/senl/nt/app/inapp/InAppCollaborationActivity$4;-><init>(Lcom/samsung/android/support/senl/nt/app/inapp/InAppCollaborationActivity;Ljava/lang/String;Landroid/view/View;)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public finishActivity()V
    .locals 2

    const-string v0, "InAppCollaborationActivity"

    const-string v1, "finishActivity#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityClientManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityClientManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityClientManager;->release(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 v0, -0x1

    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegate;->setDefaultNightMode(I)V

    return-void
.end method

.method public onBackPressed()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/InAppCollaborationActivity;->mView:Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppView;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/inapp/InAppCollaborationActivity$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/nt/app/inapp/InAppCollaborationActivity$3;-><init>(Lcom/samsung/android/support/senl/nt/app/inapp/InAppCollaborationActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppView;->showDisconnectDialog(Landroidx/fragment/app/FragmentManager;Lcom/samsung/android/support/senl/nt/app/inapp/view/dialog/DisconnectDialogFragment$Contract;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/InAppCollaborationActivity;->mView:Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppView;->needViewChange(Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "InAppCollaborationActivity"

    const-string v0, "onConfigurationChanged# needViewChange"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/samsung/android/support/senl/nt/app/R$id;->in_app_collaboration_dim:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/InAppCollaborationActivity;->mView:Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppView;

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppView;->createView(Landroid/app/Activity;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/inapp/InAppCollaborationActivity;->initBlockView(I)V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "InAppCollaborationActivity"

    const-string v0, "onCreate"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "671"

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-static {p1}, Landroidx/appcompat/app/AppCompatDelegate;->setDefaultNightMode(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/sdk/util/SpenSdkInitializer;->initialize(Landroid/content/Context;)Z

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/inapp/InAppCollaborationActivity;->initContinuityService()V

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppView;

    invoke-direct {p1, p0, p0}, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppView;-><init>(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppView$ActivityContract;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/InAppCollaborationActivity;->mView:Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppView;

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppActivityAttributes;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppActivityAttributes;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/InAppCollaborationActivity;->mInAppActivityAttributes:Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppActivityAttributes;

    invoke-virtual {p1, p0}, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppActivityAttributes;->setupAttributes(Landroid/app/Activity;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "InAppCollaborationActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityClientManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityClientManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->disconnect(Landroid/content/Context;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityClientManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityClientManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityClientManager;->release(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/InAppCollaborationActivity;->mView:Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppView;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppView;->detachedView()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/InAppCollaborationActivity;->mInAppActivityAttributes:Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppActivityAttributes;

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppActivityAttributes;->clearAttributes(Landroid/app/Activity;)V

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDetachedFromWindow()V

    const-string v0, "InAppCollaborationActivity"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    const-string v0, "InAppCollaborationActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    const-string v0, "InAppCollaborationActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/InAppCollaborationActivity;->mInAppActivityAttributes:Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppActivityAttributes;

    invoke-virtual {p1, p0}, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppActivityAttributes;->windowFocusChanged(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method
