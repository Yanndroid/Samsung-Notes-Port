.class Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChild;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenBrushSettingLayout"


# instance fields
.field private mConsumedListener:Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;

.field private mContext:Landroid/content/Context;

.field private mPreviewParent:Landroid/view/ViewGroup;

.field private mSliderGroup:Landroid/widget/LinearLayout;

.field private mTotalBg:Landroid/view/View;

.field private mTotalLayout:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChild;->mContext:Landroid/content/Context;

    return-void
.end method

.method private initBackground(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/content/res/Resources;)V
    .locals 7

    sget v0, Lcom/samsung/android/spen/R$id;->drawing_brush_setting_popup_view_body:I

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChild;->mTotalBg:Landroid/view/View;

    new-instance p2, Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;

    invoke-direct {p2}, Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChild;->mConsumedListener:Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChild;->mTotalBg:Landroid/view/View;

    invoke-virtual {p2, p1, v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;->setConsumedListener(Landroid/view/ViewParent;Landroid/view/View;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChild;->mTotalBg:Landroid/view/View;

    sget p1, Lcom/samsung/android/spen/R$dimen;->setting_brush_radius_default:I

    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChild;->mContext:Landroid/content/Context;

    sget p2, Lcom/samsung/android/spen/R$color;->setting_brush_bg_color:I

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->getColor(Landroid/content/Context;I)I

    move-result v4

    sget p1, Lcom/samsung/android/spen/R$dimen;->setting_brush_stroke_default:I

    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChild;->mContext:Landroid/content/Context;

    sget p2, Lcom/samsung/android/spen/R$color;->setting_brush_bg_stroke_color:I

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->getColor(Landroid/content/Context;I)I

    move-result v6

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChild;->setRoundedBackground(Landroid/view/View;IIII)V

    return-void
.end method

.method private initBase(Landroid/widget/FrameLayout;)V
    .locals 2

    sget v0, Lcom/samsung/android/spen/R$id;->drawing_brush_setting_popup_view:I

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChild;->mTotalLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    sget v0, Lcom/samsung/android/spen/R$id;->drawing_brush_setting_popup_horizontal_view:I

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/HorizontalScrollView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/HorizontalScrollView;->setFocusable(Z)V

    return-void
.end method

.method private initChild(Landroid/widget/FrameLayout;Landroid/content/res/Resources;)V
    .locals 2

    sget p2, Lcom/samsung/android/spen/R$id;->drawing_brush_setting_popup_preview:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChild;->mPreviewParent:Landroid/view/ViewGroup;

    sget p2, Lcom/samsung/android/spen/R$id;->drawing_brush_setting_popup_seekbar:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    new-instance p2, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChild;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChild;->mSliderGroup:Landroid/widget/LinearLayout;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChild;->mSliderGroup:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setRoundedBackground(Landroid/view/View;IIII)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2, p3, p4, p5}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilDrawable;->setRoundedCornerBackground(Landroid/view/View;IIII)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setClipToOutline(Z)V

    return-void
.end method


# virtual methods
.method public addSliderView(Landroid/view/View;I)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChild;->mSliderGroup:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChild;->mSliderGroup:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public clearSliderGroup()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChild;->mSliderGroup:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    return-void
.end method

.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChild;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChild;->mConsumedListener:Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;->close()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChild;->mConsumedListener:Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;

    :cond_1
    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChild;->mContext:Landroid/content/Context;

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChild;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public initView(Landroid/widget/FrameLayout;)V
    .locals 3

    const-string v0, "SpenBrushSettingLayout"

    const-string v1, "initView"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChild;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sget v1, Lcom/samsung/android/spen/R$layout;->setting_brush_setting_popup_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChild;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChild;->initBase(Landroid/widget/FrameLayout;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChild;->initBackground(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/content/res/Resources;)V

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChild;->initChild(Landroid/widget/FrameLayout;Landroid/content/res/Resources;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public makeBottomButton(Ljava/lang/CharSequence;)Landroid/view/View;
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChild;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChild;->mTotalLayout:Landroid/view/ViewGroup;

    sget v3, Lcom/samsung/android/spen/R$id;->drawing_brush_setting_popup_item_content:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    new-instance v3, Landroid/view/View;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChild;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    sget v4, Lcom/samsung/android/spen/R$drawable;->spen_color_picker_recent_used_color_divider_shape:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    sget v4, Lcom/samsung/android/spen/R$dimen;->drawing_brush_setting_popup_clear_button_divider_side_margin:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    sget v6, Lcom/samsung/android/spen/R$dimen;->drawing_brush_setting_popup_clear_button_divider_height:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const/4 v7, -0x1

    invoke-direct {v5, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    invoke-virtual {v2, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChild;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    sget v4, Lcom/samsung/android/spen/R$layout;->setting_brush_setting_popup_eraseall:I

    invoke-virtual {v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    sget v4, Lcom/samsung/android/spen/R$dimen;->drawing_brush_setting_popup_clear_button_height:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-direct {v3, v7, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v4, Lcom/samsung/android/spen/R$dimen;->drawing_brush_setting_popup_clear_button_top_margin:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v2, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChild;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    new-array v4, v3, [Landroid/widget/TextView;

    aput-object v2, v4, v0

    invoke-static {p1, v4}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText;->setDefaultButtonTextStyle(Landroid/content/Context;[Landroid/widget/TextView;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChild;->mContext:Landroid/content/Context;

    const/high16 v4, 0x41800000    # 16.0f

    new-array v5, v3, [Landroid/widget/TextView;

    aput-object v2, v5, v0

    invoke-static {p1, v4, v5}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText;->applyUpToLargeLevel(Landroid/content/Context;F[Landroid/widget/TextView;)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;->setButtonShapeEnabled(Z)V

    return-object v1
.end method

.method public rearrange()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChild;->mTotalLayout:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChild;->mTotalLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public setPreview(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChild;->mPreviewParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChild;->mPreviewParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public setRoundedBackground(IIII)V
    .locals 6

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChild;->mTotalBg:Landroid/view/View;

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChild;->setRoundedBackground(Landroid/view/View;IIII)V

    return-void
.end method
