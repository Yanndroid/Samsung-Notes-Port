.class public Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2$OnActionListener;,
        Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2$IEventListener;
    }
.end annotation


# static fields
.field private static final CANCEL_BUTTON:I = 0x2

.field private static final DONE_BUTTON:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SpenColorSettingLayoutV2"


# instance fields
.field private mActionListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2$OnActionListener;

.field private final mBtnClickListener:Landroid/view/View$OnClickListener;

.field private mConsumedListener:Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;

.field private mEventListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2$IEventListener;

.field private mListControl:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;

.field private final mListSelectItemEventListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/OnSelectItemEventListener;

.field private mSelectItemEventListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/OnSelectItemEventListener;


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

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2$1;-><init>(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2;->mListSelectItemEventListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/OnSelectItemEventListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2$2;-><init>(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/samsung/android/spen/R$layout;->setting_color_setting_layout_v2:I

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2;->initView(Landroid/content/Context;)V

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteUtil;->getDefinedPaletteData(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    sget v0, Lcom/samsung/android/spen/R$layout;->setting_color_setting_popup_list_item:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2;->initListView(Landroid/content/Context;Ljava/util/List;II)V

    invoke-direct {p0, p1, p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2;->initBackground(Landroid/content/Context;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2;)Lcom/samsung/android/sdk/pen/setting/colorpalette/OnSelectItemEventListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2;->mSelectItemEventListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/OnSelectItemEventListener;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2;)Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2;->mListControl:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2;)I
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2;->sendSelectResult()I

    move-result p0

    return p0
.end method

.method public static synthetic access$300(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2;)Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2$OnActionListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2;->mActionListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2$OnActionListener;

    return-object p0
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

.method private initListView(Landroid/content/Context;Ljava/util/List;II)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;",
            ">;II)V"
        }
    .end annotation

    sget v0, Lcom/samsung/android/spen/R$id;->setting_top_divider:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/samsung/android/spen/R$id;->setting_bottom_divider:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/samsung/android/spen/R$id;->palette_list:I

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    new-instance v3, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;

    invoke-direct {v3, p1, p2, p3}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2;->mListControl:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;

    invoke-virtual {v3, v2, v0, v1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;->setListInfo(Landroid/widget/ListView;Landroid/view/View;Landroid/view/View;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2;->mListControl:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;

    sget p2, Lcom/samsung/android/spen/R$drawable;->color_rect_shape:I

    sget p3, Lcom/samsung/android/spen/R$drawable;->blank_with_stroke:I

    invoke-virtual {p1, p4, p2, p3}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;->setListItemInfo(III)Z

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2;->mListControl:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2;->mListSelectItemEventListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/OnSelectItemEventListener;

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;->setListSelectItemEventListener(Lcom/samsung/android/sdk/pen/setting/colorpalette/OnSelectItemEventListener;)V

    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 10
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2;->mConsumedListener:Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;

    sget v1, Lcom/samsung/android/spen/R$id;->top_bg:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;->setConsumedListener(Landroid/view/ViewParent;Landroid/view/View;)V

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClipToOutline(Z)V

    sget v0, Lcom/samsung/android/spen/R$id;->title_text:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v2, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText$FontName;->MEDIUM:Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText$FontName;

    new-array v3, v1, [Landroid/widget/TextView;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {p1, v2, v3}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText;->setTypeFace(Landroid/content/Context;Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText$FontName;[Landroid/widget/TextView;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    new-array v5, v1, [Landroid/widget/TextView;

    aput-object v0, v5, v4

    const/high16 v0, 0x41880000    # 17.0f

    invoke-static {v3, v0, v5}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText;->applyUpToLargeLevel(Landroid/content/Context;F[Landroid/widget/TextView;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/samsung/android/spen/R$string;->pen_string_button:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v3, Lcom/samsung/android/spen/R$id;->done:I

    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;->setButtonShapeEnabled(Z)V

    sget v5, Lcom/samsung/android/spen/R$id;->cancel:I

    invoke-virtual {p0, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;->setButtonShapeEnabled(Z)V

    new-array v0, v7, [Landroid/widget/TextView;

    aput-object v3, v0, v4

    aput-object v5, v0, v1

    invoke-static {p1, v2, v0}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText;->setTypeFace(Landroid/content/Context;Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText$FontName;[Landroid/widget/TextView;)V

    new-array v0, v7, [Landroid/widget/TextView;

    aput-object v3, v0, v4

    aput-object v5, v0, v1

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {p1, v1, v0}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText;->applyUpToLargeLevel(Landroid/content/Context;F[Landroid/widget/TextView;)V

    return-void
.end method

.method private sendSelectResult()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2;->mEventListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2$IEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2;->mListControl:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2;->mListControl:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;->getSelectedList(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2;->mEventListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2$IEventListener;

    invoke-interface {v1, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2$IEventListener;->onChangeSelected(Ljava/util/List;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2;->mConsumedListener:Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;->close()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2;->mConsumedListener:Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2;->mListControl:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;->close()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2;->mListControl:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;

    :cond_1
    return-void
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

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2;->mListControl:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;->getSelectedList(Ljava/util/List;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setColorTheme(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2;->mListControl:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;->setColorTheme(I)V

    :cond_0
    return-void
.end method

.method public setEventListener(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2$IEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2;->mEventListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2$IEventListener;

    return-void
.end method

.method public setOnActionListener(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2$OnActionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2;->mActionListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2$OnActionListener;

    return-void
.end method

.method public setOnSelectItemEventListener(Lcom/samsung/android/sdk/pen/setting/colorpalette/OnSelectItemEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2;->mSelectItemEventListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/OnSelectItemEventListener;

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

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2;->mListControl:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;->setSelectedList(Ljava/util/List;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
