.class public Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisView;
.super Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyIrisContract$IView;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mGuideTextView:Landroid/widget/TextView;

.field private final mPresenter:Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyIrisContract$IPresenter;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "VerifyIrisView"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/lock/utils/LockLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyIrisPresenter;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyIrisPresenter;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyIrisContract$IView;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyIrisContract$IPresenter;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView$PASSWORDTYPE;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView$PASSWORDTYPE;)V

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyIrisPresenter;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyIrisPresenter;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyIrisContract$IView;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyIrisContract$IPresenter;

    return-void
.end method

.method private createDexView(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$layout;->lock_dex_dialog_view:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->iris_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/base/winset/view/SprImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->dex_guide_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisView;->mGuideTextView:Landroid/widget/TextView;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->lock_dex_use_fingerprint:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->use_password:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/e;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/e;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public static synthetic g(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisView;Landroid/os/Handler;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisView;->lambda$showRetryDialog$3(Landroid/os/Handler;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic h(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisView;Landroid/os/Handler;Landroid/content/Context;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisView;->lambda$showRetryDialog$2(Landroid/os/Handler;Landroid/content/Context;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic i(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisView;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisView;->lambda$showRetryDialog$1(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic j(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisView;->lambda$createDexView$0(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$createDexView$0(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyIrisContract$IPresenter;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyIrisContract$IPresenter;->cancelAuthenticate()V

    const-string p1, "323"

    const-string v0, "3221"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->changeToPasswordVerification(I)V

    return-void
.end method

.method private synthetic lambda$showRetryDialog$1(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyIrisContract$IPresenter;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyIrisContract$IPresenter;->authenticate(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic lambda$showRetryDialog$2(Landroid/os/Handler;Landroid/content/Context;Landroid/content/DialogInterface;I)V
    .locals 0

    new-instance p3, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/g;

    invoke-direct {p3, p0, p2}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/g;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisView;Landroid/content/Context;)V

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$showRetryDialog$3(Landroid/os/Handler;Landroid/content/DialogInterface;I)V
    .locals 0

    new-instance p2, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/f;

    invoke-direct {p2, p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/f;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisView;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public authenticate()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyIrisContract$IPresenter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyIrisContract$IPresenter;->authenticate(Landroid/content/Context;)V

    return-void
.end method

.method public cancelAuthenticate()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyIrisContract$IPresenter;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyIrisContract$IPresenter;->cancelAuthenticate()V

    return-void
.end method

.method public getPreView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
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

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;->isDexMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p2, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisView;->TAG:Ljava/lang/String;

    const-string p3, "createDexView"

    invoke-static {p2, p3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisView;->createDexView(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisView;->TAG:Ljava/lang/String;

    const-string v1, "emptyView"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDetach()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyIrisContract$IPresenter;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyIrisContract$IPresenter;->cancelAuthenticate()V

    return-void
.end method

.method public onResume()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisView;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseView;->isBlockedByMultiwindow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/lock/utils/LockToastUtils;->showMultiWindowImpossibleToast(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseView;->exitMultiWindow()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyIrisContract$IPresenter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyIrisContract$IPresenter;->onResume(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method public setGuideText(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisView;->mGuideTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public showRetryDialog(I)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisView;->showRetryDialog(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showRetryDialog(Ljava/lang/CharSequence;)V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->mRetryDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/d;

    invoke-direct {v2, p0, v1, v0}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/d;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisView;Landroid/os/Handler;Landroid/content/Context;)V

    new-instance v3, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/c;

    invoke-direct {v3, p0, v1}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/c;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisView;Landroid/os/Handler;)V

    invoke-static {v0, p1, v2, v3}, Lcom/samsung/android/support/senl/nt/app/lock/utils/LockDialogUtils;->showRetryIrisDialogWithError(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->mRetryDialog:Landroidx/appcompat/app/AlertDialog;

    return-void
.end method
