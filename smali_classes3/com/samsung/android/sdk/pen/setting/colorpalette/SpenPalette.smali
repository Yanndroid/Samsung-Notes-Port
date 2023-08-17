.class Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;
.super Landroid/widget/GridLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette$OnActionListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenPalette"


# instance fields
.field private final mChildClickListener:Landroid/view/View$OnClickListener;

.field private mChildInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenChildButtonInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mChildPadding:I

.field private mChildSize:I

.field private mCol:I

.field private mDefaultColor:I

.field private mDownX:F

.field private mDownY:F

.field private mHorizontalSpacing:I

.field private mOnActionListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette$OnActionListener;

.field private mRow:I

.field private mSelectorDegree:I

.field private mSelectorFlip:I

.field private final mTouchListener:Landroid/view/View$OnTouchListener;

.field private mTouchSlope:F

.field private mVerticalSpacing:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette$1;-><init>(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;->mTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette$3;-><init>(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;->mChildClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;->setChildSize(II)V

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;->construct(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;)F
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;->mDownX:F

    return p0
.end method

.method public static synthetic access$002(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;->mDownX:F

    return p1
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;)F
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;->mDownY:F

    return p0
.end method

.method public static synthetic access$102(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;->mDownY:F

    return p1
.end method

.method public static synthetic access$200(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;)F
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;->mTouchSlope:F

    return p0
.end method

.method public static synthetic access$300(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;Landroid/view/View;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;->getChildIndex(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public static synthetic access$400(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;)Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette$OnActionListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;->mOnActionListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette$OnActionListener;

    return-object p0
.end method

.method private construct(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;->mHorizontalSpacing:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;->mVerticalSpacing:I

    const-string v1, "#E6E6E6"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;->mDefaultColor:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;->mSelectorDegree:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;->mSelectorFlip:I

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;->mTouchSlope:F

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;->mChildInfo:Ljava/util/HashMap;

    return-void
.end method

.method private decideChild(II)V
    .locals 6

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;->mChildSize:I

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getColumnCount()I

    move-result v1

    mul-int/2addr v0, v1

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;->mChildSize:I

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getRowCount()I

    move-result v1

    mul-int/2addr v0, v1

    sub-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getColumnCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getColumnCount()I

    move-result v0

    sub-int/2addr v0, v1

    div-int/2addr p1, v0

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;->mHorizontalSpacing:I

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getRowCount()I

    move-result p1

    if-le p1, v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getRowCount()I

    move-result p1

    sub-int/2addr p1, v1

    div-int/2addr p2, p1

    goto :goto_1

    :cond_1
    move p2, v2

    :goto_1
    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;->mVerticalSpacing:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "childSize="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;->mChildSize:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " horizontalSpacing="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;->mHorizontalSpacing:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " verticalSpacing="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;->mVerticalSpacing:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SpenPalette"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;->mRow:I

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;->updateChildMargin()V

    goto/16 :goto_6

    :cond_2
    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;->mHorizontalSpacing:I

    if-gez p1, :cond_3

    move p1, v2

    :cond_3
    iget p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;->mVerticalSpacing:I

    if-gez p2, :cond_4

    move p2, v2

    :cond_4
    move v0, v2

    :goto_2
    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;->mRow:I

    iget v3, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;->mCol:I

    mul-int/2addr v1, v3

    if-ge v0, v1, :cond_8

    new-instance v1, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorView;

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorView;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setId(I)V

    iget v3, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;->mChildPadding:I

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    new-instance v3, Landroid/widget/GridLayout$LayoutParams;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    iget v5, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;->mChildSize:I

    invoke-direct {v4, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-direct {v3, v4}, Landroid/widget/GridLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getColumnCount()I

    move-result v4

    rem-int v4, v0, v4

    if-eqz v4, :cond_5

    move v4, p1

    goto :goto_3

    :cond_5
    move v4, v2

    :goto_3
    invoke-virtual {v3, v4}, Landroid/widget/GridLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getColumnCount()I

    move-result v4

    div-int v4, v0, v4

    if-eqz v4, :cond_6

    move v4, p2

    goto :goto_4

    :cond_6
    move v4, v2

    :goto_4
    iput v4, v3, Landroid/widget/GridLayout$LayoutParams;->topMargin:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p0, v1, v3}, Landroid/widget/GridLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;->mChildInfo:Ljava/util/HashMap;

    if-nez v3, :cond_7

    goto :goto_5

    :cond_7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenChildButtonInfo;

    invoke-direct {p0, v0, v1, v3}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;->setChildButton(ILcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorView;Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenChildButtonInfo;)V

    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_8
    iput v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;->mRow:I

    iput v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;->mCol:I

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;->mChildInfo:Ljava/util/HashMap;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;->mChildInfo:Ljava/util/HashMap;

    :cond_9
    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;->mSelectorDegree:I

    if-eqz p1, :cond_a

    iget p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;->mSelectorFlip:I

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;->setSelectorDegree(II)Z

    :cond_a
    :goto_6
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette$2;-><init>(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private getChildIndex(Landroid/view/View;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private setChildButton(ILcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorView;Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenChildButtonInfo;)V
    .locals 3

    if-nez p3, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;->setInit(I)V

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette$4;->$SwitchMap$com$samsung$android$sdk$pen$setting$colorpalette$SpenChildButtonInfo$ButtonType:[I

    invoke-virtual {p3}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenChildButtonInfo;->getType()Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenChildButtonInfo$ButtonType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p3}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenChildButtonInfo;->getResInfo()Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteResInfo;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;->setRes(ILcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteResInfo;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenChildButtonInfo;->getColorInfo()Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteColorInfo;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;->setColor(ILcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteColorInfo;)V

    :goto_0
    invoke-virtual {p3}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenChildButtonInfo;->isSelected()Z

    move-result p1

    invoke-virtual {p2, p1, v2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorView;->setSelected(ZZ)Z

    :goto_1
    return-void
.end method

.method private updateChildMargin()V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/GridLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getColumnCount()I

    move-result v4

    rem-int v4, v1, v4

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;->mHorizontalSpacing:I

    goto :goto_1

    :cond_0
    move v4, v0

    :goto_1
    invoke-virtual {v3, v4}, Landroid/widget/GridLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getColumnCount()I

    move-result v4

    div-int v4, v1, v4

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;->mVerticalSpacing:I

    goto :goto_2

    :cond_1
    move v4, v0

    :goto_2
    iput v4, v3, Landroid/widget/GridLayout$LayoutParams;->topMargin:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    const-string v0, "SpenPalette"

    const-string v1, "close()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;->mOnActionListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette$OnActionListener;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;->mChildInfo:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;->mChildInfo:Ljava/util/HashMap;

    :cond_0
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/GridLayout;->onSizeChanged(IIII)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSizeChanged() old["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, "] new["

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "]"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "SpenPalette"

    invoke-static {p4, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;->decideChild(II)V

    return-void
.end method

.method public setActionListener(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette$OnActionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;->mOnActionListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette$OnActionListener;

    return-void
.end method

.method public setChildSize(II)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;->mChildSize:I

    const/4 v1, 0x0

    if-ne v0, p1, :cond_1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;->mChildPadding:I

    if-eq v0, p2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;->mChildSize:I

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;->mChildPadding:I

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getChildCount()I

    move-result p1

    if-lez p1, :cond_2

    :goto_2
    invoke-virtual {p0}, Landroid/widget/GridLayout;->getChildCount()I

    move-result p1

    if-ge v1, p1, :cond_2

    invoke-virtual {p0, v1}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorView;

    iget p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;->mChildPadding:I

    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/GridLayout$LayoutParams;

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;->mChildSize:I

    iput v0, p2, Landroid/widget/GridLayout$LayoutParams;->width:I

    iput v0, p2, Landroid/widget/GridLayout$LayoutParams;->height:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public setColor(ILcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteColorInfo;)V
    .locals 3
    .param p2    # Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteColorInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v0

    if-le v0, p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorView;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteColorInfo;->getColor()[F

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteColorInfo;->getOpacity()I

    move-result v1

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteColorInfo;->getColorName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, v1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorView;->setColor([FILjava/lang/String;)Z

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;->mChildClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setClickable(Z)V

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorView;->setSelected(Z)V

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;->mChildInfo:Ljava/util/HashMap;

    if-eqz v0, :cond_3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenChildButtonInfo;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenChildButtonInfo;->getType()Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenChildButtonInfo$ButtonType;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenChildButtonInfo$ButtonType;->COLOR:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenChildButtonInfo$ButtonType;

    if-ne v1, v2, :cond_1

    invoke-virtual {v0, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenChildButtonInfo;->setColorInfo(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteColorInfo;)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    const-string v0, "SpenPalette"

    const-string v1, "+++++++++++++ Is possible? "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenChildButtonInfo;

    invoke-direct {v0, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenChildButtonInfo;-><init>(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteColorInfo;)V

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;->mChildInfo:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_0
    return-void
.end method

.method public setInfo(II)V
    .locals 5

    invoke-virtual {p0, p2}, Landroid/widget/GridLayout;->setColumnCount(I)V

    invoke-virtual {p0, p1}, Landroid/widget/GridLayout;->setRowCount(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setInfo() row="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " col="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " childSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;->mChildSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenPalette"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;->mChildSize:I

    if-lez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    mul-int v1, p1, p2

    if-ge v0, v1, :cond_1

    new-instance v1, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorView;

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorView;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setId(I)V

    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;->mChildPadding:I

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    new-instance v2, Landroid/widget/GridLayout$LayoutParams;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    iget v4, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;->mChildSize:I

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-direct {v2, v3}, Landroid/widget/GridLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p0, v1, v2}, Landroid/widget/GridLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;->mRow:I

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;->mCol:I

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;->mChildInfo:Ljava/util/HashMap;

    :cond_1
    return-void
.end method

.method public setInit(I)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v0

    if-le v0, p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorView;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorView;->setInit()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setClickable(Z)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorView;->setSelected(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;->mChildInfo:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;->mChildInfo:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public setRes(ILcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteResInfo;)V
    .locals 3
    .param p2    # Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteResInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v0

    if-le v0, p1, :cond_1

    invoke-virtual {p0, p1}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorView;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteResInfo;->getResourceId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorView;->setColorRes(I)V

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteResInfo;->getHoverStringId()I

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorView;->setHoverDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/GridLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorView;->setHoverDescription(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;->mChildClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setClickable(Z)V

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorView;->setSelected(Z)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;->mChildInfo:Ljava/util/HashMap;

    if-eqz v0, :cond_4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenChildButtonInfo;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenChildButtonInfo;->getType()Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenChildButtonInfo$ButtonType;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenChildButtonInfo$ButtonType;->RES:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenChildButtonInfo$ButtonType;

    if-ne v1, v2, :cond_2

    invoke-virtual {v0, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenChildButtonInfo;->setResInfo(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteResInfo;)V

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    const-string v0, "SpenPalette"

    const-string/jumbo v1, "setRes() childInfo is not null."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    new-instance v0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenChildButtonInfo;

    invoke-direct {v0, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenChildButtonInfo;-><init>(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteResInfo;)V

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;->mChildInfo:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_1
    return-void
.end method

.method public setSelected(IZZ)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v0

    if-le v0, p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorView;

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorView;->setSelected(ZZ)Z

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;->mChildInfo:Ljava/util/HashMap;

    if-eqz p3, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenChildButtonInfo;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenChildButtonInfo;->setSelected(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setSelectorDegree(II)Z
    .locals 2

    rem-int/lit8 v0, p2, 0x5a

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;->mSelectorDegree:I

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;->mSelectorFlip:I

    :goto_0
    invoke-virtual {p0}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorView;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->resetDegree()V

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->setSelectorDegree(II)Z

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->setResourceDegree(II)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Not support degree="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SpenPalette"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
