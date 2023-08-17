.class public Lcom/samsung/android/support/senl/nt/composer/main/screenon/view/ScreenOnFragment;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/screenon/presenter/ScreenOnContract$IView;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCustomLayer:Landroid/view/View;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "ScreenOnFragment"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenon/view/ScreenOnFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/support/senl/nt/composer/main/screenon/view/ScreenOnFragment;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/support/senl/nt/composer/main/screenon/view/ScreenOnFragment;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/screenon/view/ScreenOnFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenon/view/ScreenOnFragment;->closeCustomMenu()V

    return-void
.end method

.method public static bridge synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenon/view/ScreenOnFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private checkCustomMenuVisibility()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->isMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;->isDexMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenon/view/ScreenOnFragment;->mCustomLayer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbarFragment;->mToolbar:Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenon/view/ScreenOnFragment;->mCustomLayer:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->setScreenOnPopupView(Landroid/view/View;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenon/view/ScreenOnFragment;->closeCustomMenu()V

    :goto_1
    return-void
.end method

.method private closeCustomMenu()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenon/view/ScreenOnFragment;->mCustomLayer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbarFragment;->mToolbar:Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->setScreenOnPopupView(Landroid/view/View;)V

    return-void
.end method

.method private getSavedInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    if-nez p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "composer_instanceState"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    sget-object p2, Lcom/samsung/android/support/senl/nt/composer/main/screenon/view/ScreenOnFragment;->TAG:Ljava/lang/String;

    const-string v0, "getSavedInstanceState# change from getBundleExtra"

    invoke-static {p2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object p2, p1

    :cond_1
    :goto_0
    return-object p2
.end method

.method private initializeCloseButton()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenon/view/ScreenOnFragment;->mCustomLayer:Landroid/view/View;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->screenon_custom_close_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->setTooltipText(Landroid/view/View;)V

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/screenon/view/ScreenOnFragment$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenon/view/ScreenOnFragment$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/screenon/view/ScreenOnFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initializeResizeButton()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenon/view/ScreenOnFragment;->mCustomLayer:Landroid/view/View;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->screenon_custom_resize_window_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->setTooltipText(Landroid/view/View;)V

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/screenon/view/ScreenOnFragment$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenon/view/ScreenOnFragment$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/screenon/view/ScreenOnFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setTintColorToImageView(II)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenon/view/ScreenOnFragment;->mCustomLayer:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_1
    return-void
.end method

.method private updateCustomMenuVisible()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenon/view/ScreenOnFragment;->mCustomLayer:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenon/view/ScreenOnFragment;->setCustomMenu()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenon/view/ScreenOnFragment;->checkCustomMenuVisibility()V

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenon/view/ScreenOnFragment;->updateVisibilityOfResizeButton()V

    return-void
.end method

.method private updateVisibilityOfResizeButton()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenon/view/ScreenOnFragment;->mCustomLayer:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->screenon_custom_resize_window_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v0, :cond_4

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/winset/accessibility/VoiceAssistantTTS;->isVoiceAssistantEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->isPowerManageMode(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->isEnabledMobileKeyboard(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, 0x4

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public createPresenter()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenon/view/ScreenOnFragment;->TAG:Ljava/lang/String;

    const-string v1, "createPresenter"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/screenon/presenter/ScreenOnPresenter;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenon/presenter/ScreenOnPresenter;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->setPresenter(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;)V

    return-void
.end method

.method public getLayoutRes()I
    .locals 1

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$layout;->screenon_fragment_main:I

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenon/view/ScreenOnFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate# : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenon/view/ScreenOnFragment;->getSavedInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->onMultiWindowModeChanged(Z)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenon/view/ScreenOnFragment;->updateCustomMenuVisible()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->onResume()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenon/view/ScreenOnFragment;->updateCustomMenuVisible()V

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

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenon/view/ScreenOnFragment;->TAG:Ljava/lang/String;

    const-string v1, "onViewCreated# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/screenon/view/ScreenOnFragment;->getSavedInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public setBackgrounColorOfCustomMenu(IZZ)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenon/view/ScreenOnFragment;->mCustomLayer:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/BackgroundColorUtil;->getBackgroundThemeColorTable(Landroid/content/Context;IZZ)[I

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenon/view/ScreenOnFragment;->mCustomLayer:Landroid/view/View;

    const/4 p3, 0x0

    aget p3, p1, p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundColor(I)V

    sget p2, Lcom/samsung/android/support/senl/nt/composer/R$id;->screenon_custom_close_image:I

    const/4 p3, 0x1

    aget v0, p1, p3

    invoke-direct {p0, p2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenon/view/ScreenOnFragment;->setTintColorToImageView(II)V

    sget p2, Lcom/samsung/android/support/senl/nt/composer/R$id;->screenon_custom_resize_window_image:I

    aget p1, p1, p3

    invoke-direct {p0, p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenon/view/ScreenOnFragment;->setTintColorToImageView(II)V

    return-void
.end method

.method public setCustomMenu()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenon/view/ScreenOnFragment;->TAG:Ljava/lang/String;

    const-string v1, "getView is null"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->screenon_main:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->screenon_custom_containter:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenon/view/ScreenOnFragment;->mCustomLayer:Landroid/view/View;

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenon/view/ScreenOnFragment;->TAG:Ljava/lang/String;

    const-string v1, "mCustomLayer is null"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenon/view/ScreenOnFragment;->initializeResizeButton()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenon/view/ScreenOnFragment;->initializeCloseButton()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenon/view/ScreenOnFragment;->checkCustomMenuVisibility()V

    return-void
.end method
