.class public Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/SystemUiControlView;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SystemUiControlView"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCustomAppToolbar(Landroid/app/Activity;)Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/ICustomToolbar;
    .locals 1

    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "Composer"

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbarFragment;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbarFragment;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbarFragment;->getSupportedToolbar()Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/ICustomToolbar;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "SystemUiControlView"

    const-string v0, "getCustomAppToolbar null# "

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public updateToShowHideStatusBar(Landroid/app/Activity;Z)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/util/SystemUi;->setHideStatusBarModeEnable(Landroid/app/Activity;Z)V

    return-void
.end method
