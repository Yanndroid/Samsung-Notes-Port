.class public Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorContract$IColorPicker;
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorContract$IColorPalette;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup$Contract;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup$ColorPopupViewListener;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup$OnColorChangedListener;
    }
.end annotation


# static fields
.field private static final MAX_FONT_SCALE:F = 1.3f

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private final mColorPalette:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;

.field private mColorPicker:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPicker;

.field private mColorPopupVisibilityListener:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup$ColorPopupViewListener;

.field private final mColorSetting:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorSetting;

.field public mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup$Contract;

.field private mDialogContainer:Landroid/view/View;

.field private mIsTabletLayout:Z

.field private mOnColorChangedListener:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup$OnColorChangedListener;

.field private mParentView:Landroid/view/View;

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/richtext/RtToolbarPresenter;

.field private mRtSettingPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/richtext/setting/RtSettingPresenter;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "RtColorPopup"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup$Contract;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->mParentView:Landroid/view/View;

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPicker;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->mParentView:Landroid/view/View;

    invoke-direct {p1, p2, v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPicker;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorContract$IColorPicker;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->mColorPicker:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPicker;

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorSetting;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->mActivity:Landroid/app/Activity;

    invoke-direct {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorSetting;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->mColorSetting:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorSetting;

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->mActivity:Landroid/app/Activity;

    invoke-direct {p1, p2, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;-><init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorContract$IColorPalette;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->mColorPalette:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup$Contract;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup$ColorPopupViewListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->mColorPopupVisibilityListener:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup$ColorPopupViewListener;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->dismissSubPopup()V

    return-void
.end method

.method public static bridge synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private dismissSubPopup()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->mColorPicker:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPicker;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPicker;->dismissColorPicker()Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->mColorSetting:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorSetting;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorSetting;->dismissColorSetting()Z

    return-void
.end method

.method private initPopupWindow(Landroid/widget/PopupWindow;)V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->mActivity:Landroid/app/Activity;

    const v2, 0x106000d

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;)V

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->TAG:Ljava/lang/String;

    const-string v1, "dismiss()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->dismissSubPopup()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public getBackgroundColor()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/richtext/RtToolbarPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/richtext/RtToolbarPresenter;->getBackgroundColor()I

    move-result v0

    return v0
.end method

.method public getMaxTextSize(Landroid/content/Context;FF)F
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p3, v0

    if-gtz v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v0, p1, p2

    if-lez v0, :cond_1

    div-float/2addr p3, p1

    mul-float/2addr p3, p2

    :cond_1
    return p3
.end method

.method public init(IIZLcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/richtext/RtToolbarPresenter;Z)V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->mActivity:Landroid/app/Activity;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$layout;->comp_rt_font_color_popup:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->mDialogContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/richtext/RtToolbarPresenter;

    invoke-virtual {p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/richtext/RtToolbarPresenter;->getRtSettingPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/richtext/setting/RtSettingPresenter;

    move-result-object p4

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->mRtSettingPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/richtext/setting/RtSettingPresenter;

    iput-boolean p5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->mIsTabletLayout:Z

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->mColorPalette:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->mDialogContainer:Landroid/view/View;

    if-eqz p3, :cond_0

    invoke-virtual {p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/richtext/setting/RtSettingPresenter;->getPaletteList()Ljava/util/List;

    move-result-object v2

    :cond_0
    move-object v5, v2

    move v6, p1

    move v7, p2

    move v8, p3

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->init(Landroid/view/View;Ljava/util/List;IIZ)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->mDialogContainer:Landroid/view/View;

    sget p2, Lcom/samsung/android/support/senl/nt/composer/R$id;->comp_rt_text_setting_scroll_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;

    move-result-object p2

    const/high16 p4, 0x3f000000    # 0.5f

    invoke-virtual {p2, p1, p4}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->setShadowAlpha(Landroid/view/View;F)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->mDialogContainer:Landroid/view/View;

    sget p2, Lcom/samsung/android/support/senl/nt/composer/R$id;->dialog_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->mActivity:Landroid/app/Activity;

    const p4, 0x3fa66666    # 1.3f

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result p5

    invoke-virtual {p0, p2, p4, p5}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->getMaxTextSize(Landroid/content/Context;FF)F

    move-result p2

    invoke-virtual {p1, v1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->mDialogContainer:Landroid/view/View;

    sget p2, Lcom/samsung/android/support/senl/nt/composer/R$id;->done_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ToolbarUtil;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ToolbarUtil;->setRippleToolbar(Landroid/view/View;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->mDialogContainer:Landroid/view/View;

    sget p2, Lcom/samsung/android/support/senl/nt/composer/R$id;->color_settings_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ToolbarUtil;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ToolbarUtil;->setRippleToolbar(Landroid/view/View;)V

    if-nez p3, :cond_1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->composer_colorpicker_dialog_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->comp_rt_popup_text_style_dialog_margin:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    add-int/2addr p1, p2

    new-instance p2, Landroid/widget/PopupWindow;

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->mDialogContainer:Landroid/view/View;

    const/4 p4, -0x2

    invoke-direct {p2, p3, p4, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->initPopupWindow(Landroid/widget/PopupWindow;)V

    return-void
.end method

.method public isComposerViewDarkTheme()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/richtext/RtToolbarPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/richtext/RtToolbarPresenter;->isComposerViewDarkTheme()Z

    move-result v0

    return v0
.end method

.method public isShowing()Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isShowing() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public notifyChangedColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->mOnColorChangedListener:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup$OnColorChangedListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup$OnColorChangedListener;->onSetChangedColor(I)V

    :cond_0
    return-void
.end method

.method public notifyChangedPaletteId(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->mOnColorChangedListener:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup$OnColorChangedListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup$OnColorChangedListener;->setChangePaletteId(I)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->done_button:I

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->release()V

    goto :goto_1

    :cond_0
    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->color_settings_button:I

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->showColorSettingPopup()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/richtext/RtToolbarPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/richtext/RtToolbarPresenter;->isCoeditNote()Z

    move-result p1

    const-string v0, "4322"

    if-eqz p1, :cond_1

    const-string p1, "683"

    goto :goto_0

    :cond_1
    const-string p1, "401"

    :goto_0
    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onColorChangedByPicker(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->notifyChangedColor(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->mColorPalette:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->onColorChangedByPicker(I)V

    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->mColorPicker:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPicker;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPicker;->setOrientationMode(I)V

    return-void
.end method

.method public onPaletteListChanged(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPaletteListChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->mColorPalette:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->changeTable(Ljava/util/List;)V

    return-void
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->mColorPicker:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPicker;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPicker;->close()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->mColorPicker:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPicker;

    :cond_1
    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->mDialogContainer:Landroid/view/View;

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->mActivity:Landroid/app/Activity;

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->mParentView:Landroid/view/View;

    return-void
.end method

.method public setColorPickerVisibilityListener(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPicker$ColorPickerViewListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->mColorPicker:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPicker;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPicker;->setColorPickerVisibilityListener(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPicker$ColorPickerViewListener;)V

    return-void
.end method

.method public setColorPopupVisibilityListener(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup$ColorPopupViewListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->mColorPopupVisibilityListener:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup$ColorPopupViewListener;

    return-void
.end method

.method public setColorSettingVisibilityListener(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorSetting$ColorSettingViewListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->mColorSetting:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorSetting;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorSetting;->setColorSettingViewListener(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorSetting$ColorSettingViewListener;)V

    return-void
.end method

.method public setCurrentColor(I)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->mColorPalette:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->setCurrentColor(I)Z

    move-result p1

    return p1
.end method

.method public setOnTextColorChangedListener(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup$OnColorChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->mOnColorChangedListener:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup$OnColorChangedListener;

    return-void
.end method

.method public setPaletteActionListener(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette$OnPaletteActionListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->mColorPalette:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->setPaletteActionListener(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette$OnPaletteActionListener;)V

    return-void
.end method

.method public setSelectedColor(IIZ)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->mColorPalette:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->setSelectedColor(IIZ)V

    return-void
.end method

.method public setTitle(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->mDialogContainer:Landroid/view/View;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->dialog_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public show()V
    .locals 4

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->TAG:Ljava/lang/String;

    const-string v1, "show()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->mColorPalette:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->checkColorPaletteData()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "show# mColorPaletteData is null or size is 0. release PopupWindow"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->release()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->mParentView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->mDialogContainer:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup$Contract;

    invoke-interface {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup$Contract;->getAnchorPosition()I

    move-result v2

    iget-boolean v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->mIsTabletLayout:Z

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ToolbarUtil;->getOffset(Landroid/view/View;Landroid/view/View;IZ)Landroid/graphics/Point;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->mParentView:Landroid/view/View;

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v3, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->update()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->mColorPopupVisibilityListener:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup$ColorPopupViewListener;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup$ColorPopupViewListener;->onVisibilityChanged(I)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    const-string v1, "\u00a0"

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method public showColorPickerPopup(I)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->mColorPicker:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPicker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPicker;->isShowingColorPicker()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->mColorPicker:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPicker;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->mDialogContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->getBackgroundColor()I

    move-result v4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/richtext/RtToolbarPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/richtext/RtToolbarPresenter;->getColorTheme()I

    move-result v5

    const/4 v6, 0x0

    move v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPicker;->showColorPickerPopup(Landroid/view/View;IIIZ)V

    :cond_0
    return-void
.end method

.method public showColorSettingPopup()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->mColorSetting:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorSetting;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorSetting;->isShowingColorSetting()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->mColorSetting:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorSetting;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->mRtSettingPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/richtext/setting/RtSettingPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/richtext/setting/RtSettingPresenter;->getPaletteList()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/richtext/RtToolbarPresenter;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/richtext/RtToolbarPresenter;->getColorTheme()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorSetting;->showColorSettingPopup(Ljava/util/List;I)V

    :cond_0
    return-void
.end method

.method public update()V
    .locals 7

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->TAG:Ljava/lang/String;

    const-string v1, "update()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->mParentView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->mDialogContainer:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup$Contract;

    invoke-interface {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup$Contract;->getAnchorPosition()I

    move-result v2

    iget-boolean v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->mIsTabletLayout:Z

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ToolbarUtil;->getOffset(Landroid/view/View;Landroid/view/View;IZ)Landroid/graphics/Point;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->mParentView:Landroid/view/View;

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-virtual/range {v1 .. v6}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->mColorPicker:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPicker;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPicker;->setOrientationMode(I)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->mColorPicker:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPicker;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPicker;->isShowingColorPicker()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
