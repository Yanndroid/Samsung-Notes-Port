.class public Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/TemplateStyleView;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/BaseTemplateView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/TemplateStyleView$Contract;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TemplateStyleView"


# instance fields
.field private mContract:Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/TemplateStyleView$Contract;

.field private mLayoutWidth:I

.field private mMultiWindowMode:I

.field private final mSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/BaseTemplateView;-><init>(Landroidx/fragment/app/Fragment;Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/TemplateStyleView;->mLayoutWidth:I

    new-instance p2, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/TemplateStyleView$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/TemplateStyleView$1;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/TemplateStyleView;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/TemplateStyleView;->mSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/BaseTemplateView;->mImageTabView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView;->setEnableNestedScroll(Z)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/BaseTemplateView;->mPdfTabView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/PdfTemplateView;

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView;->setEnableNestedScroll(Z)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/TemplateStyleView;->initialize(Landroid/os/Bundle;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/TemplateStyleView;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/TemplateStyleView;->mLayoutWidth:I

    return p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/TemplateStyleView;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/TemplateStyleView;->mLayoutWidth:I

    return-void
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/TemplateStyleView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/TemplateStyleView;->updatePagerHeight()V

    return-void
.end method

.method private getCurrentPageType()I
    .locals 3

    const-string v0, "Settings"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v1, "settings_preferred_note_style"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getDefaultArguments()Landroid/os/Bundle;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "template_setting_mode"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method private updatePagerHeight()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/TemplateStyleView;->mContract:Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/TemplateStyleView$Contract;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/TemplateStyleView$Contract;->updatePagerHeight()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getLayoutHeight(I)I
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/BaseTemplateView;->mImageTabView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;

    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView;->getLayoutHeight()I

    move-result p1

    return p1

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/BaseTemplateView;->mPdfTabView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/PdfTemplateView;

    goto :goto_0
.end method

.method public initialize(Landroid/os/Bundle;)V
    .locals 1

    const-string p1, "TemplateStyleView"

    const-string v0, "initialize# "

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/BaseTemplateView;->mViewStateData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ViewStateData;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/TemplateStyleView;->getDefaultArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ViewStateData;->initialize(Landroid/os/Bundle;)V

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/select/SelectedTemplateData;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/select/SelectedTemplateData;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/BaseTemplateView;->mSelectedTemplateData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/select/SelectedTemplateData;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/BaseTemplateView;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->getMultiWindowMode(Landroid/app/Activity;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/TemplateStyleView;->mMultiWindowMode:I

    const-string p1, "Settings"

    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/TemplateStyleView;->mSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public isCanNotApplyPdfTemplate(I)Z
    .locals 1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/constants/TemplateViewType;->isPdfType(I)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/TemplateStyleView;->getCurrentPageType()I

    move-result p1

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public onCancel()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/BaseTemplateView;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public onConfigurationChanged()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/BaseTemplateView;->setSpanCount()V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/BaseTemplateView;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->getMultiWindowMode(Landroid/app/Activity;)I

    move-result v0

    iget v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/TemplateStyleView;->mMultiWindowMode:I

    if-eq v1, v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged - getMultiWindowMode("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") preMultiWindowMode("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/TemplateStyleView;->mMultiWindowMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TemplateStyleView"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/BaseTemplateView;->scrollToPosition()V

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/TemplateStyleView;->mMultiWindowMode:I

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/TemplateStyleView;->updatePagerHeight()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onOptionsItemSelected# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TemplateStyleView"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x0

    const v1, 0x102002c

    if-eq p1, v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/TemplateStyleView;->onCancel()Z

    return v0
.end method

.method public onResume(Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/TemplateStyleView;->getDefaultArguments()Landroid/os/Bundle;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/BaseTemplateView;->onResume(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/TemplateStyleView;->updatePagerHeight()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/BaseTemplateView;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/TemplateStyleView$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/TemplateStyleView$2;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/TemplateStyleView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public onSelectItem(I)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/util/sa/SAManager;->INSTANCE:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/util/sa/SAManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/util/sa/SAManager;->onSaveDefaultTemplate(II)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/BaseTemplateView;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->setSelectedTemplateData(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/BaseTemplateView;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->onCancelDelete()Z

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/BaseTemplateView;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->loadItemData()V

    return-void
.end method

.method public onSelectItem(ILjava/lang/String;II)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/TemplateStyleView;->isCanNotApplyPdfTemplate(I)Z

    move-result p3

    const/4 p4, 0x0

    if-eqz p3, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/BaseTemplateView;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_can_not_apply_pdf_template_when_infinite_scrolling_page_style_applied:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p4, p4}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;Ljava/lang/String;IZ)V

    :cond_0
    return-void

    :cond_1
    const-string p3, "Settings"

    invoke-static {p3}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object p3

    const/4 v0, 0x0

    const-string v1, "settings_page_template"

    invoke-virtual {p3, v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/BaseTemplateView;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/ContextUtils;->isNightMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/constants/TemplateViewType;->isPdfType(I)Z

    move-result p3

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/BaseTemplateView;->mContext:Landroid/content/Context;

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->dark_mode_not_applied_has_pdf_toast_msg:I

    goto :goto_0

    :cond_2
    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/BaseTemplateView;->mContext:Landroid/content/Context;

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->dark_mode_not_applied_template_image_toast_msg:I

    :goto_0
    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0, p4, p4}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;Ljava/lang/String;IZ)V

    :cond_3
    sget-object p3, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/util/sa/SAManager;->INSTANCE:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/util/sa/SAManager;

    invoke-virtual {p3, p1, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/util/sa/SAManager;->onSaveDefaultTemplate(II)V

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/BaseTemplateView;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;

    invoke-virtual {p3, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->setSelectedTemplateData(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/BaseTemplateView;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->loadItemData()V

    return-void
.end method

.method public release()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/BaseTemplateView;->release()V

    const-string v0, "Settings"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/TemplateStyleView;->mSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public setContract(Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/TemplateStyleView$Contract;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/TemplateStyleView;->mContract:Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/TemplateStyleView$Contract;

    return-void
.end method

.method public updateItemsPageRatio(F)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/BaseTemplateView;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/BaseTemplateView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->updateItemsPageRatio(Landroid/content/Context;F)V

    return-void
.end method
