.class public abstract Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingContract;


# static fields
.field public static final DISABLE_BUTTON_ALPHA:F = 0.4f

.field public static final ENABLE_BUTTON_ALPHA:F = 1.0f

.field public static final WIDGET_TEXT_BUTTON_TEXT_SIZE:I = 0x12


# instance fields
.field public mBgColorRadioGroup:Landroid/widget/RadioGroup;

.field public mBlackRadio:Landroid/widget/RadioButton;

.field public mDarkModeSwitch:Landroidx/appcompat/widget/SwitchCompat;

.field public mOpacityText:Landroid/widget/TextView;

.field public mParent:Landroid/view/View;

.field public mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

.field public mWhiteRadio:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mParent:Landroid/view/View;

    return-void
.end method

.method private initDarkModeSwitch()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mParent:Landroid/view/View;

    sget v1, Lcom/samsung/android/support/senl/nt/base/R$id;->widget_setting_dark_mode_on_off_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/widget/util/BaseWidgetUtils;->isNotSupportMatchWithDarkMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mParent:Landroid/view/View;

    sget v2, Lcom/samsung/android/support/senl/nt/base/R$id;->widget_setting_dark_mode_on_off_switch:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/SwitchCompat;

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mDarkModeSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->getPresenter()Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;->getDarkMode()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mDarkModeSwitch:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v2, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView$5;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView$5;-><init>(Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;)V

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    sget v1, Lcom/samsung/android/support/senl/nt/base/R$id;->widget_setting_dark_mode_on_off_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget v2, Lcom/samsung/android/support/senl/nt/base/R$id;->widget_setting_dark_mode_on_off_round_corner:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView$6;

    invoke-direct {v2, p0, v1, v0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView$6;-><init>(Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;Landroid/widget/TextView;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void
.end method

.method private initOpacityView()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mParent:Landroid/view/View;

    sget v1, Lcom/samsung/android/support/senl/nt/base/R$id;->widget_setting_seek_bar_percent_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mOpacityText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mParent:Landroid/view/View;

    sget v1, Lcom/samsung/android/support/senl/nt/base/R$id;->widget_setting_seek_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SeslSeekBar;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setMax(I)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->getPresenter()Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;->getTransparency()I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mOpacityText:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/widget/util/BaseWidgetUtils;->getProgressToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    div-int/2addr v0, v1

    invoke-virtual {v2, v0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    new-instance v1, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView$3;-><init>(Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SeslSeekBar;->setOnSeekBarChangeListener(Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method private initRadioButtons()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mParent:Landroid/view/View;

    sget v1, Lcom/samsung/android/support/senl/nt/base/R$id;->radio_group:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mBgColorRadioGroup:Landroid/widget/RadioGroup;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mParent:Landroid/view/View;

    sget v1, Lcom/samsung/android/support/senl/nt/base/R$id;->radio_white:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mWhiteRadio:Landroid/widget/RadioButton;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mParent:Landroid/view/View;

    sget v1, Lcom/samsung/android/support/senl/nt/base/R$id;->radio_black:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mBlackRadio:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->getPresenter()Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;->getBackgroundColor()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mWhiteRadio:Landroid/widget/RadioButton;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mBlackRadio:Landroid/widget/RadioButton;

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mBgColorRadioGroup:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView$4;-><init>(Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-void
.end method

.method private initSaveCancel()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mParent:Landroid/view/View;

    sget v1, Lcom/samsung/android/support/senl/nt/base/R$id;->save:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/winset/util/ButtonShapeUtil;->setButtonShapeEnabled(Landroid/view/View;)V

    new-instance v1, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView$1;-><init>(Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mParent:Landroid/view/View;

    sget v1, Lcom/samsung/android/support/senl/nt/base/R$id;->cancel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/winset/util/ButtonShapeUtil;->setButtonShapeEnabled(Landroid/view/View;)V

    new-instance v1, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView$2;-><init>(Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method private setMaxFontSize()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mParent:Landroid/view/View;

    sget v2, Lcom/samsung/android/support/senl/nt/base/R$id;->save:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/high16 v2, 0x41900000    # 18.0f

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/util/CharUtils;->applyTextSizeUntilLargeSize(Landroid/content/Context;Landroid/widget/TextView;F)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mParent:Landroid/view/View;

    sget v3, Lcom/samsung/android/support/senl/nt/base/R$id;->cancel:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/util/CharUtils;->applyTextSizeUntilLargeSize(Landroid/content/Context;Landroid/widget/TextView;F)V

    return-void
.end method


# virtual methods
.method public getCurrentTheme()I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->getPresenter()Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;->getTheme()I

    move-result v0

    return v0
.end method

.method public abstract getPresenter()Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;
.end method

.method public getPreviewAlpha()I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->getPresenter()Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;->getReverseTransparency()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/widget/util/BaseWidgetUtils;->convertAlpha(I)I

    move-result v0

    return v0
.end method

.method public init()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->initSaveCancel()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->initOpacityView()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->initRadioButtons()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->initDarkModeSwitch()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->setMaxFontSize()V

    return-void
.end method

.method public isBlackBackground()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->getPresenter()Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;->getBackgroundColor()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->getPresenter()Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;->getDarkMode()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/widget/util/BaseWidgetUtils;->isMatchWithDarkModeAndNightMode(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isDarkTheme()Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->getCurrentTheme()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public menuEnableUpdate()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->getPresenter()Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;->getDarkMode()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/widget/util/BaseWidgetUtils;->isMatchWithDarkModeAndNightMode(Landroid/content/Context;I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->setEnableBackgroundColorView(Z)V

    return-void
.end method

.method public setEnableBackgroundColorView(Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz p1, :cond_0

    sget v1, Lcom/samsung/android/support/senl/nt/base/R$color;->widget_setting_background_enabled_text_color:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mWhiteRadio:Landroid/widget/RadioButton;

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    sget v1, Lcom/samsung/android/support/senl/nt/base/R$color;->widget_setting_background_disabled_text_color:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mWhiteRadio:Landroid/widget/RadioButton;

    const v2, 0x3ecccccd    # 0.4f

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setAlpha(F)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mBlackRadio:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setAlpha(F)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mWhiteRadio:Landroid/widget/RadioButton;

    invoke-virtual {v1, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mBlackRadio:Landroid/widget/RadioButton;

    invoke-virtual {v1, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mWhiteRadio:Landroid/widget/RadioButton;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setTextColor(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mBlackRadio:Landroid/widget/RadioButton;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setTextColor(I)V

    return-void
.end method

.method public updateBackgroundColor(Landroid/widget/ImageView;II)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setColorFilter(I)V

    return-void
.end method

.method public updateRoundCornerViewHeight(Landroid/view/View;I)V
    .locals 1

    instance-of v0, p1, Lcom/samsung/android/support/senl/nt/base/winset/view/RoundCornerOverlayView;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView$7;-><init>(Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;Landroid/view/View;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
