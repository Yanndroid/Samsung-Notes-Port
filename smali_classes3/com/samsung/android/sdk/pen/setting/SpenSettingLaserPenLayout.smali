.class public Lcom/samsung/android/sdk/pen/setting/SpenSettingLaserPenLayout;
.super Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "LongLogTag"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/setting/SpenSettingLaserPenLayout$LaserPenInfoChangedListener;
    }
.end annotation


# static fields
.field private static final FADE_OFF_FAST_TIME:I = 0xa

.field private static final FADE_OFF_SLOW_TIME:I = 0x64

.field private static final LINE_OPTION_DISAPPEAR_DURATION:I = 0x64

.field private static final TAG:Ljava/lang/String; = "SpenSettingLaserPenLayout"

.field private static final UPDATE_ALL:I = 0x3

.field private static final UPDATE_COLOR:I = 0x2

.field private static final UPDATE_FADE_OUT_TIME:I = 0x3

.field private static final UPDATE_TYPE:I = 0x1


# instance fields
.field private mColorView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;

.field private mContentBody:Landroid/widget/LinearLayout;

.field private mIsSupportEyedropper:Z

.field private mLaserPenManager:Lcom/samsung/android/sdk/pen/setting/laserpen/SpenSettingLaserPenManager;

.field private mLineOptionTransition:Landroid/animation/LayoutTransition;

.field private mLineOptionView:Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;

.field private mNeonEffectSwitch:Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;

.field private final mRadioBtnListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field private mTypeView:Lcom/samsung/android/sdk/pen/setting/laserpen/SpenLaserTypeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Lcom/samsung/android/sdk/pen/setting/pencommon/SpenColorSettingInfo;Z)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/samsung/android/sdk/pen/setting/pencommon/SpenColorSettingInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Z
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenHSVColor;",
            ">;",
            "Lcom/samsung/android/sdk/pen/setting/pencommon/SpenColorSettingInfo;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/SpenSettingLaserPenLayout$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingLaserPenLayout$4;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenSettingLaserPenLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingLaserPenLayout;->mRadioBtnListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    iput-boolean p6, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingLaserPenLayout;->mIsSupportEyedropper:Z

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/sdk/pen/setting/SpenSettingLaserPenLayout;->construct(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Lcom/samsung/android/sdk/pen/setting/pencommon/SpenColorSettingInfo;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/setting/SpenSettingLaserPenLayout;)Lcom/samsung/android/sdk/pen/setting/laserpen/SpenSettingLaserPenManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingLaserPenLayout;->mLaserPenManager:Lcom/samsung/android/sdk/pen/setting/laserpen/SpenSettingLaserPenManager;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/pen/setting/SpenSettingLaserPenLayout;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/SpenSettingLaserPenLayout;->updateView(IZ)V

    return-void
.end method

.method private construct(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Lcom/samsung/android/sdk/pen/setting/pencommon/SpenColorSettingInfo;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenHSVColor;",
            ">;",
            "Lcom/samsung/android/sdk/pen/setting/pencommon/SpenColorSettingInfo;",
            ")V"
        }
    .end annotation

    const-string v0, "SpenSettingLaserPenLayout"

    const-string v1, "construct() "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/laserpen/SpenSettingLaserPenManager;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/setting/laserpen/SpenSettingLaserPenManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingLaserPenLayout;->mLaserPenManager:Lcom/samsung/android/sdk/pen/setting/laserpen/SpenSettingLaserPenManager;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingLaserPenLayout;->initView(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingLaserPenLayout;->mColorView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;

    iget-boolean v5, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingLaserPenLayout;->mIsSupportEyedropper:Z

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->initColorControl(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;ZLjava/util/List;Ljava/util/List;Lcom/samsung/android/sdk/pen/setting/pencommon/SpenColorSettingInfo;)V

    new-instance p1, Lcom/samsung/android/sdk/pen/setting/SpenSettingLaserPenLayout$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingLaserPenLayout$1;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenSettingLaserPenLayout;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->setOnColorChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnColorChangeListener;)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingLaserPenLayout;->initLineOptionTransition()V

    return-void
.end method

.method private initColorView(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 3

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;

    iget-boolean v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingLaserPenLayout;->mIsSupportEyedropper:Z

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingLaserPenLayout;->mColorView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/samsung/android/spen/R$dimen;->setting_change_style_color_margin_top:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingLaserPenLayout;->mColorView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;

    invoke-virtual {p2, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private initLineOptionTransition()V
    .locals 4

    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingLaserPenLayout;->mLineOptionTransition:Landroid/animation/LayoutTransition;

    const/4 v1, 0x3

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    return-void
.end method

.method private initLineOptionView(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 3

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingLaserPenLayout;->mLineOptionView:Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    sget v0, Lcom/samsung/android/spen/R$layout;->setting_laserpen_line_option:I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingLaserPenLayout;->mLineOptionView:Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p1, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingLaserPenLayout;->mLineOptionView:Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;

    invoke-virtual {p2, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingLaserPenLayout;->mLineOptionView:Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;

    sget p2, Lcom/samsung/android/spen/R$id;->line_option_radio_group:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingLaserPenLayout;->mRadioBtnListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;->initLayout(ILandroid/widget/RadioGroup$OnCheckedChangeListener;)Z

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingLaserPenLayout;->mLineOptionView:Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;

    sget p2, Lcom/samsung/android/spen/R$id;->line_option_fade_off_fast:I

    sget v0, Lcom/samsung/android/spen/R$id;->line_option_fade_off_fast_ripple_button_view_1:I

    sget v1, Lcom/samsung/android/spen/R$string;->pen_string_short_lasting:I

    invoke-virtual {p1, p2, v0, v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;->setItem(III)Z

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingLaserPenLayout;->mLineOptionView:Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;

    sget p2, Lcom/samsung/android/spen/R$id;->line_option_fade_off_slow:I

    sget v0, Lcom/samsung/android/spen/R$id;->line_option_fade_off_slow_ripple_button_view_2:I

    sget v1, Lcom/samsung/android/spen/R$string;->pen_string_long_lasting:I

    invoke-virtual {p1, p2, v0, v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;->setItem(III)Z

    sget p1, Lcom/samsung/android/spen/R$id;->line_option_neon_effect_switch:I

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingLaserPenLayout;->mNeonEffectSwitch:Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;

    sget p2, Lcom/samsung/android/spen/R$string;->pen_string_neon_effect:I

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;->setText(I)V

    return-void
.end method

.method private initTypeView(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/laserpen/SpenLaserTypeLayout;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/pen/setting/laserpen/SpenLaserTypeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingLaserPenLayout;->mTypeView:Lcom/samsung/android/sdk/pen/setting/laserpen/SpenLaserTypeLayout;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingLaserPenLayout;->mTypeView:Lcom/samsung/android/sdk/pen/setting/laserpen/SpenLaserTypeLayout;

    new-instance p2, Lcom/samsung/android/sdk/pen/setting/SpenSettingLaserPenLayout$3;

    invoke-direct {p2, p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingLaserPenLayout$3;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenSettingLaserPenLayout;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/setting/laserpen/SpenLaserTypeLayout;->setDataChangedListener(Lcom/samsung/android/sdk/pen/setting/laserpen/SpenLaserTypeLayout$OnDataChangedListener;)V

    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 6

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/spen/R$string;->pen_string_laser_pointer:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->setTitleText(I)Landroid/widget/TextView;

    sget v1, Lcom/samsung/android/spen/R$string;->pen_string_close_any:I

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    sget v4, Lcom/samsung/android/spen/R$string;->pen_string_laser_pointer_settings:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->setCloseButtonDescription(Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/SpenSettingLaserPenLayout$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingLaserPenLayout$2;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenSettingLaserPenLayout;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->setCloseButtonInfo(Landroid/view/View$OnClickListener;)Z

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingLaserPenLayout;->mContentBody:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingLaserPenLayout;->mContentBody:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingLaserPenLayout;->mContentBody:Landroid/widget/LinearLayout;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingLaserPenLayout;->initTypeView(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingLaserPenLayout;->mContentBody:Landroid/widget/LinearLayout;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingLaserPenLayout;->initLineOptionView(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingLaserPenLayout;->mContentBody:Landroid/widget/LinearLayout;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingLaserPenLayout;->initColorView(Landroid/content/Context;Landroid/view/ViewGroup;)V

    return-void
.end method

.method private setLineOptionVisibility(IZ)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingLaserPenLayout;->mLineOptionView:Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingLaserPenLayout;->mContentBody:Landroid/widget/LinearLayout;

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingLaserPenLayout;->mLineOptionTransition:Landroid/animation/LayoutTransition;

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingLaserPenLayout;->mLineOptionView:Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;->setVisibility(I)V

    return-void
.end method

.method private updateView(IZ)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingLaserPenLayout;->mLaserPenManager:Lcom/samsung/android/sdk/pen/setting/laserpen/SpenSettingLaserPenManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/laserpen/SpenSettingLaserPenManager;->getInfo()Lcom/samsung/android/sdk/pen/SpenSettingUILaserPenInfo;

    move-result-object v0

    and-int/lit8 v1, p1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingLaserPenLayout;->mTypeView:Lcom/samsung/android/sdk/pen/setting/laserpen/SpenLaserTypeLayout;

    iget v2, v0, Lcom/samsung/android/sdk/pen/SpenSettingUILaserPenInfo;->type:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/pen/setting/laserpen/SpenLaserTypeLayout;->setType(I)V

    :cond_0
    and-int/lit8 v1, p1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingLaserPenLayout;->mColorView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;

    iget v2, v0, Lcom/samsung/android/sdk/pen/SpenSettingUILaserPenInfo;->colorUIInfo:I

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/SpenSettingUILaserPenInfo;->hsvColor:[F

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;->setColor(I[FZ)V

    :cond_1
    const/4 v1, 0x3

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingLaserPenLayout;->mLineOptionView:Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;

    iget v1, v0, Lcom/samsung/android/sdk/pen/SpenSettingUILaserPenInfo;->fadeOutTime:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_2

    sget v1, Lcom/samsung/android/spen/R$id;->line_option_fade_off_fast:I

    goto :goto_0

    :cond_2
    sget v1, Lcom/samsung/android/spen/R$id;->line_option_fade_off_slow:I

    :goto_0
    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;->setInfo(I)V

    :cond_3
    iget p1, v0, Lcom/samsung/android/sdk/pen/SpenSettingUILaserPenInfo;->type:I

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/SpenSettingLaserPenLayout;->setLineOptionVisibility(IZ)V

    return-void
.end method


# virtual methods
.method public bridge synthetic addRecentColor([F)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->addRecentColor([F)V

    return-void
.end method

.method public close()V
    .locals 2

    const-string v0, "SpenSettingLaserPenLayout"

    const-string v1, "close()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->close()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingLaserPenLayout;->mLaserPenManager:Lcom/samsung/android/sdk/pen/setting/laserpen/SpenSettingLaserPenManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingLaserPenLayout;->mTypeView:Lcom/samsung/android/sdk/pen/setting/laserpen/SpenLaserTypeLayout;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/laserpen/SpenLaserTypeLayout;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingLaserPenLayout;->mTypeView:Lcom/samsung/android/sdk/pen/setting/laserpen/SpenLaserTypeLayout;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingLaserPenLayout;->mColorView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;->close()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingLaserPenLayout;->mColorView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingLaserPenLayout;->mNeonEffectSwitch:Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;->close()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingLaserPenLayout;->mNeonEffectSwitch:Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingLaserPenLayout;->mContentBody:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingLaserPenLayout;->mLineOptionTransition:Landroid/animation/LayoutTransition;

    return-void
.end method

.method public bridge synthetic closeColorPickerPopup()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->closeColorPickerPopup()V

    return-void
.end method

.method public bridge synthetic closeColorSettingPopup()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->closeColorSettingPopup()V

    return-void
.end method

.method public bridge synthetic getColorPickerColor([F)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->getColorPickerColor([F)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic getColorPickerViewMode()I
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->getColorPickerViewMode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getColorSettingSelectList(Ljava/util/List;)Z
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->getColorSettingSelectList(Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic getEyedropperColor()I
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->getEyedropperColor()I

    move-result v0

    return v0
.end method

.method public getInfo()Lcom/samsung/android/sdk/pen/SpenSettingUILaserPenInfo;
    .locals 2

    const-string v0, "SpenSettingLaserPenLayout"

    const-string v1, "getInfo()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingLaserPenLayout;->mLaserPenManager:Lcom/samsung/android/sdk/pen/setting/laserpen/SpenSettingLaserPenManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/laserpen/SpenSettingLaserPenManager;->getInfo()Lcom/samsung/android/sdk/pen/SpenSettingUILaserPenInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic hideCloseButton()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->hideCloseButton()V

    return-void
.end method

.method public bridge synthetic hideEyedropper()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->hideEyedropper()V

    return-void
.end method

.method public bridge synthetic isColorPickerPopupVisible()Z
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->isColorPickerPopupVisible()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isColorSettingPopupVisible()Z
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->isColorSettingPopupVisible()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isEyedropperVisible()Z
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->isEyedropperVisible()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic requestCloseButtonAccessibilityFocus()Z
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->requestCloseButtonAccessibilityFocus()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic setColorPickerCloseButtonType(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->setColorPickerCloseButtonType(I)V

    return-void
.end method

.method public bridge synthetic setColorPickerColor([F)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->setColorPickerColor([F)V

    return-void
.end method

.method public bridge synthetic setColorPickerViewMode(I)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->setColorPickerViewMode(I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic setColorPickerViewModeChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout$ColorPickerModeChangedListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->setColorPickerViewModeChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout$ColorPickerModeChangedListener;)V

    return-void
.end method

.method public bridge synthetic setColorPickerVisibilityChangeListener(Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout$SettingViewListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->setColorPickerVisibilityChangeListener(Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout$SettingViewListener;)V

    return-void
.end method

.method public bridge synthetic setColorSettingSelectItemEventListener(Lcom/samsung/android/sdk/pen/setting/colorpalette/OnSelectItemEventListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->setColorSettingSelectItemEventListener(Lcom/samsung/android/sdk/pen/setting/colorpalette/OnSelectItemEventListener;)V

    return-void
.end method

.method public bridge synthetic setColorSettingSelectList(Ljava/util/List;)Z
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->setColorSettingSelectList(Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic setColorSettingVisibilityChangeListener(Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout$SettingViewListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->setColorSettingVisibilityChangeListener(Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout$SettingViewListener;)V

    return-void
.end method

.method public bridge synthetic setColorTheme(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->setColorTheme(I)V

    return-void
.end method

.method public bridge synthetic setCurrentPalette(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->setCurrentPalette(I)V

    return-void
.end method

.method public bridge synthetic setEyedropperActionListener(Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout$EyedropperActionListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->setEyedropperActionListener(Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout$EyedropperActionListener;)V

    return-void
.end method

.method public bridge synthetic setEyedropperColor(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->setEyedropperColor(I)V

    return-void
.end method

.method public bridge synthetic setEyedropperPosition(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->setEyedropperPosition(II)V

    return-void
.end method

.method public bridge synthetic setEyedropperVisibilityChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout$SettingViewListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->setEyedropperVisibilityChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout$SettingViewListener;)V

    return-void
.end method

.method public setInfo(Lcom/samsung/android/sdk/pen/SpenSettingUILaserPenInfo;)V
    .locals 2
    .param p1    # Lcom/samsung/android/sdk/pen/SpenSettingUILaserPenInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "SpenSettingLaserPenLayout"

    const-string/jumbo v1, "setInfo()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingLaserPenLayout;->mLaserPenManager:Lcom/samsung/android/sdk/pen/setting/laserpen/SpenSettingLaserPenManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/laserpen/SpenSettingLaserPenManager;->setInfo(Lcom/samsung/android/sdk/pen/SpenSettingUILaserPenInfo;)Z

    const/4 p1, 0x3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingLaserPenLayout;->updateView(IZ)V

    return-void
.end method

.method public setLaserPenInfoChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenSettingLaserPenLayout$LaserPenInfoChangedListener;)V
    .locals 2

    const-string v0, "SpenSettingLaserPenLayout"

    const-string/jumbo v1, "setLaserPenInfoChangedListener()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingLaserPenLayout;->mLaserPenManager:Lcom/samsung/android/sdk/pen/setting/laserpen/SpenSettingLaserPenManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/laserpen/SpenSettingLaserPenManager;->setLaserPenInfoChangedListener(Lcom/samsung/android/sdk/pen/setting/laserpen/SpenSettingLaserPenManager$LaserPenInfoChangedListener;)V

    return-void
.end method

.method public bridge synthetic setPalette(Ljava/util/List;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->setPalette(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic setPaletteActionButtonListener(Lcom/samsung/android/sdk/pen/setting/colorpalette/OnActionButtonListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->setPaletteActionButtonListener(Lcom/samsung/android/sdk/pen/setting/colorpalette/OnActionButtonListener;)V

    return-void
.end method

.method public bridge synthetic setPaletteActionListener(Lcom/samsung/android/sdk/pen/setting/SpenPaletteActionListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->setPaletteActionListener(Lcom/samsung/android/sdk/pen/setting/SpenPaletteActionListener;)V

    return-void
.end method

.method public bridge synthetic setPaletteChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout$PaletteChangedListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->setPaletteChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout$PaletteChangedListener;)V

    return-void
.end method

.method public bridge synthetic setRecentColor(Ljava/util/List;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->setRecentColor(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic setRecentColorChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenRecentColorChangedListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->setRecentColorChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenRecentColorChangedListener;)V

    return-void
.end method

.method public bridge synthetic setSelfClose(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->setSelfClose(Z)V

    return-void
.end method

.method public bridge synthetic setVisibility(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->setVisibility(I)V

    return-void
.end method

.method public bridge synthetic setVisibilityChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout$ViewListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->setVisibilityChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout$ViewListener;)V

    return-void
.end method

.method public bridge synthetic showColorSettingPopup()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->showColorSettingPopup()V

    return-void
.end method
