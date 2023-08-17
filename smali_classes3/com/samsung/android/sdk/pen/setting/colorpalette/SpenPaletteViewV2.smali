.class public Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction$ViewFlipperActionListener;
.implements Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;


# static fields
.field private static final DEFAULT_FIXED_ITEM_COUNT:I = 0x1

.field private static final DEFAULT_SWIPE_ITEM_COUNT:I = 0x8

.field private static final SHIFT_VALUE_PALETTE:I = 0x10

.field private static final TAG:Ljava/lang/String; = "SpenPaletteViewV2"


# instance fields
.field private mActionListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewActionListener;

.field private mBetweenMargin:I

.field private final mChildActionListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteActionListener;

.field private mColorPalletAssistant:Lcom/samsung/android/sdk/pen/setting/common/SpenVoiceAssistantAsSlider;

.field private mCurrentChildAt:I

.field private mCurrentPageIndex:I

.field private mFixedArea:Landroid/widget/FrameLayout;

.field private mFixedChildIndex:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mFixedChildInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenChildButtonInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mFixedItemCount:I

.field private mFixedPalette:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPalette;

.field private mFlipper:Landroid/widget/ViewFlipper;

.field private mIndicatorArea:Landroid/view/ViewGroup;

.field private mIndicatorBackgroundRes:I

.field private mIndicatorOrientation:I

.field private mIndicatorSize:I

.field private mIndicatorSpace:I

.field private mIsSupportSelector:Z

.field private mItemHeight:I

.field private mItemWidth:I

.field private mLayoutResources:I

.field private mPageIndicator:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPageIndicator;

.field private mPaletteArea:Landroid/view/ViewGroup;

.field private mPaletteCornerRadius:I

.field private mPaletteOrientation:I

.field private mSwipeChildIndex:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSwipeItemCount:I

.field private mViewFlipperAction:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2$2;-><init>(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mChildActionListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteActionListener;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->setAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->construct(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;)Landroid/widget/ViewFlipper;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mFlipper:Landroid/widget/ViewFlipper;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;)Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPalette;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mFixedPalette:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPalette;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mFixedChildIndex:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mSwipeChildIndex:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;)Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mViewFlipperAction:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;

    return-object p0
.end method

.method private construct(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mLayoutResources:I

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    sget p1, Lcom/samsung/android/spen/R$id;->pallete_flipper:I

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ViewFlipper;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mFlipper:Landroid/widget/ViewFlipper;

    sget p1, Lcom/samsung/android/spen/R$id;->indicator_area:I

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mIndicatorArea:Landroid/view/ViewGroup;

    sget p1, Lcom/samsung/android/spen/R$id;->palette_area:I

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mPaletteArea:Landroid/view/ViewGroup;

    sget p1, Lcom/samsung/android/spen/R$id;->fixed_area:I

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mFixedArea:Landroid/widget/FrameLayout;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mFixedChildIndex:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mSwipeChildIndex:Ljava/util/List;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mFixedChildInfo:Ljava/util/HashMap;

    const/16 p1, 0x8

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mSwipeItemCount:I

    const/4 p1, 0x1

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mFixedItemCount:I

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mIsSupportSelector:Z

    return-void
.end method

.method private getChildIndex(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private getCornerType(IZZ)I
    .locals 0

    if-nez p1, :cond_1

    if-eq p2, p3, :cond_0

    const/16 p1, 0x9

    goto :goto_0

    :cond_0
    const/4 p1, 0x6

    :goto_0
    return p1

    :cond_1
    const/4 p3, 0x1

    if-ne p1, p3, :cond_3

    if-eqz p2, :cond_2

    const/4 p1, 0x3

    goto :goto_1

    :cond_2
    const/16 p1, 0xc

    :goto_1
    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method private getFixedChildIndex(I)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mFixedChildIndex:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method private getFixedChildInfo(II)Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenChildButtonInfo;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->getKey(II)I

    move-result p1

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mFixedChildInfo:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenChildButtonInfo;

    return-object p1
.end method

.method private getKey(II)I
    .locals 1

    shl-int/lit8 p1, p1, 0x10

    const/high16 v0, -0x10000

    and-int/2addr p1, v0

    const v0, 0xffff

    and-int/2addr p2, v0

    or-int/2addr p1, p2

    return p1
.end method

.method private getSwipeChildIndex(I)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mSwipeChildIndex:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method private initAccessibilityForColorPallet()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mPaletteArea:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->getPageCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mColorPalletAssistant:Lcom/samsung/android/sdk/pen/setting/common/SpenVoiceAssistantAsSlider;

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mPaletteArea:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/samsung/android/spen/R$string;->pen_string_color_palette:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/samsung/android/spen/R$string;->pen_string_slider:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sdk/pen/setting/common/SpenVoiceAssistantAsSlider;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenVoiceAssistantAsSlider;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mColorPalletAssistant:Lcom/samsung/android/sdk/pen/setting/common/SpenVoiceAssistantAsSlider;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2$3;-><init>(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;)V

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenVoiceAssistantAsSlider;->setListener(Lcom/samsung/android/sdk/pen/setting/common/SpenVoiceAssistantAsSlider$ActionScrollListener;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mPaletteArea:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mColorPalletAssistant:Lcom/samsung/android/sdk/pen/setting/common/SpenVoiceAssistantAsSlider;

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mPaletteArea:Landroid/view/ViewGroup;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mColorPalletAssistant:Lcom/samsung/android/sdk/pen/setting/common/SpenVoiceAssistantAsSlider;

    :goto_0
    return-void
.end method

.method private initPageIndicator(I)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mPageIndicator:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPageIndicator;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPageIndicator;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mIndicatorBackgroundRes:I

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPageIndicator;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mPageIndicator:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPageIndicator;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mIndicatorArea:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mPageIndicator:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPageIndicator;

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mIndicatorOrientation:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v0, 0x1

    const-string v1, "SpenPaletteViewV2"

    if-le p1, v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mPageIndicator:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPageIndicator;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "make indicator. size="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mIndicatorSpace:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " count="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mPageIndicator:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPageIndicator;

    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mIndicatorSize:I

    iget v3, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mIndicatorSpace:I

    invoke-virtual {v0, v2, v3, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPageIndicator;->setInfo(III)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setPalette. child="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " position = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mPageIndicator:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPageIndicator;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPageIndicator;->getActive()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mPageIndicator:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPageIndicator;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "totalPage="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " page indicator is null."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private putFixedChildInfo(IILcom/samsung/android/sdk/pen/setting/colorpalette/SpenChildButtonInfo;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->getKey(II)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mFixedChildInfo:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "put fixedChildInfo pageIndex="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " childAt="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " key="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SpenPaletteViewV2"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private releasePalette(Landroid/view/ViewGroup;)V
    .locals 3

    instance-of v0, p1, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPalette;

    const-string v1, "SpenPaletteViewV2"

    if-eqz v0, :cond_0

    const-string v0, "releaseRectPalette() call close()"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p1, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPalette;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPalette;->close()V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseRectPalette() child="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->releasePalette(Landroid/view/ViewGroup;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private removeFixedChildInfo(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->getKey(II)I

    move-result p1

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mFixedChildInfo:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/spen/R$styleable;->SpenPaletteViewV2:[I

    invoke-virtual {v1, p2, v2, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    sget v1, Lcom/samsung/android/spen/R$styleable;->SpenPaletteViewV2_indicatorOrientation:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mIndicatorOrientation:I

    sget v1, Lcom/samsung/android/spen/R$styleable;->SpenPaletteViewV2_childLayout:I

    sget v2, Lcom/samsung/android/spen/R$layout;->setting_palette_view_v2:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mLayoutResources:I

    sget v1, Lcom/samsung/android/spen/R$styleable;->SpenPaletteViewV2_orientation:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mPaletteOrientation:I

    sget v1, Lcom/samsung/android/spen/R$styleable;->SpenPaletteViewV2_itemWidth:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mItemWidth:I

    sget v1, Lcom/samsung/android/spen/R$styleable;->SpenPaletteViewV2_itemHeight:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mItemHeight:I

    sget v1, Lcom/samsung/android/spen/R$styleable;->SpenPaletteViewV2_itemBetweenMargin:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mBetweenMargin:I

    sget v1, Lcom/samsung/android/spen/R$styleable;->SpenPaletteViewV2_indicatorSize:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mIndicatorSize:I

    sget v1, Lcom/samsung/android/spen/R$styleable;->SpenPaletteViewV2_indicatorSpace:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mIndicatorSpace:I

    sget v1, Lcom/samsung/android/spen/R$styleable;->SpenPaletteViewV2_paletteCornerRadius:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mPaletteCornerRadius:I

    sget v1, Lcom/samsung/android/spen/R$styleable;->SpenPaletteViewV2_indicatorBackground:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mIndicatorBackgroundRes:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :cond_0
    sget p2, Lcom/samsung/android/spen/R$layout;->setting_palette_view_v2:I

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mLayoutResources:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mIndicatorOrientation:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mPaletteOrientation:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mPaletteCornerRadius:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mIndicatorBackgroundRes:I

    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setAttributes() itemWidth="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mItemWidth:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", itemHeight="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mItemHeight:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " betweenMargin="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mBetweenMargin:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SpenPaletteViewV2"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mItemWidth:I

    if-nez p2, :cond_1

    sget p2, Lcom/samsung/android/spen/R$dimen;->setting_color_rect_chip_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mItemWidth:I

    :cond_1
    iget p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mItemHeight:I

    if-nez p2, :cond_2

    sget p2, Lcom/samsung/android/spen/R$dimen;->setting_color_rect_chip_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mItemHeight:I

    :cond_2
    iget p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mBetweenMargin:I

    if-nez p2, :cond_3

    sget p2, Lcom/samsung/android/spen/R$dimen;->setting_color_rect_chip_between_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mBetweenMargin:I

    :cond_3
    iget p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mIndicatorSize:I

    if-nez p2, :cond_4

    sget p2, Lcom/samsung/android/spen/R$dimen;->setting_color_palette_page_indicator_size:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mIndicatorSize:I

    :cond_4
    iget p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mIndicatorSpace:I

    if-nez p2, :cond_5

    sget p2, Lcom/samsung/android/spen/R$dimen;->setting_color_palette_between_indicator_size:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mIndicatorSpace:I

    :cond_5
    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mIndicatorBackgroundRes:I

    if-nez p1, :cond_6

    sget p1, Lcom/samsung/android/spen/R$drawable;->color_palette_v70_default_indicator:I

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mIndicatorBackgroundRes:I

    :cond_6
    return-void
.end method

.method private setResource(IILcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteResInfo;)V
    .locals 2
    .param p3    # Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteResInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setResource() pageIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " childAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenPaletteViewV2"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenChildButtonInfo;

    invoke-direct {v0, p3}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenChildButtonInfo;-><init>(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteResInfo;)V

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->getFixedChildIndex(I)I

    move-result p3

    const/4 v1, -0x1

    if-le p3, v1, :cond_0

    invoke-direct {p0, p1, p3, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->putFixedChildInfo(IILcom/samsung/android/sdk/pen/setting/colorpalette/SpenChildButtonInfo;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->getCurrentPage()I

    move-result p2

    if-ne p2, p1, :cond_1

    invoke-direct {p0, p3, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->updateFixedLayout(ILcom/samsung/android/sdk/pen/setting/colorpalette/SpenChildButtonInfo;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->getSwipeChildIndex(I)I

    move-result p2

    if-le p2, v1, :cond_1

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->updateSwipeLayout(IILcom/samsung/android/sdk/pen/setting/colorpalette/SpenChildButtonInfo;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateColorPalletContentDescription()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mPaletteArea:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mColorPalletAssistant:Lcom/samsung/android/sdk/pen/setting/common/SpenVoiceAssistantAsSlider;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/samsung/android/spen/R$string;->pen_string_page_indicator:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->getCurrentPage()I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->getPageCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mPaletteArea:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateFixedLayout()V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->getCurrentPage()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mFixedChildIndex:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->getKey(II)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mFixedChildInfo:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenChildButtonInfo;

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->updateFixedLayout(ILcom/samsung/android/sdk/pen/setting/colorpalette/SpenChildButtonInfo;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateFixedLayout(ILcom/samsung/android/sdk/pen/setting/colorpalette/SpenChildButtonInfo;)V
    .locals 2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenChildButtonInfo;->getType()Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenChildButtonInfo$ButtonType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenChildButtonInfo$ButtonType;->NONE:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenChildButtonInfo$ButtonType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mFixedPalette:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPalette;

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->updatePaletteInfo(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPalette;ILcom/samsung/android/sdk/pen/setting/colorpalette/SpenChildButtonInfo;)V

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenChildButtonInfo;->isSelected()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mFixedPalette:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPalette;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v0, v1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPalette;->setSelected(IZZ)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mFixedPalette:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPalette;

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPalette;->setInit(I)V

    return-void
.end method

.method private updateOrder()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->getCurrentPage()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mCurrentPageIndex:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mCurrentChildAt:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->getSwipeChildIndex(I)I

    move-result v0

    const/4 v1, -0x1

    const-string v2, "SpenPaletteViewV2"

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mCurrentChildAt:I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mSwipeChildIndex:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v0, "SwipeArea bring to front"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->bringToFront()V

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mFixedItemCount:I

    if-lez v0, :cond_2

    const-string v0, "FixedArea bring to front"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mFixedArea:Landroid/widget/FrameLayout;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mFixedArea:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    :goto_0
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->bringToFront()V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mPaletteArea:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method private updatePaletteInfo(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPalette;ILcom/samsung/android/sdk/pen/setting/colorpalette/SpenChildButtonInfo;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2$4;->$SwitchMap$com$samsung$android$sdk$pen$setting$colorpalette$SpenChildButtonInfo$ButtonType:[I

    invoke-virtual {p3}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenChildButtonInfo;->getType()Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenChildButtonInfo$ButtonType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPalette;->setInit(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenChildButtonInfo;->getResInfo()Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteResInfo;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPalette;->setRes(ILcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteResInfo;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenChildButtonInfo;->getColorInfo()Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteColorInfo;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPalette;->setColor(ILcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteColorInfo;)V

    :goto_0
    return-void
.end method

.method private updateSwipeLayout(IILcom/samsung/android/sdk/pen/setting/colorpalette/SpenChildButtonInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, p1}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPalette;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->updatePaletteInfo(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPalette;ILcom/samsung/android/sdk/pen/setting/colorpalette/SpenChildButtonInfo;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mActionListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewActionListener;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mViewFlipperAction:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->close()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mViewFlipperAction:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;

    :cond_0
    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mFixedChildIndex:Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mSwipeChildIndex:Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mFixedChildInfo:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mPaletteArea:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mFixedArea:Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mIndicatorArea:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mFlipper:Landroid/widget/ViewFlipper;

    if-eqz v1, :cond_1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->releasePalette(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mFlipper:Landroid/widget/ViewFlipper;

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mFixedPalette:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPalette;

    if-eqz v1, :cond_2

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->releasePalette(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mFixedPalette:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPalette;

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mPageIndicator:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPageIndicator;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPageIndicator;->close()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mPageIndicator:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPageIndicator;

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mColorPalletAssistant:Lcom/samsung/android/sdk/pen/setting/common/SpenVoiceAssistantAsSlider;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenVoiceAssistantAsSlider;->close()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mColorPalletAssistant:Lcom/samsung/android/sdk/pen/setting/common/SpenVoiceAssistantAsSlider;

    :cond_4
    return-void
.end method

.method public getCurrentPage()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mPageIndicator:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPageIndicator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mPageIndicator:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPageIndicator;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPageIndicator;->getActive()I

    move-result v0

    return v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getFixedChildIndex()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mFixedChildIndex:Ljava/util/List;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->getChildIndex(Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public getPageCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mFlipper:Landroid/widget/ViewFlipper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getPaletteCornerRadius()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mPaletteCornerRadius:I

    return v0
.end method

.method public getPaletteOrientation()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mPaletteOrientation:I

    return v0
.end method

.method public getSwipeChildIndex()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mSwipeChildIndex:Ljava/util/List;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->getChildIndex(Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    const/16 v0, 0x3c

    return v0
.end method

.method public notifyButtonClick(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mActionListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewActionListener;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCurrentPage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenPaletteViewV2"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mActionListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewActionListener;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->getCurrentPage()I

    move-result v1

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewActionListener;->onButtonClick(IIZ)V

    :cond_0
    return-void
.end method

.method public onFlipped(II)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mPageIndicator:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPageIndicator;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPageIndicator;->setActive(I)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->updateOrder()V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->updateFixedLayout()V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->updateColorPalletContentDescription()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mActionListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewActionListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewActionListener;->onPaletteSwipe(II)V

    :cond_0
    return-void
.end method

.method public resetChildPriority()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mFixedItemCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mFlipper:Landroid/widget/ViewFlipper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mFlipper:Landroid/widget/ViewFlipper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPalette;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPalette;->resetChildPriority()V

    :cond_0
    return-void
.end method

.method public resetColor(II)V
    .locals 2

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->getFixedChildIndex(I)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->removeFixedChildInfo(II)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->getCurrentPage()I

    move-result p2

    if-ne p2, p1, :cond_0

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->updateFixedLayout(ILcom/samsung/android/sdk/pen/setting/colorpalette/SpenChildButtonInfo;)V

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->getSwipeChildIndex(I)I

    move-result p2

    if-le p2, v1, :cond_2

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenChildButtonInfo;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenChildButtonInfo;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->updateSwipeLayout(IILcom/samsung/android/sdk/pen/setting/colorpalette/SpenChildButtonInfo;)V

    :cond_2
    return-void
.end method

.method public setColor(IILcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteColorInfo;)V
    .locals 2
    .param p3    # Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteColorInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setColor() pageIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " childAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenPaletteViewV2"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenChildButtonInfo;

    invoke-direct {v0, p3}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenChildButtonInfo;-><init>(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteColorInfo;)V

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->getFixedChildIndex(I)I

    move-result p3

    const/4 v1, -0x1

    if-le p3, v1, :cond_0

    invoke-direct {p0, p1, p3, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->putFixedChildInfo(IILcom/samsung/android/sdk/pen/setting/colorpalette/SpenChildButtonInfo;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->getCurrentPage()I

    move-result p2

    if-ne p2, p1, :cond_1

    invoke-direct {p0, p3, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->updateFixedLayout(ILcom/samsung/android/sdk/pen/setting/colorpalette/SpenChildButtonInfo;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->getSwipeChildIndex(I)I

    move-result p2

    if-le p2, v1, :cond_1

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->updateSwipeLayout(IILcom/samsung/android/sdk/pen/setting/colorpalette/SpenChildButtonInfo;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setColor(II[FLjava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setColor() pageIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " childAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " color["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    aget v1, p3, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    aget v2, p3, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    aget v1, p3, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenPaletteViewV2"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteColorInfo;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteColorInfo;-><init>()V

    const/16 v1, 0xff

    invoke-virtual {v0, p3, v1, p4}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteColorInfo;->setColor([FILjava/lang/String;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->setColor(IILcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteColorInfo;)V

    return-void
.end method

.method public setFlipperEnabled(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setFlipperEnabled() enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenPaletteViewV2"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mFlipper:Landroid/widget/ViewFlipper;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/ViewFlipper;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setIndicator(IILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mPageIndicator:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPageIndicator;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPageIndicator;->updateIndicator(IILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)Z

    return-void
.end method

.method public setPage(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mViewFlipperAction:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->changeFlip(IZ)V

    :cond_0
    return-void
.end method

.method public setPaletteActionListener(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewActionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mActionListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewActionListener;

    return-void
.end method

.method public setPaletteCornerRadius(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mPaletteCornerRadius:I

    return-void
.end method

.method public setPaletteInfo(I)V
    .locals 14

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPaletteInfo() totalPage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mFlipper="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mFlipper:Landroid/widget/ViewFlipper;

    if-nez v1, :cond_0

    const-string v1, "NULL"

    goto :goto_0

    :cond_0
    const-string v1, "NOT NULL"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenPaletteViewV2"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mFlipper:Landroid/widget/ViewFlipper;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->removeAllViews()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mFixedArea:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mFixedChildIndex:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mSwipeChildIndex:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mFixedChildInfo:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mSwipeItemCount:I

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mSwipeChildIndex:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_2
    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mFixedItemCount:I

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mFixedChildIndex:Ljava/util/List;

    iget v3, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mSwipeItemCount:I

    add-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mPaletteCornerRadius:I

    const/4 v2, 0x1

    if-lez v1, :cond_5

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    if-ne v1, v2, :cond_4

    move v1, v2

    goto :goto_3

    :cond_4
    move v1, v0

    :goto_3
    iget v3, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mPaletteOrientation:I

    invoke-direct {p0, v3, v2, v1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->getCornerType(IZZ)I

    move-result v3

    iget v4, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mPaletteOrientation:I

    invoke-direct {p0, v4, v0, v1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->getCornerType(IZZ)I

    move-result v1

    goto :goto_4

    :cond_5
    move v1, v0

    move v3, v1

    :goto_4
    move v4, v0

    :goto_5
    if-ge v4, p1, :cond_8

    new-instance v13, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPalette;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mSwipeItemCount:I

    iget v8, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mItemWidth:I

    iget v9, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mItemHeight:I

    iget v10, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mBetweenMargin:I

    iget v11, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mPaletteOrientation:I

    iget v12, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mPaletteCornerRadius:I

    move-object v5, v13

    invoke-direct/range {v5 .. v12}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPalette;-><init>(Landroid/content/Context;IIIIII)V

    iget v5, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mPaletteCornerRadius:I

    if-lez v5, :cond_6

    invoke-virtual {v13, v0, v3, v5}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPalette;->setChildCornerRadius(III)V

    iget v5, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mFixedItemCount:I

    if-nez v5, :cond_6

    iget v5, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mSwipeItemCount:I

    sub-int/2addr v5, v2

    iget v6, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mPaletteCornerRadius:I

    invoke-virtual {v13, v5, v1, v6}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPalette;->setChildCornerRadius(III)V

    :cond_6
    new-instance v5, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2$1;

    invoke-direct {v5, p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2$1;-><init>(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;)V

    invoke-virtual {v13, v5}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPalette;->setActionListener(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteActionListener;)V

    iget-boolean v5, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mIsSupportSelector:Z

    if-nez v5, :cond_7

    invoke-virtual {v13, v5}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPalette;->setSelectorIcon(Z)V

    :cond_7
    iget-object v5, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v5, v13}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_8
    iget v3, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mFixedItemCount:I

    if-lez v3, :cond_a

    new-instance v3, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPalette;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mFixedItemCount:I

    iget v7, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mItemWidth:I

    iget v8, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mItemHeight:I

    iget v9, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mBetweenMargin:I

    iget v10, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mPaletteOrientation:I

    iget v11, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mPaletteCornerRadius:I

    move-object v4, v3

    invoke-direct/range {v4 .. v11}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPalette;-><init>(Landroid/content/Context;IIIIII)V

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mFixedPalette:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPalette;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mChildActionListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteActionListener;

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPalette;->setActionListener(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteActionListener;)V

    iget v3, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mPaletteCornerRadius:I

    if-lez v3, :cond_9

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mFixedPalette:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPalette;

    iget v5, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mFixedItemCount:I

    sub-int/2addr v5, v2

    invoke-virtual {v4, v5, v1, v3}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPalette;->setChildCornerRadius(III)V

    :cond_9
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mFixedArea:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mFixedPalette:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPalette;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_a
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->initPageIndicator(I)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->initAccessibilityForColorPallet()V

    if-le p1, v2, :cond_b

    new-instance p1, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-direct {p1, v1, v2, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;-><init>(Landroid/content/Context;Landroid/widget/ViewFlipper;I)V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mViewFlipperAction:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->resetPosition()V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mViewFlipperAction:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;

    invoke-virtual {p1, p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->setActionListener(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction$ViewFlipperActionListener;)V

    goto :goto_6

    :cond_b
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mViewFlipperAction:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;

    :goto_6
    return-void
.end method

.method public setResource(IIII)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setResource() pageIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " childAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " resId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenPaletteViewV2"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteResInfo;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteResInfo;-><init>()V

    invoke-virtual {v0, p3, p4}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteResInfo;->setRes(II)V

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->setResource(IILcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteResInfo;)V

    return-void
.end method

.method public setSelected(IIZZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSelected() pageIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " childAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " selected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenPaletteViewV2"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->getFixedChildIndex(I)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->getFixedChildInfo(II)Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenChildButtonInfo;

    move-result-object p4

    if-eqz p4, :cond_1

    invoke-virtual {p4, p3}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenChildButtonInfo;->setSelected(Z)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->getSwipeChildIndex(I)I

    move-result v0

    if-le v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1, p1}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteInterface;

    invoke-interface {v1, v0, p3, p4}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteInterface;->setSelected(IZZ)V

    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mCurrentPageIndex:I

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mCurrentChildAt:I

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->updateOrder()V

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->getCurrentPage()I

    move-result p2

    if-ne p2, p1, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->updateFixedLayout()V

    :cond_3
    return-void
.end method

.method public setSelectorDegree(I)Z
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSelectorDegree() degree="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenPaletteViewV2"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mFixedPalette:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPalette;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    rem-int/lit8 v2, p1, 0x5a

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPalette;->setSelectorDegree(II)Z

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v2}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v2, v0}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPalette;

    invoke-virtual {v2, v1, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPalette;->setSelectorDegree(II)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_1
    return v1
.end method
