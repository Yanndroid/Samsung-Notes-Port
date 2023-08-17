.class public Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoftLoginActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoftLoginActivity$MsCallback;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCancelButton:Landroid/widget/Button;

.field private mProgressFragment:Landroidx/fragment/app/DialogFragment;

.field private mSettingsMicrosoft:Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;

.field private mSignInButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const-string v0, "ST$SettingsMicrosoftLoginActivity"

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoftLoginActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$001(Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoftLoginActivity;)V
    .locals 0

    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoftLoginActivity;)Landroidx/fragment/app/DialogFragment;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoftLoginActivity;->mProgressFragment:Landroidx/fragment/app/DialogFragment;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoftLoginActivity;)Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoftLoginActivity;->mSettingsMicrosoft:Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoftLoginActivity;Landroidx/fragment/app/DialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoftLoginActivity;->mProgressFragment:Landroidx/fragment/app/DialogFragment;

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    sget p1, Lcom/samsung/android/support/senl/nt/app/R$id;->layout_container:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoftLoginActivity;->mSignInButton:Landroid/widget/Button;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoftLoginActivity;->mCancelButton:Landroid/widget/Button;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/base/winset/util/ButtonShapeUtil;->updateContainedButtonLayout(Landroid/content/Context;Landroid/view/View;[Landroid/view/View;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p1, p0, v0}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->controllIndicatorBar(Landroid/app/Activity;I)Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "ST$SettingsMicrosoftLoginActivity"

    const-string v0, "onCreate()"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/samsung/android/support/senl/nt/app/R$layout;->settings_microsoft_login_activity:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoftLoginActivity$MsCallback;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoftLoginActivity$MsCallback;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoftLoginActivity;)V

    invoke-direct {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;-><init>(Ljava/lang/ref/WeakReference;Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft$MicrosoftCallback;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoftLoginActivity;->mSettingsMicrosoft:Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;

    sget p1, Lcom/samsung/android/support/senl/nt/app/R$id;->sign_in_button:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoftLoginActivity;->mSignInButton:Landroid/widget/Button;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoftLoginActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoftLoginActivity$1;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoftLoginActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    sget p1, Lcom/samsung/android/support/senl/nt/app/R$id;->cancel_button:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoftLoginActivity;->mCancelButton:Landroid/widget/Button;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoftLoginActivity$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoftLoginActivity$2;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoftLoginActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoftLoginActivity;->mSignInButton:Landroid/widget/Button;

    const/high16 v1, 0x41880000    # 17.0f

    invoke-static {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/util/CharUtils;->applyTextSizeUntilLargeSize(Landroid/content/Context;Landroid/widget/TextView;F)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoftLoginActivity;->mCancelButton:Landroid/widget/Button;

    invoke-static {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/util/CharUtils;->applyTextSizeUntilLargeSize(Landroid/content/Context;Landroid/widget/TextView;F)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoftLoginActivity;->mSettingsMicrosoft:Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;->release()V

    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->layout_container:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoftLoginActivity;->mSignInButton:Landroid/widget/Button;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoftLoginActivity;->mCancelButton:Landroid/widget/Button;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/util/ButtonShapeUtil;->updateContainedButtonLayout(Landroid/content/Context;Landroid/view/View;[Landroid/view/View;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->controllIndicatorBar(Landroid/app/Activity;I)Z

    const-string v0, "517"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;)V

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$color;->settings_microsoft_login_background_color:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getColor(I)I

    move-result v1

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/ContextUtils;->isNightMode(Landroid/content/Context;)Z

    move-result v2

    xor-int/2addr v2, v3

    invoke-static {p0, v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/util/SystemUi;->setNavigationBarTheme(Landroid/app/Activity;IZ)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getColor(I)I

    move-result v0

    invoke-static {p0, v0}, Lcom/samsung/android/support/senl/nt/base/common/util/SystemUi;->setStatusBarColor(Landroid/app/Activity;I)V

    return-void
.end method
