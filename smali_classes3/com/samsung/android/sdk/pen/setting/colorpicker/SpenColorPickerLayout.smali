.class public Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayout$PickerEyedropperActionListener;,
        Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayout$OnCloseClickListener;,
        Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayout$PickerChangedListener;,
        Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayout$PickerActionListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenColorPickerLayout"

.field public static final VIEW_MODE_GRADIENT:I = 0x1

.field public static final VIEW_MODE_SWATCH:I = 0x2


# instance fields
.field private mCloseButton:Landroid/widget/ImageButton;

.field private final mCloseButtonClickListener:Landroid/view/View$OnClickListener;

.field private mCloseClickListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayout$OnCloseClickListener;

.field private mConsumedListener:Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;

.field private mPickerController:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;

.field private mPickerView:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;I[F)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayout;-><init>(Landroid/content/Context;I[FZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I[FZ)V
    .locals 2

    new-instance v0, Landroid/view/ContextThemeWrapper;

    sget v1, Lcom/samsung/android/spen/R$style;->BasicUITheme:I

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayout$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayout$1;-><init>(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayout;->mCloseButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayout;->construct(Landroid/content/Context;I[FZ)V

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayout;)Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayout$OnCloseClickListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayout;->mCloseClickListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayout$OnCloseClickListener;

    return-object p0
.end method

.method private construct(Landroid/content/Context;I[FZ)V
    .locals 9

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayout;->initView(Landroid/content/Context;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;

    invoke-direct {v1, p2, p3}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;-><init>(I[F)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayout;->mPickerController:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;

    new-instance v6, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;

    invoke-direct {v6}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;-><init>()V

    sget v1, Lcom/samsung/android/spen/R$layout;->setting_color_picker_view_portrait:I

    iput v1, v6, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;->layoutId:I

    sget v1, Lcom/samsung/android/spen/R$layout;->setting_layout_color_swatch_item:I

    iput v1, v6, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;->itemLayoutId:I

    sget v1, Lcom/samsung/android/spen/R$dimen;->setting_color_picker_color_swatch_margin_start:I

    iput v1, v6, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;->gradientSelectorRadiusDimen:I

    sget v1, Lcom/samsung/android/spen/R$dimen;->setting_color_picker_layout_gradient_height:I

    iput v1, v6, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;->gradientHeightDimen:I

    sget v1, Lcom/samsung/android/spen/R$dimen;->setting_color_picker_layout_content_point_size:I

    iput v1, v6, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;->gradientCursorSizeDimen:I

    sget v1, Lcom/samsung/android/spen/R$dimen;->setting_color_picker_layout_point_outline:I

    iput v1, v6, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;->gradientCursorOutlineDimen:I

    sget v1, Lcom/samsung/android/spen/R$dimen;->setting_color_picker_layout_color_swatch_margin_top:I

    iput v1, v6, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;->swatchTopMarginDimen:I

    sget v2, Lcom/samsung/android/spen/R$dimen;->setting_color_picker_layout_color_swatch_margin_start:I

    iput v2, v6, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;->swatchStartMarginDimen:I

    sget v2, Lcom/samsung/android/spen/R$dimen;->setting_color_picker_layout_color_swatch_margin_end:I

    iput v2, v6, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;->swatchEndMarginDimen:I

    iput v1, v6, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;->swatchBottomMarginDimen:I

    sget v1, Lcom/samsung/android/spen/R$dimen;->setting_color_picker_layout_gradient_mode_btn_size:I

    iput v1, v6, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;->gradientModeBtnSize:I

    sget v2, Lcom/samsung/android/spen/R$dimen;->setting_color_picker_layout_gradient_mode_btn_margin_start:I

    iput v2, v6, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;->gradientModeBtnStartMargin:I

    iput v1, v6, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;->swatchModeBtnSize:I

    iput v2, v6, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;->swatchModeBtnStartMargin:I

    sget v1, Lcom/samsung/android/spen/R$dimen;->setting_color_picker_layout_color_display_radius:I

    iput v1, v6, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;->colorDisplayRadius:I

    const/4 v1, 0x2

    iput v1, v6, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;->modeType:I

    sget v1, Lcom/samsung/android/spen/R$drawable;->color_circle_eyedropper_no_spr:I

    iput v1, v6, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;->eyedropperBgResourceId:I

    new-instance v1, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;

    const/4 v7, 0x0

    move-object v2, v1

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;-><init>(Landroid/content/Context;I[FLcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;ZZ)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayout;->mPickerView:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;

    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p4, -0x1

    const/4 v1, -0x2

    invoke-direct {p3, p4, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object p4, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayout;->mPickerView:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;

    invoke-virtual {v0, p4, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayout;->mPickerController:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;

    iget-object p4, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayout;->mPickerView:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;

    invoke-virtual {p3, p4}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;->setPickerView(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;)V

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayout;->mPickerController:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;

    invoke-virtual {p3, p2}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;->setViewMode(I)V

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayout;->mPickerView:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;

    sget p3, Lcom/samsung/android/spen/R$id;->close_btn:I

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayout;->mCloseButton:Landroid/widget/ImageButton;

    if-eqz p2, :cond_1

    sget p3, Lcom/samsung/android/spen/R$drawable;->spen_brush_btn_ripple_effect:I

    invoke-virtual {p2, p3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayout;->mCloseButton:Landroid/widget/ImageButton;

    sget p3, Lcom/samsung/android/spen/R$drawable;->note_setting_ic_close:I

    invoke-virtual {p2, p3}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayout;->mCloseButton:Landroid/widget/ImageButton;

    sget p3, Lcom/samsung/android/spen/R$color;->setting_brush_text_color:I

    invoke-static {p1, p3}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageButton;->setColorFilter(I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayout;->mCloseButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/samsung/android/spen/R$string;->pen_string_close:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayout;->mCloseButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    invoke-static {p1, p2, p3}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilHover;->setHoverText(Landroid/view/View;Ljava/lang/CharSequence;Z)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayout;->mCloseButton:Landroid/widget/ImageButton;

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayout;->mCloseButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    new-instance p1, Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;

    invoke-direct {p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayout;->mConsumedListener:Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;

    sget p1, Lcom/samsung/android/spen/R$id;->total_layout:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayout;->mConsumedListener:Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;

    invoke-virtual {p2, p0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;->setConsumedListener(Landroid/view/ViewParent;Landroid/view/View;)V

    return-void
.end method

.method private initView(Landroid/content/Context;)Landroid/widget/FrameLayout;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    sget v0, Lcom/samsung/android/spen/R$layout;->setting_color_picker_layout_v2:I

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    sget p1, Lcom/samsung/android/spen/R$id;->top_bg:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClipToOutline(Z)V

    :cond_1
    sget p1, Lcom/samsung/android/spen/R$id;->body_layout:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    return-object p1
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayout;->mPickerController:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;->close()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayout;->mPickerController:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayout;->mPickerView:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->close()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayout;->mPickerView:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayout;->mConsumedListener:Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;->close()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayout;->mConsumedListener:Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;

    :cond_2
    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayout;->mCloseButton:Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayout;->mCloseClickListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayout$OnCloseClickListener;

    return-void
.end method

.method public getCurrentColor([F)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayout;->mPickerController:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;->getCurrentColor([F)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getViewMode()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayout;->mPickerController:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;->getViewMode()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setColor([F[F)V
    .locals 2

    const-string v0, "SpenColorPickerLayout"

    const-string/jumbo v1, "setColor()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayout;->mPickerController:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;->setColor([F[F)V

    :cond_0
    return-void
.end method

.method public setCurrentColor([F)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayout;->mPickerController:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;->setCurrentColor([F)V

    :cond_0
    return-void
.end method

.method public setOnCloseClickListener(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayout$OnCloseClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayout;->mCloseClickListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayout$OnCloseClickListener;

    return-void
.end method

.method public setPickerActionListener(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayout$PickerActionListener;)V
    .locals 2

    const-string v0, "SpenColorPickerLayout"

    const-string/jumbo v1, "setPickerActionListener()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayout;->mPickerController:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;->setColorPickerActionListener(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerActionListener;)V

    :cond_0
    return-void
.end method

.method public setPickerChangedListener(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayout$PickerChangedListener;)V
    .locals 2

    const-string v0, "SpenColorPickerLayout"

    const-string/jumbo v1, "setPickerChangedListener()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayout;->mPickerController:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;->setColorPickerChangeListener(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerDataChangedListener;)V

    :cond_0
    return-void
.end method

.method public setPickerEyedropperActionListener(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayout$PickerEyedropperActionListener;)V
    .locals 2

    const-string v0, "SpenColorPickerLayout"

    const-string/jumbo v1, "setPickerEyedropperActionListener() "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayout;->mPickerView:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->setEyedropperClickListener(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerEyedropperListener;)V

    :cond_0
    return-void
.end method

.method public setRecentColors([FI)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setRecentColors() numOfColors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenColorPickerLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayout;->mPickerController:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;->setRecentColors([FI)V

    :cond_0
    return-void
.end method

.method public setRoundedBackground(IIII)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setRoundedBackground() radius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bgColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "strokeSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " strokeColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenColorPickerLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/samsung/android/spen/R$id;->top_bg:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3, p4}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilDrawable;->getRoundedCornerDrawable(IIII)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/view/View;->setClipToOutline(Z)V

    :cond_0
    return-void
.end method

.method public setViewMode(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayout;->mPickerController:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;->setViewMode(I)V

    :cond_0
    return-void
.end method
