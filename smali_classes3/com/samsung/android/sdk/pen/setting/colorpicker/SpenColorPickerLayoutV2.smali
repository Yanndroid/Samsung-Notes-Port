.class public Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2$ViewModeChangedListener;,
        Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2$PickerColorChangedListener;,
        Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2$PickerEyedropperActionListener;,
        Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2$ActionButtonListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenColorPickerLayoutV2"

.field public static final VIEW_MODE_GRADIENT:I = 0x1

.field public static final VIEW_MODE_SWATCH:I = 0x2


# instance fields
.field private mActionButtonListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2$ActionButtonListener;

.field private mCancelButton:Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;

.field private final mCancelButtonClickListener:Landroid/view/View$OnClickListener;

.field private mColorPicker:Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerDataViewCore;

.field private mConsumedListener:Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;

.field private mDataChangedListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerDataChangedListener;

.field private mDoneButton:Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;

.field private final mDoneButtonClickListener:Landroid/view/View$OnClickListener;

.field private mIsDataViewCoreOwner:Z

.field private final mRGBCodeActionListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView$OnRGBCodeActionListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;I[FZ)V
    .locals 9

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2$1;-><init>(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2;->mRGBCodeActionListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView$OnRGBCodeActionListener;

    new-instance v1, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2$2;-><init>(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2;->mCancelButtonClickListener:Landroid/view/View$OnClickListener;

    new-instance v1, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2$3;-><init>(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2;->mDoneButtonClickListener:Landroid/view/View$OnClickListener;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2;->mIsDataViewCoreOwner:Z

    new-instance v1, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerDataViewCore;

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v2, v1

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerDataViewCore;-><init>(Landroid/content/Context;I[FZZZ)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2;->mColorPicker:Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerDataViewCore;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2;->construct(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2;->mColorPicker:Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerDataViewCore;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerDataViewCore;->loadRecentColors()V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2;->mColorPicker:Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerDataViewCore;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerViewCore;->setRGBCodeActionListener(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView$OnRGBCodeActionListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerDataViewCore;Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;I)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2$1;-><init>(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2;->mRGBCodeActionListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView$OnRGBCodeActionListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2$2;-><init>(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2;->mCancelButtonClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2$3;-><init>(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2;->mDoneButtonClickListener:Landroid/view/View$OnClickListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2;->mIsDataViewCoreOwner:Z

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2;->mColorPicker:Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerDataViewCore;

    invoke-direct {p0, p1, p4, p3}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2;->initView(Landroid/content/Context;ILcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2;->mColorPicker:Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerDataViewCore;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerDataViewCore;->loadRecentColors()V

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2;)Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2$ActionButtonListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2;->mActionButtonListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2$ActionButtonListener;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2;->notifyColorChanged(Z)V

    return-void
.end method

.method private construct(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;-><init>()V

    sget v1, Lcom/samsung/android/spen/R$layout;->setting_color_picker_view_portrait_v2:I

    iput v1, v0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;->layoutId:I

    sget v1, Lcom/samsung/android/spen/R$layout;->setting_color_swatch_item_v2:I

    iput v1, v0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;->itemLayoutId:I

    sget v1, Lcom/samsung/android/spen/R$dimen;->setting_color_picker_layout_v2_content_point_size:I

    iput v1, v0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;->gradientCursorSizeDimen:I

    sget v1, Lcom/samsung/android/spen/R$dimen;->setting_color_picker_layout_v2_point_outline:I

    iput v1, v0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;->gradientCursorOutlineDimen:I

    sget v1, Lcom/samsung/android/spen/R$dimen;->setting_color_picker_color_swatch_margin_start:I

    iput v1, v0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;->gradientSelectorRadiusDimen:I

    sget v1, Lcom/samsung/android/spen/R$dimen;->setting_color_picker_layout_v2_gradient_height:I

    iput v1, v0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;->gradientHeightDimen:I

    sget v1, Lcom/samsung/android/spen/R$dimen;->setting_color_picker_layout_v2_color_swatch_margin_top:I

    iput v1, v0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;->swatchTopMarginDimen:I

    sget v1, Lcom/samsung/android/spen/R$dimen;->setting_color_picker_layout_v2_color_swatch_margin_start:I

    iput v1, v0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;->swatchStartMarginDimen:I

    sget v1, Lcom/samsung/android/spen/R$dimen;->setting_color_picker_layout_v2_color_swatch_margin_end:I

    iput v1, v0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;->swatchEndMarginDimen:I

    sget v1, Lcom/samsung/android/spen/R$dimen;->setting_color_picker_color_swatch_margin_bottom:I

    iput v1, v0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;->swatchBottomMarginDimen:I

    sget v1, Lcom/samsung/android/spen/R$dimen;->setting_color_picker_layout_v2_gradient_mode_btn_size:I

    iput v1, v0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;->gradientModeBtnSize:I

    sget v2, Lcom/samsung/android/spen/R$dimen;->setting_color_picker_layout_v2_gradient_mode_btn_margin_start:I

    iput v2, v0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;->gradientModeBtnStartMargin:I

    iput v1, v0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;->swatchModeBtnSize:I

    iput v2, v0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;->swatchModeBtnStartMargin:I

    sget v1, Lcom/samsung/android/spen/R$dimen;->setting_color_picker_layout_v2_color_display_radius:I

    iput v1, v0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;->colorDisplayRadius:I

    const/4 v1, 0x1

    iput v1, v0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;->modeType:I

    sget v2, Lcom/samsung/android/spen/R$drawable;->color_picker_recent_eyedropper:I

    iput v2, v0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;->eyedropperBgResourceId:I

    sget v2, Lcom/samsung/android/spen/R$layout;->setting_color_picker_layout_v2_1:I

    invoke-direct {p0, p1, v2, v0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2;->initView(Landroid/content/Context;ILcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;)V

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setClipToOutline(Z)V

    invoke-direct {p0, p1, p0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2;->initBackground(Landroid/content/Context;Landroid/view/ViewGroup;)V

    new-instance p1, Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;

    invoke-direct {p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2;->mConsumedListener:Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;

    sget p1, Lcom/samsung/android/spen/R$id;->total_layout:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2;->mConsumedListener:Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;->setConsumedListener(Landroid/view/ViewParent;Landroid/view/View;)V

    return-void
.end method

.method private initActionButton(Landroid/content/Context;)V
    .locals 7

    sget v0, Lcom/samsung/android/spen/R$id;->color_picker_button_cancel:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2;->mCancelButton:Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;

    sget v0, Lcom/samsung/android/spen/R$id;->color_picker_button_done:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2;->mDoneButton:Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2;->mCancelButton:Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    sget-object v2, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText$FontName;->MEDIUM:Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText$FontName;

    const/4 v3, 0x2

    new-array v4, v3, [Landroid/widget/TextView;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v0, v4, v1

    invoke-static {p1, v2, v4}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText;->setTypeFace(Landroid/content/Context;Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText$FontName;[Landroid/widget/TextView;)V

    const/high16 v0, 0x41800000    # 16.0f

    new-array v2, v3, [Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2;->mCancelButton:Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2;->mDoneButton:Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;

    aput-object v3, v2, v1

    invoke-static {p1, v0, v2}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText;->applyUpToLargeLevel(Landroid/content/Context;F[Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2;->mCancelButton:Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/samsung/android/spen/R$string;->pen_string_cancel:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/samsung/android/spen/R$string;->pen_string_button:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2;->mDoneButton:Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Lcom/samsung/android/spen/R$string;->pen_string_done:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2;->mCancelButton:Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;

    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;->setButtonShapeEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2;->mDoneButton:Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;

    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;->setButtonShapeEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2;->mCancelButton:Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2;->mCancelButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2;->mDoneButton:Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2;->mDoneButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private initBackground(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/samsung/android/spen/R$dimen;->setting_popup_bg_elevation:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setElevation(F)V

    sget p1, Lcom/samsung/android/spen/R$drawable;->dialog_bg:I

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    const/high16 p1, 0x3f000000    # 0.5f

    invoke-static {p2, p1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->setShadowAlpha(Landroid/view/View;F)Z

    return-void
.end method

.method private initView(Landroid/content/Context;ILcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;)V
    .locals 3

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    sget p2, Lcom/samsung/android/spen/R$id;->body_layout:I

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2;->mColorPicker:Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerDataViewCore;

    invoke-virtual {v0, p1, p3}, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerViewCore;->initPickerView(Landroid/content/Context;Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;)Landroid/view/View;

    move-result-object p3

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2;->initActionButton(Landroid/content/Context;)V

    return-void
.end method

.method private notifyColorChanged(Z)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2;->mColorPicker:Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerDataViewCore;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [F

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2;->getCurrentColor([F)Z

    const/4 v1, 0x1

    aget v2, v0, v1

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HSV is wrong. current="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v0, v1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " change=1"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "SpenColorPickerLayoutV2"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    aput v3, v0, v1

    invoke-virtual {p0, v0, v0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2;->setColor([F[F)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2;->mColorPicker:Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerDataViewCore;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerDataViewCore;->saveRecentColor([F)V

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2;->mColorPicker:Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerDataViewCore;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerDataViewCore;->loadRecentColors()V

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2;->mDataChangedListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerDataChangedListener;

    if-eqz p1, :cond_3

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->HSVToColor([F)I

    move-result v1

    invoke-interface {p1, v1, v0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerDataChangedListener;->onColorChanged(I[F)V

    :cond_3
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2;->mColorPicker:Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerDataViewCore;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2;->mIsDataViewCoreOwner:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerDataViewCore;->close()V

    :cond_0
    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2;->mColorPicker:Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerDataViewCore;

    :cond_1
    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2;->mDataChangedListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerDataChangedListener;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2;->mActionButtonListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2$ActionButtonListener;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2;->mConsumedListener:Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;->close()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2;->mConsumedListener:Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;

    :cond_2
    return-void
.end method

.method public getCurrentColor([F)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2;->mColorPicker:Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerDataViewCore;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    array-length v1, p1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerThemeViewCore;->getCurrentColor([F)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getViewMode()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2;->mColorPicker:Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerDataViewCore;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerViewCore;->getViewMode()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setActionButtonListener(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2$ActionButtonListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2;->mActionButtonListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2$ActionButtonListener;

    return-void
.end method

.method public setColor([F[F)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2;->mColorPicker:Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerDataViewCore;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    array-length v1, p1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    if-eqz p2, :cond_1

    array-length v1, p2

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerThemeViewCore;->setColor([F[F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setColorTheme(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2;->mColorPicker:Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerDataViewCore;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerDataViewCore;->setColorTheme(I)Z

    :cond_0
    return-void
.end method

.method public setCurrentColor([F)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2;->mColorPicker:Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerDataViewCore;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerThemeViewCore;->setCurrentColor([F)V

    :cond_0
    return-void
.end method

.method public setPickerColorChangedListener(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2$PickerColorChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2;->mDataChangedListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerDataChangedListener;

    return-void
.end method

.method public setPickerEyedropperActionListener(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2$PickerEyedropperActionListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2;->mColorPicker:Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerDataViewCore;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerViewCore;->setPickerEyedropperActionListener(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerEyedropperListener;)V

    :cond_0
    return-void
.end method

.method public setViewMode(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2;->mColorPicker:Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerDataViewCore;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerViewCore;->setViewMode(I)V

    :cond_0
    return-void
.end method

.method public setViewModeChangedListener(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2$ViewModeChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2;->mColorPicker:Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerDataViewCore;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerViewCore;->setViewModeChangedListener(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewModeChangedListener;)V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilSIP;->hideSoftInput(Landroid/content/Context;Landroid/view/View;I)Z

    :cond_0
    return-void
.end method
