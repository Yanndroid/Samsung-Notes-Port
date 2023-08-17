.class public Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout$OnCloseClickListener;,
        Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout$IEventListener;,
        Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout$ToastTextNotifyListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenColorSettingLayout"


# instance fields
.field private mAllowToast:Z

.field private mCloseClickListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout$OnCloseClickListener;

.field private mConsumedListener:Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;

.field private mEventListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout$IEventListener;

.field private mListControl:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;

.field private mToastTextNotifyListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout$ToastTextNotifyListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    new-instance v0, Landroid/view/ContextThemeWrapper;

    sget v1, Lcom/samsung/android/spen/R$style;->BasicUITheme:I

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/samsung/android/spen/R$layout;->setting_color_setting_layout:I

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout;->initView(Landroid/content/Context;)V

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteUtil;->getDefinedPaletteData(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout;->initList(Landroid/content/Context;Ljava/util/List;I)V

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout;)Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout$OnCloseClickListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout;->mCloseClickListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout$OnCloseClickListener;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout;)Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout$IEventListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout;->mEventListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout$IEventListener;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout;)Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout;->mListControl:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout;->mAllowToast:Z

    return p0
.end method

.method public static synthetic access$400(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout;)Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout$ToastTextNotifyListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout;->mToastTextNotifyListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout$ToastTextNotifyListener;

    return-object p0
.end method

.method private initList(Landroid/content/Context;Ljava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;",
            ">;I)V"
        }
    .end annotation

    sget v0, Lcom/samsung/android/spen/R$id;->setting_top_divider:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/samsung/android/spen/R$id;->setting_bottom_divider:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/samsung/android/spen/R$id;->setting_list:I

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout;->mAllowToast:Z

    new-instance v3, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;

    invoke-direct {v3, p1, p2, p3}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout;->mListControl:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;

    invoke-virtual {v3, v2, v0, v1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;->setListInfo(Landroid/widget/ListView;Landroid/view/View;Landroid/view/View;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout;->mListControl:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;

    sget p2, Lcom/samsung/android/spen/R$layout;->setting_color_setting_layout_list_item:I

    sget p3, Lcom/samsung/android/spen/R$drawable;->color_circle_shape:I

    sget v0, Lcom/samsung/android/spen/R$drawable;->blank_stroke_dot_detail:I

    invoke-virtual {p1, p2, p3, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;->setListItemInfo(III)Z

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout;->mListControl:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;

    new-instance p2, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout$2;-><init>(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;->setListSelectItemEventListener(Lcom/samsung/android/sdk/pen/setting/colorpalette/OnSelectItemEventListener;)V

    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 5

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout;->mConsumedListener:Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;

    sget v0, Lcom/samsung/android/spen/R$id;->total_layout:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout;->mConsumedListener:Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;

    invoke-virtual {v1, p0, v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;->setConsumedListener(Landroid/view/ViewParent;Landroid/view/View;)V

    sget v0, Lcom/samsung/android/spen/R$id;->bg_layout:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClipToOutline(Z)V

    sget v0, Lcom/samsung/android/spen/R$id;->close_btn:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/spen/R$string;->pen_string_close:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilHover;->setHoverText(Landroid/view/View;Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout$1;-><init>(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v2, Lcom/samsung/android/spen/R$drawable;->note_setting_ic_close:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    sget v2, Lcom/samsung/android/spen/R$color;->setting_brush_text_color:I

    invoke-static {p1, v2}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setColorFilter(I)V

    sget p1, Lcom/samsung/android/spen/R$id;->title_text:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText$FontName;->MEDIUM:Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText$FontName;

    new-array v3, v1, [Landroid/widget/TextView;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v0, v2, v3}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText;->setTypeFace(Landroid/content/Context;Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText$FontName;[Landroid/widget/TextView;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    new-array v1, v1, [Landroid/widget/TextView;

    aput-object p1, v1, v4

    const/high16 p1, 0x41880000    # 17.0f

    invoke-static {v0, p1, v1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText;->applyUpToLargeLevel(Landroid/content/Context;F[Landroid/widget/TextView;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout;->mConsumedListener:Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;->close()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout;->mConsumedListener:Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout;->mListControl:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;->close()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout;->mListControl:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;

    :cond_1
    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout;->mToastTextNotifyListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout$ToastTextNotifyListener;

    return-void
.end method

.method public getFirstVisiblePosition()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout;->mListControl:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;->getFirstVisiblePosition()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getSelectPaletteList(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout;->mListControl:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;->getSelectedList(Ljava/util/List;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setEventListener(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout$IEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout;->mEventListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout$IEventListener;

    return-void
.end method

.method public setFirstVisiblePosition(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout;->mListControl:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;->setSelection(I)V

    :cond_0
    return-void
.end method

.method public setOnCloseClickListener(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout$OnCloseClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout;->mCloseClickListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout$OnCloseClickListener;

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

    const-string v1, "SpenColorSettingLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/samsung/android/spen/R$id;->bg_layout:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3, p4}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilDrawable;->getRoundedCornerDrawable(IIII)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setSelectPaletteList(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout;->mListControl:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;->setSelectedList(Ljava/util/List;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setShowToast(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout;->mAllowToast:Z

    return-void
.end method

.method public setToastTextNotifyListener(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout$ToastTextNotifyListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout;->mToastTextNotifyListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout$ToastTextNotifyListener;

    return-void
.end method
