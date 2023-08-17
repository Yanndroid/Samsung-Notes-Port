.class public Lcom/samsung/android/support/senl/nt/app/lock/view/create/CreatePasswordView;
.super Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/lock/presenter/create/ICreateContract$IView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/lock/view/create/CreatePasswordView$Mode;
    }
.end annotation


# static fields
.field private static final ACTIVITY_REQUEST_CODE_SAMSUNGACCOUNT:I = 0x1

.field private static final PERMISSION_REQUEST_CODE_ACCOUNT:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCreatePresenter:Lcom/samsung/android/support/senl/nt/app/lock/presenter/create/ICreateContract$IPresenter;

.field private mFirstInputPassword:Ljava/lang/String;

.field private mMode:Lcom/samsung/android/support/senl/nt/app/lock/view/create/CreatePasswordView$Mode;

.field private mNeedSamsungAccountCheck:Z

.field private mRootView:Landroid/view/View;

.field private mTitleStringId:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "CreatePasswordView"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/lock/utils/LockLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/app/lock/view/create/CreatePasswordView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/create/CreatePasswordView;->mTitleStringId:I

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/lock/view/create/CreatePasswordView$Mode;->CREATE:Lcom/samsung/android/support/senl/nt/app/lock/view/create/CreatePasswordView$Mode;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/app/lock/view/create/CreatePasswordView;-><init>(ZLcom/samsung/android/support/senl/nt/app/lock/view/create/CreatePasswordView$Mode;)V

    return-void
.end method

.method public constructor <init>(ZLcom/samsung/android/support/senl/nt/app/lock/view/create/CreatePasswordView$Mode;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/create/CreatePasswordView;->mTitleStringId:I

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/create/CreatePasswordView;->mNeedSamsungAccountCheck:Z

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/create/CreatePasswordView;->mMode:Lcom/samsung/android/support/senl/nt/app/lock/view/create/CreatePasswordView$Mode;

    sget-object p1, Lcom/samsung/android/support/senl/nt/app/lock/view/create/CreatePasswordView$2;->$SwitchMap$com$samsung$android$support$senl$nt$app$lock$view$create$CreatePasswordView$Mode:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    sget p1, Lcom/samsung/android/support/senl/nt/app/R$string;->lock_create_title:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_change_password:I

    :goto_0
    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/create/CreatePasswordView;->mTitleStringId:I

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/support/senl/nt/app/lock/view/create/CreatePasswordView;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mPasswordInputView:Landroid/widget/EditText;

    return-object p0
.end method

.method private checkSamsungAccount()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->loginSamsungAccount(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/create/CreatePasswordView;->mNeedSamsungAccountCheck:Z

    return-void
.end method

.method public static synthetic j(Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/nt/app/lock/view/create/CreatePasswordView;->lambda$initBiometricCheckBox$0(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static bridge synthetic k(Lcom/samsung/android/support/senl/nt/app/lock/view/create/CreatePasswordView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/create/CreatePasswordView;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method private static synthetic lambda$initBiometricCheckBox$0(Landroid/widget/CompoundButton;Z)V
    .locals 1

    const-string p0, "512"

    const-string v0, "5111"

    invoke-static {p0, v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public getBottomNaviVisibility()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public initBiometricCheckBox()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/LockPrefUtils;->getPrefUseFingerprint(Landroid/content/Context;)Z

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/LockPrefUtils;->getPrefUseIris(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->hasEnrolledFingerprint()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->hasEnrolledIris()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mUseBiometricsCheckBox:Landroid/widget/CheckBox;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->lock_create_use_finger_and_iris:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->hasEnrolledFingerprint()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mUseBiometricsCheckBox:Landroid/widget/CheckBox;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->lock_create_use_fingerprint:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->hasEnrolledIris()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mUseBiometricsCheckBox:Landroid/widget/CheckBox;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->lock_create_use_iris:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mUseBiometricsCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mUseBiometricsCheckBox:Landroid/widget/CheckBox;

    sget-object v1, Lcom/samsung/android/support/senl/nt/app/lock/view/create/a;->a:Lcom/samsung/android/support/senl/nt/app/lock/view/create/a;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mUseBiometricsCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    return-void
.end method

.method public initGuideText()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mGuideInitValue:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mGuideTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mGuideInitValue:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mGuideInitValue:Ljava/lang/CharSequence;

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/LockUtils;->isSetPassword(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mGuideTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/samsung/android/support/senl/nt/app/R$plurals;->lock_create_guide_default_new_password:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v1

    invoke-virtual {v4, v5, v3, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mGuideTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/samsung/android/support/senl/nt/app/R$plurals;->lock_create_guide_default:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v1

    invoke-virtual {v4, v5, v3, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method public initTitle()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/create/CreatePasswordView;->mTitleStringId:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget-object p3, Lcom/samsung/android/support/senl/nt/app/lock/view/create/CreatePasswordView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult request/result : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p3, 0x1

    if-ne p1, p3, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mPasswordInputView:Landroid/widget/EditText;

    invoke-virtual {p1, p3}, Landroid/widget/EditText;->setFocusable(Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mPasswordInputView:Landroid/widget/EditText;

    invoke-virtual {p1, p3}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/create/CreatePasswordView;->mNeedSamsungAccountCheck:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseView;->finishCancel()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->onAttach(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/create/CreatePasswordView;->mCreatePresenter:Lcom/samsung/android/support/senl/nt/app/lock/presenter/create/ICreateContract$IPresenter;

    if-nez p1, :cond_0

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/lock/presenter/create/CreatePasswordPresenter;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/create/CreatePasswordPresenter;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/presenter/create/ICreateContract$IView;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/create/CreatePasswordView;->mCreatePresenter:Lcom/samsung/android/support/senl/nt/app/lock/presenter/create/ICreateContract$IPresenter;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/lock/presenter/password/IBasePasswordContract$IPresenter;

    :cond_0
    return-void
.end method

.method public onCancelButtonClicked()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/create/CreatePasswordView;->mMode:Lcom/samsung/android/support/senl/nt/app/lock/view/create/CreatePasswordView$Mode;

    sget-object v1, Lcom/samsung/android/support/senl/nt/app/lock/view/create/CreatePasswordView$Mode;->CREATE:Lcom/samsung/android/support/senl/nt/app/lock/view/create/CreatePasswordView$Mode;

    if-ne v0, v1, :cond_0

    const-string v0, "512"

    const-string v1, "5112"

    goto :goto_0

    :cond_0
    const-string v0, "513"

    const-string v1, "5122"

    :goto_0
    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

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

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/create/CreatePasswordView;->mRootView:Landroid/view/View;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    iget-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/create/CreatePasswordView;->mNeedSamsungAccountCheck:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mPasswordInputView:Landroid/widget/EditText;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setFocusable(Z)V

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/support/senl/nt/app/lock/view/create/CreatePasswordView$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/create/CreatePasswordView$1;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/view/create/CreatePasswordView;)V

    const-string p3, "android.permission.GET_ACCOUNTS"

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->isPermissionGranted(Landroid/app/Activity;Ljava/lang/Runnable;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/create/CreatePasswordView;->mNeedSamsungAccountCheck:Z

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/create/CreatePasswordView;->checkSamsungAccount()V

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/create/CreatePasswordView;->mRootView:Landroid/view/View;

    return-object p1
.end method

.method public onDoneButtonClicked()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/create/CreatePasswordView;->mMode:Lcom/samsung/android/support/senl/nt/app/lock/view/create/CreatePasswordView$Mode;

    sget-object v1, Lcom/samsung/android/support/senl/nt/app/lock/view/create/CreatePasswordView$Mode;->CREATE:Lcom/samsung/android/support/senl/nt/app/lock/view/create/CreatePasswordView$Mode;

    if-ne v0, v1, :cond_0

    const-string v0, "512"

    const-string v1, "5113"

    goto :goto_0

    :cond_0
    const-string v0, "513"

    const-string v1, "5123"

    :goto_0
    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->getPasswordText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->isValidPassword(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/create/CreatePasswordView;->mFirstInputPassword:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->resetPasswordInput()V

    return v2

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/create/CreatePasswordView;->mFirstInputPassword:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/create/CreatePasswordView;->mFirstInputPassword:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mGuideTextView:Landroid/widget/TextView;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->lock_create_do_not_match:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->resetPasswordInput()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->requestFocusToPasswordInput()V

    return v2

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/create/CreatePasswordView;->mCreatePresenter:Lcom/samsung/android/support/senl/nt/app/lock/presenter/create/ICreateContract$IPresenter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/create/CreatePasswordView;->mFirstInputPassword:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/create/ICreateContract$IPresenter;->savePassword(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_4
    :goto_1
    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/create/CreatePasswordView;->mFirstInputPassword:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mGuideTextView:Landroid/widget/TextView;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->lock_create_confirm_again:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mDoneItem:Landroid/view/MenuItem;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->OK:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->updateBottomNavigationMenuColor()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->resetPasswordInput()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->requestFocusToPasswordInput()V

    return v2
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1, p3, p2}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->verifyRequestResult(Landroid/app/Activity;[I[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/create/CreatePasswordView;->mNeedSamsungAccountCheck:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/create/CreatePasswordView;->checkSamsungAccount()V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mPasswordInputView:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/create/CreatePasswordView;->mRootView:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/create/CreatePasswordView;->mNeedSamsungAccountCheck:Z

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseView;->finishCancel()V

    :cond_2
    :goto_0
    return-void
.end method

.method public updateDefaultGuideText()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mGuideTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/create/CreatePasswordView;->mFirstInputPassword:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mGuideTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$string;->lock_setting_set_password_possible_help:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mGuideTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$string;->lock_setting_change_password_confirm:I

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updatePasswordOwnerGuid()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lf/a;->m(Landroid/content/Context;)Lf/a;

    move-result-object v1

    invoke-virtual {v1}, Lf/a;->o()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/util/LockPrefUtils;->setLocalPasswordOwnerGuid(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
