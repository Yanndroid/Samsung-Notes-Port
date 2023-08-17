.class public abstract Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;
.super Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseView;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/lock/presenter/password/IBasePasswordContract$IView;


# static fields
.field private static final MENU_INDEX_CONTINUE:I = 0x1

.field private static final PASSWORD_MAX_LENGTH:I = 0x10

.field public static final PASSWORD_MIN_LENGTH:I = 0x4

.field private static final STATE_BUNDLE_KEY_CONFIRM_PASSWORD:Ljava/lang/String; = "state_bundle_key_confirm_password"

.field private static final STATE_BUNDLE_KEY_DONE:Ljava/lang/String; = "state_bundle_key_done"

.field private static final STATE_BUNDLE_KEY_INPUT_STATE:Ljava/lang/String; = "state_bundle_key_input_state"

.field private static final STATE_BUNDLE_KEY_PASSWORD:Ljava/lang/String; = "state_bundle_key_password"

.field private static final STATE_BUNDLE_KEY_PROGRESS:Ljava/lang/String; = "state_bundle_key_progress"

.field private static final STATE_BUNDLE_KEY_USE_BIOMETRIC:Ljava/lang/String; = "state_bundle_key_use_biometric"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBottomMenuProgressView:Lcom/samsung/android/support/senl/nt/app/lock/view/progress/BottomMenuProgressView;

.field private mBottomNaviView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

.field private final mBottomNavigationItemListener:Lcom/google/android/material/navigation/NavigationBarView$OnItemSelectedListener;

.field public mCancelItem:Landroid/view/MenuItem;

.field private mContainer:Landroid/view/ViewGroup;

.field private mDoneButtonInitValue:Z

.field public mDoneItem:Landroid/view/MenuItem;

.field private final mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field private mFingerprintApi:Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi;

.field public mGuideFingerPrintsChangedTextView:Landroid/widget/TextView;

.field public mGuideInitValue:Ljava/lang/CharSequence;

.field public mGuideTextView:Landroid/widget/TextView;

.field private mIrisApi:Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;

.field private mIsCheckedUseBiometric:Z

.field private mIsComfirmPassword:Z

.field private mIsPasswordEditedByCode:Z

.field private mIsPasswordWatcherRunning:Z

.field private mOptionMenuProgressView:Lcom/samsung/android/support/senl/nt/app/lock/view/progress/OptionMenuProgressView;

.field private mPasswordContainer:Landroid/widget/ScrollView;

.field private mPasswordContainerChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mPasswordInputInitState:Z

.field private mPasswordInputInitValue:Ljava/lang/String;

.field public mPasswordInputView:Landroid/widget/EditText;

.field private final mPasswordKeyListener:Landroid/view/View$OnKeyListener;

.field public mPasswordViewLayout:Lcom/samsung/android/support/senl/addons/base/view/inputblockcontainers/InputIntercepterRelativeLayout;

.field private final mPasswordWatcher:Landroid/text/TextWatcher;

.field public mPresenter:Lcom/samsung/android/support/senl/nt/app/lock/presenter/password/IBasePasswordContract$IPresenter;

.field private mProgressInitValue:Z

.field public mToolbar:Landroidx/appcompat/widget/Toolbar;

.field public mUseBiometricsCheckBox:Landroid/widget/CheckBox;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "AbsPasswordView"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/lock/utils/LockLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseView;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mIsPasswordEditedByCode:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mIsPasswordWatcherRunning:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mProgressInitValue:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mDoneButtonInitValue:Z

    const-string v1, ""

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mPasswordInputInitValue:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mGuideInitValue:Ljava/lang/CharSequence;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mPasswordInputInitState:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mIsCheckedUseBiometric:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mIsComfirmPassword:Z

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView$2;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mBottomNavigationItemListener:Lcom/google/android/material/navigation/NavigationBarView$OnItemSelectedListener;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView$3;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mPasswordKeyListener:Landroid/view/View$OnKeyListener;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView$4;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView$5;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mPasswordWatcher:Landroid/text/TextWatcher;

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->lambda$showSoftInput$0(Landroid/view/inputmethod/InputMethodManager;)V

    return-void
.end method

.method private addPasswordWatcher()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mIsPasswordWatcherRunning:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mPasswordInputView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mPasswordWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mIsPasswordWatcherRunning:Z

    :cond_0
    return-void
.end method

.method private applyOpacity(II)I
    .locals 1

    shl-int/lit8 p2, p2, 0x18

    const v0, 0xffffff

    and-int/2addr p1, v0

    or-int/2addr p1, p2

    return p1
.end method

.method public static synthetic b(Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->lambda$ignoreInputEvent$3(Z)V

    return-void
.end method

.method public static synthetic c(Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->lambda$requestFocusToPasswordInput$4()V

    return-void
.end method

.method public static synthetic d(Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->lambda$showProgress$1()V

    return-void
.end method

.method public static synthetic e(Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->lambda$hideProgress$2()V

    return-void
.end method

.method public static bridge synthetic f(Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mIsPasswordEditedByCode:Z

    return p0
.end method

.method public static bridge synthetic g(Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;)Landroid/widget/ScrollView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mPasswordContainer:Landroid/widget/ScrollView;

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mIsPasswordEditedByCode:Z

    return-void
.end method

.method private hasInvalidCharacter(Ljava/lang/String;)Z
    .locals 5

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-char v3, p1, v2

    const/16 v4, 0x20

    if-le v3, v4, :cond_1

    const/16 v4, 0x7f

    if-le v3, v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method static bridge synthetic i()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private initBottomNavigationMenu(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->bottom_navi_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mBottomNaviView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$menu;->lock_password_bottom_menu:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/navigation/NavigationBarView;->inflateMenu(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mBottomNaviView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mBottomNavigationItemListener:Lcom/google/android/material/navigation/NavigationBarView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Lcom/google/android/material/navigation/NavigationBarView;->setOnItemSelectedListener(Lcom/google/android/material/navigation/NavigationBarView$OnItemSelectedListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mBottomNaviView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationBarView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->action_done:I

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mDoneItem:Landroid/view/MenuItem;

    iget-boolean v2, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mDoneButtonInitValue:Z

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->setMenuItemEnabled(Landroid/view/MenuItem;Z)V

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mIsComfirmPassword:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mDoneItem:Landroid/view/MenuItem;

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$string;->OK:I

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :cond_0
    new-instance v0, Lcom/samsung/android/support/senl/nt/app/lock/view/progress/BottomMenuProgressView;

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/navigation/NavigationBarItemView;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/app/lock/view/progress/BottomMenuProgressView;-><init>(Lcom/google/android/material/navigation/NavigationBarItemView;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mBottomMenuProgressView:Lcom/samsung/android/support/senl/nt/app/lock/view/progress/BottomMenuProgressView;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mBottomNaviView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-virtual {p1}, Lcom/google/android/material/navigation/NavigationBarView;->getMenu()Landroid/view/Menu;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->action_cancel:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mCancelItem:Landroid/view/MenuItem;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->setMenuItemEnabled(Landroid/view/MenuItem;Z)V

    iget-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mProgressInitValue:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mBottomMenuProgressView:Lcom/samsung/android/support/senl/nt/app/lock/view/progress/BottomMenuProgressView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/lock/view/progress/BottomMenuProgressView;->show(Landroid/content/Context;)V

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->updateBottomNavigationMenuColor()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mBottomNaviView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->getBottomNaviVisibility()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method private initLayout(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->lock_toolbar:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->initTitle()V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->initBottomNavigationMenu(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->initOptionMenu()V

    :goto_0
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->guide_text_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mGuideTextView:Landroid/widget/TextView;

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->guide_text_view_fingerprints_changed:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mGuideFingerPrintsChangedTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mPasswordInputInitValue:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mPasswordInputInitValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->isValidPassword(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->updateDefaultGuideText()V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->initGuideText()V

    :cond_3
    :goto_1
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->edit_pwd:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mPasswordInputView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mPasswordKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mPasswordInputView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mPasswordInputInitValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->setPasswordText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mPasswordInputView:Landroid/widget/EditText;

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mPasswordInputInitState:Z

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->use_biometrics_checkbox:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mUseBiometricsCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->initBiometricCheckBox()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mUseBiometricsCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mUseBiometricsCheckBox:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mIsCheckedUseBiometric:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_4
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->password_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ScrollView;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mPasswordContainer:Landroid/widget/ScrollView;

    if-eqz p1, :cond_5

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView$1;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mPasswordContainerChangeListener:Landroid/view/View$OnLayoutChangeListener;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mPasswordContainer:Landroid/widget/ScrollView;

    invoke-virtual {v0, p1}, Landroid/widget/ScrollView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_5
    return-void
.end method

.method private initOptionMenu()V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/lock/view/progress/OptionMenuProgressView;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-direct {v1, v2, v0}, Lcom/samsung/android/support/senl/nt/app/lock/view/progress/OptionMenuProgressView;-><init>(Landroidx/appcompat/widget/Toolbar;I)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mOptionMenuProgressView:Lcom/samsung/android/support/senl/nt/app/lock/view/progress/OptionMenuProgressView;

    return-void
.end method

.method private synthetic lambda$hideProgress$2()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mBottomMenuProgressView:Lcom/samsung/android/support/senl/nt/app/lock/view/progress/BottomMenuProgressView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/lock/view/progress/BottomMenuProgressView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mBottomMenuProgressView:Lcom/samsung/android/support/senl/nt/app/lock/view/progress/BottomMenuProgressView;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/lock/view/progress/BottomMenuProgressView;->hide()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mOptionMenuProgressView:Lcom/samsung/android/support/senl/nt/app/lock/view/progress/OptionMenuProgressView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/lock/view/progress/OptionMenuProgressView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mOptionMenuProgressView:Lcom/samsung/android/support/senl/nt/app/lock/view/progress/OptionMenuProgressView;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/lock/view/progress/OptionMenuProgressView;->hide()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mPasswordInputView:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    :cond_2
    return-void
.end method

.method private synthetic lambda$ignoreInputEvent$3(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mPasswordViewLayout:Lcom/samsung/android/support/senl/addons/base/view/inputblockcontainers/InputIntercepterRelativeLayout;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/addons/base/view/inputblockcontainers/InputIntercepterRelativeLayout;->ignoreInputEvent(Z)V

    return-void
.end method

.method private synthetic lambda$requestFocusToPasswordInput$4()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mPasswordInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method

.method private synthetic lambda$showProgress$1()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mBottomMenuProgressView:Lcom/samsung/android/support/senl/nt/app/lock/view/progress/BottomMenuProgressView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/lock/view/progress/BottomMenuProgressView;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mBottomMenuProgressView:Lcom/samsung/android/support/senl/nt/app/lock/view/progress/BottomMenuProgressView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/lock/view/progress/BottomMenuProgressView;->show(Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mOptionMenuProgressView:Lcom/samsung/android/support/senl/nt/app/lock/view/progress/OptionMenuProgressView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/lock/view/progress/OptionMenuProgressView;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mOptionMenuProgressView:Lcom/samsung/android/support/senl/nt/app/lock/view/progress/OptionMenuProgressView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/lock/view/progress/OptionMenuProgressView;->show(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$showSoftInput$0(Landroid/view/inputmethod/InputMethodManager;)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->isInputMethodShown(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mPasswordInputView:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    sget-object p1, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->TAG:Ljava/lang/String;

    const-string v0, "show SIP delayed"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private refreshViewByOrientation()V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->onSaveInstanceState(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1, v2, v0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->isPasswordInputAccessible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->showSoftInput()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mPasswordInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->addPasswordWatcher()V

    :cond_0
    return-void
.end method

.method private removePasswordWatcher()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mIsPasswordWatcherRunning:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mPasswordInputView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mPasswordWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mIsPasswordWatcherRunning:Z

    :cond_0
    return-void
.end method

.method private restoreSavedInstance(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_1

    const-string v0, "state_bundle_key_password"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mPasswordInputInitValue:Ljava/lang/String;

    :cond_0
    const-string v0, "state_bundle_key_done"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mDoneButtonInitValue:Z

    const-string v0, "state_bundle_key_progress"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mProgressInitValue:Z

    const-string v0, "state_bundle_key_input_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mPasswordInputInitState:Z

    const-string v0, "state_bundle_key_use_biometric"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mIsCheckedUseBiometric:Z

    const-string v0, "state_bundle_key_confirm_password"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mIsComfirmPassword:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public abstract getBottomNaviVisibility()I
.end method

.method public getEncryptedPasswordHash()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/LockUtils;->getEncryptedPasswordHash(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncryptedPasswordSalt()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/LockUtils;->getEncryptedPasswordSalt(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPasswordText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mPasswordInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasEnrolledFingerprint()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mFingerprintApi:Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi;->hasEnrolledFingerprint(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public hasEnrolledIris()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mIrisApi:Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;->hasEnrolledIris(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public hideProgress()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/lock/view/base/l;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/l;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public hideSoftInput()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mPasswordInputView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method public ignoreInputEvent(Z)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignoreInputEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mPasswordViewLayout:Lcom/samsung/android/support/senl/addons/base/view/inputblockcontainers/InputIntercepterRelativeLayout;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/lock/view/base/n;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/n;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public abstract initBiometricCheckBox()V
.end method

.method public abstract initGuideText()V
.end method

.method public abstract initTitle()V
.end method

.method public isPasswordInputAccessible()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mPasswordInputView:Landroid/widget/EditText;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/widget/EditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mPasswordInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mPasswordInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocusableInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isProgressbarShowing()Z
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mBottomMenuProgressView:Lcom/samsung/android/support/senl/nt/app/lock/view/progress/BottomMenuProgressView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/lock/view/progress/BottomMenuProgressView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mOptionMenuProgressView:Lcom/samsung/android/support/senl/nt/app/lock/view/progress/OptionMenuProgressView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/lock/view/progress/OptionMenuProgressView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public isUseBiometricChecked()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mUseBiometricsCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mUseBiometricsCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method public isValidPassword(Ljava/lang/String;)Z
    .locals 6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object p1, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->TAG:Ljava/lang/String;

    const-string v0, "isValidPassword not added yet"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->hasInvalidCharacter(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->TAG:Ljava/lang/String;

    const-string v0, "has invalid character"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mGuideTextView:Landroid/widget/TextView;

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->lock_create_invalid_character:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    return v1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-ge v0, v3, :cond_2

    sget-object p1, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->TAG:Ljava/lang/String;

    const-string v0, "password min length"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mGuideTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/samsung/android/support/senl/nt/app/R$plurals;->lock_create_guide_default:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-virtual {v0, v4, v3, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return v1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0x10

    if-le p1, v0, :cond_3

    sget-object p1, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->TAG:Ljava/lang/String;

    const-string v3, "password max length"

    invoke-static {p1, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mGuideTextView:Landroid/widget/TextView;

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$string;->lock_create_over_max:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    invoke-virtual {p0, v3, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return v1

    :cond_3
    return v2
.end method

.method public loginSamsungAccount(I)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loginSamsungAccount requestCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/account/AccountHelper;->getAccountConfirmIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setRetainInstance(Z)V

    return-void
.end method

.method public abstract onCancelButtonClicked()V
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->refreshViewByOrientation()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .param p1    # Landroid/view/Menu;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MenuInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->TAG:Ljava/lang/String;

    const-string v1, "onCreateOptionsMenu"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$menu;->lock_password_bottom_menu:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$id;->action_done:I

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mDoneItem:Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mDoneButtonInitValue:Z

    invoke-virtual {p0, p2, v0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->setMenuItemEnabled(Landroid/view/MenuItem;Z)V

    iget-boolean p2, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mIsComfirmPassword:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mDoneItem:Landroid/view/MenuItem;

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->OK:I

    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :cond_0
    sget p2, Lcom/samsung/android/support/senl/nt/app/R$id;->action_cancel:I

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mCancelItem:Landroid/view/MenuItem;

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->setMenuItemEnabled(Landroid/view/MenuItem;Z)V

    iget-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mProgressInitValue:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mOptionMenuProgressView:Lcom/samsung/android/support/senl/nt/app/lock/view/progress/OptionMenuProgressView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/app/lock/view/progress/OptionMenuProgressView;->show(Landroid/content/Context;)V

    :cond_1
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

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mContainer:Landroid/view/ViewGroup;

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$layout;->lock_password:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/addons/base/view/inputblockcontainers/InputIntercepterRelativeLayout;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mPasswordViewLayout:Lcom/samsung/android/support/senl/addons/base/view/inputblockcontainers/InputIntercepterRelativeLayout;

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mFingerprintApi:Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi;

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mIrisApi:Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mIsPasswordEditedByCode:Z

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mIsPasswordWatcherRunning:Z

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mProgressInitValue:Z

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mDoneButtonInitValue:Z

    const-string p1, ""

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mPasswordInputInitValue:Ljava/lang/String;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mPasswordInputInitState:Z

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mGuideInitValue:Ljava/lang/CharSequence;

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mIsComfirmPassword:Z

    invoke-direct {p0, p3}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->restoreSavedInstance(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mPasswordViewLayout:Lcom/samsung/android/support/senl/addons/base/view/inputblockcontainers/InputIntercepterRelativeLayout;

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->initLayout(Landroid/view/View;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mPasswordViewLayout:Lcom/samsung/android/support/senl/addons/base/view/inputblockcontainers/InputIntercepterRelativeLayout;

    return-object p1
.end method

.method public onDestroy()V
    .locals 3

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mPasswordContainer:Landroid/widget/ScrollView;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mPasswordContainerChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mPasswordContainer:Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mPasswordContainerChangeListener:Landroid/view/View$OnLayoutChangeListener;

    :cond_0
    return-void
.end method

.method public abstract onDoneButtonClicked()Z
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1    # Landroid/view/MenuItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mDoneItem:Landroid/view/MenuItem;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->onDoneButtonClicked()Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mCancelItem:Landroid/view/MenuItem;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseView;->finishCancel()V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->removePasswordWatcher()V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->isPasswordInputAccessible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->showSoftInput()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->addPasswordWatcher()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->getPasswordText()Ljava/lang/String;

    move-result-object v0

    const-string v1, "state_bundle_key_password"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mDoneItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v0

    const-string v1, "state_bundle_key_done"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mDoneItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->OK:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "state_bundle_key_confirm_password"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->isProgressbarShowing()Z

    move-result v0

    const-string v1, "state_bundle_key_progress"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mPasswordInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isEnabled()Z

    move-result v0

    const-string v1, "state_bundle_key_input_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mUseBiometricsCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    const-string v1, "state_bundle_key_use_biometric"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseView;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->isPasswordInputAccessible()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->showSoftInput()V

    :cond_0
    return-void
.end method

.method public requestFocusToPasswordInput()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mPasswordInputView:Landroid/widget/EditText;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/lock/view/base/j;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/j;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public resetOldBiometricBlockingEndTime()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->TAG:Ljava/lang/String;

    const-string v1, "resetOldBiometricBlockingEndTime"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/util/LockPrefUtils;->setOldBiometricMethodBlockEndTime(Landroid/content/Context;J)V

    :cond_0
    return-void
.end method

.method public resetPasswordInput()V
    .locals 2

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->setPasswordText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mDoneItem:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->setMenuItemEnabled(Landroid/view/MenuItem;Z)V

    return-void
.end method

.method public setBiometricsEnabled()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mFingerprintApi:Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi;->isDeviceAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mFingerprintApi:Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi;->hasEnrolledFingerprint(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mFingerprintApi:Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi;->enableFingerprint(Landroid/content/Context;)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mIrisApi:Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;->isDeviceAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mIrisApi:Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;->hasEnrolledIris(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mIrisApi:Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;->enableIris(Landroid/content/Context;)V

    :cond_2
    return-void
.end method

.method public setMenuItemEnabled(Landroid/view/MenuItem;Z)V
    .locals 0

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public setPasswordInputViewAccessibility(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mPasswordInputView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mPasswordInputView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mPasswordInputView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setFocusable(Z)V

    return-void
.end method

.method public setPasswordText(Ljava/lang/CharSequence;)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mIsPasswordWatcherRunning:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mIsPasswordEditedByCode:Z

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mPasswordInputView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showProgress()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/lock/view/base/k;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/k;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showSoftInput()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mPasswordInputView:Landroid/widget/EditText;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->isInputMethodShown(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mPasswordInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mPasswordInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mPasswordInputView:Landroid/widget/EditText;

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    sget-object v1, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->TAG:Ljava/lang/String;

    const-string v2, "show SIP"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/lock/view/base/m;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/m;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;Landroid/view/inputmethod/InputMethodManager;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    :goto_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shown SIP ? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mPasswordInputView:Landroid/widget/EditText;

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateBottomNavigationMenuColor()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/ButtonBackgroundUtils;->isShowButtonShapeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/ContextUtils;->isNightMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, -0x1000000

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mDoneItem:Landroid/view/MenuItem;

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/util/ButtonBackgroundUtils;->updateMenuItemTextColor(Landroid/view/MenuItem;I)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mCancelItem:Landroid/view/MenuItem;

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/util/ButtonBackgroundUtils;->updateMenuItemTextColor(Landroid/view/MenuItem;I)V

    :cond_1
    return-void
.end method

.method public abstract updateDefaultGuideText()V
.end method
