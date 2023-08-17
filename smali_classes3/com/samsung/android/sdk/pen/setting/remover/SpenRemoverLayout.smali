.class public Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;
.super Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout$OnEventListener;,
        Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout$OnActionListener;
    }
.end annotation


# static fields
.field private static final ERASE_AREA_MAX:I = 0xa

.field private static final SCALE_UP_ANIMATION_OFFSET:I = 0x96

.field private static final TAG:Ljava/lang/String; = "SpenRemoverBodyLayout"


# instance fields
.field private mActionListener:Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout$OnActionListener;

.field private mDataManager:Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverDataManager;

.field private mEventListener:Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout$OnEventListener;

.field private final mHighlighterOnlyChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mHighlighterSwitch:Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;

.field private final mOnButtonActionListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderButtonListener;

.field private final mOnSizeChangedListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnChangedListener;

.field private final mOnTrackActionListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderTrackListener;

.field private final mRadioBtnListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field private mSeekBar:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

.field private mSeekBarLayout:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->mActionListener:Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout$OnActionListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout$1;-><init>(Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->mOnSizeChangedListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnChangedListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout$2;-><init>(Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->mOnTrackActionListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderTrackListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout$3;-><init>(Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->mOnButtonActionListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderButtonListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout$4;-><init>(Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->mRadioBtnListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout$5;-><init>(Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->mHighlighterOnlyChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->construct(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->mActionListener:Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout$OnActionListener;

    new-instance p2, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout$1;-><init>(Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;)V

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->mOnSizeChangedListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnChangedListener;

    new-instance p2, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout$2;-><init>(Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;)V

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->mOnTrackActionListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderTrackListener;

    new-instance p2, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout$3;

    invoke-direct {p2, p0}, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout$3;-><init>(Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;)V

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->mOnButtonActionListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderButtonListener;

    new-instance p2, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout$4;

    invoke-direct {p2, p0}, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout$4;-><init>(Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;)V

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->mRadioBtnListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    new-instance p2, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout$5;

    invoke-direct {p2, p0}, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout$5;-><init>(Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;)V

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->mHighlighterOnlyChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->construct(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;)Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverDataManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->mDataManager:Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverDataManager;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;)Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout$OnActionListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->mActionListener:Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout$OnActionListener;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;)Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout$OnEventListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->mEventListener:Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout$OnEventListener;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->updateView(Z)V

    return-void
.end method

.method private construct(Landroid/content/Context;)V
    .locals 4

    sget v0, Lcom/samsung/android/spen/R$layout;->setting_remover_layout_body_v52:I

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    sget v0, Lcom/samsung/android/spen/R$id;->remover_radio_group:I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->mRadioBtnListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;->initLayout(ILandroid/widget/RadioGroup$OnCheckedChangeListener;)Z

    sget v0, Lcom/samsung/android/spen/R$id;->remover_radio_button_1:I

    sget v1, Lcom/samsung/android/spen/R$id;->remover_radio_ripple_button_view_1:I

    sget v2, Lcom/samsung/android/spen/R$string;->pen_string_stroke_eraser:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;->setItem(III)Z

    sget v0, Lcom/samsung/android/spen/R$id;->remover_radio_button_2:I

    sget v1, Lcom/samsung/android/spen/R$id;->remover_radio_ripple_button_view_2:I

    sget v2, Lcom/samsung/android/spen/R$string;->pen_string_area_eraser:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;->setItem(III)Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;->setVisibilityCheck(Z)V

    sget v1, Lcom/samsung/android/spen/R$id;->remover_cutter_seekbar:I

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->mSeekBarLayout:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    const/4 v2, 0x0

    const/16 v3, 0xa

    invoke-direct {v1, p1, v2, v0, v3}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;-><init>(Landroid/content/Context;ZII)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->mSeekBar:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    sget v3, Lcom/samsung/android/spen/R$color;->component_common:I

    invoke-static {p1, v3}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->setColor(I)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->mSeekBar:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->setValue(IZ)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->mSeekBarLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->mSeekBar:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->mSeekBarLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->mSeekBar:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->mOnSizeChangedListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnChangedListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->setOnChangedListener(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnChangedListener;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->mSeekBar:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->mOnTrackActionListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderTrackListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->setOnTrackListener(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderTrackListener;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->mSeekBar:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->mOnButtonActionListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderButtonListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->setOnPlusButtonActionListener(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderButtonListener;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->mSeekBar:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->mOnButtonActionListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderButtonListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->setOnMinusButtonActionListener(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderButtonListener;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->mSeekBar:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/samsung/android/spen/R$string;->pen_string_size:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->setAccessibilityPostfix(Ljava/lang/String;)V

    sget p1, Lcom/samsung/android/spen/R$id;->remover_cutter_switch:I

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->mHighlighterSwitch:Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;

    sget v0, Lcom/samsung/android/spen/R$string;->pen_string_eraser_highlight_only:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;->setText(I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->mHighlighterSwitch:Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->mHighlighterOnlyChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance p1, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverDataManager;

    invoke-direct {p1}, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverDataManager;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->mDataManager:Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverDataManager;

    return-void
.end method

.method private setHighlighterSwitch(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->mHighlighterSwitch:Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;->isChecked()Z

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->mHighlighterSwitch:Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method private setViewState(Landroid/view/View;ZF)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p3}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method private updateView(Z)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->mDataManager:Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverDataManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverDataManager;->getCurrentInfo()Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;

    move-result-object v0

    iget v1, v0, Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;->type:I

    if-nez v1, :cond_0

    sget v2, Lcom/samsung/android/spen/R$id;->remover_radio_button_2:I

    goto :goto_0

    :cond_0
    sget v2, Lcom/samsung/android/spen/R$id;->remover_radio_button_1:I

    :goto_0
    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->mDataManager:Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverDataManager;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverDataManager;->isSupportStrokeEraseSize()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->mSeekBar:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    iget v4, v0, Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;->size:F

    float-to-int v4, v4

    invoke-virtual {v1, v4, v3}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->setValue(IZ)V

    :cond_2
    iget v1, v0, Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;->target:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne v1, v4, :cond_3

    move v1, v5

    goto :goto_1

    :cond_3
    move v1, v3

    :goto_1
    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->setHighlighterSwitch(Z)V

    invoke-super {p0, v2}, Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;->setInfo(I)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->mDataManager:Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverDataManager;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverDataManager;->isSupportStrokeEraseSize()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->mSeekBarLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void

    :cond_4
    if-eqz p1, :cond_6

    iget p1, v0, Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;->type:I

    if-ne p1, v5, :cond_5

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->mSeekBarLayout:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/samsung/android/spen/R$anim;->spen_seekbar_scale_down:I

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->mSeekBarLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/samsung/android/spen/R$anim;->spen_seekbar_scale_up:I

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setStartOffset(J)V

    :goto_2
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->mSeekBarLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_6
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->mActionListener:Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout$OnActionListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->mEventListener:Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout$OnEventListener;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->mSeekBar:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->close()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->mSeekBar:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    :cond_0
    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->mSeekBarLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->mHighlighterSwitch:Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;->close()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->mHighlighterSwitch:Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->mDataManager:Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverDataManager;

    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverDataManager;->close()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->mDataManager:Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverDataManager;

    return-void
.end method

.method public getInfo()Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->mDataManager:Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverDataManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverDataManager;->getCurrentInfo()Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;

    move-result-object v0

    return-object v0
.end method

.method public getRemoverInfoList()[Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->mDataManager:Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverDataManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverDataManager;->getInfoList()[Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;

    move-result-object v0

    return-object v0
.end method

.method public setActionListener(Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout$OnActionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->mActionListener:Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout$OnActionListener;

    return-void
.end method

.method public setChildViewState(ZF)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;->getRadioGroup()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->setViewState(Landroid/view/View;ZF)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->mHighlighterSwitch:Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->setViewState(Landroid/view/View;ZF)V

    return-void
.end method

.method public setEventListener(Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout$OnEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->mEventListener:Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout$OnEventListener;

    return-void
.end method

.method public setInfo(Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;->size:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iput v1, p1, Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;->size:F

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->mDataManager:Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverDataManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverDataManager;->setInfo(Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->updateView(Z)V

    return-void
.end method

.method public setRemoverInfoList([Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "SpenRemoverBodyLayout"

    const-string/jumbo v1, "setRemoverInfoList() !!!!!!!!!!!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->mDataManager:Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverDataManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverDataManager;->setInfoList([Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;)V

    return-void
.end method

.method public setSupportHighlighterOnly(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->mHighlighterSwitch:Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public setSupportRemoverType(Z)V
    .locals 2

    sget v0, Lcom/samsung/android/spen/R$id;->remover_radio_group:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/samsung/android/spen/R$id;->remover_radio_ripple_group:I

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setSupportStrokeEraserSize(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->mDataManager:Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverDataManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverDataManager;->setSupportStrokeEraseSize(Z)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->updateView(Z)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;->setVisibility(I)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;->getCheckedId()I

    move-result p1

    sget v0, Lcom/samsung/android/spen/R$id;->remover_radio_button_2:I

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->mSeekBar:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->mSeekBar:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
