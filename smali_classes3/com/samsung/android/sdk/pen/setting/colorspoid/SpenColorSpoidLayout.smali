.class public Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout$ActionListener;
    }
.end annotation


# static fields
.field private static SPOID_LAYOUT_HEIGHT:I = 0x0

.field private static SPOID_LAYOUT_WIDTH:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SpenColorSpoidLayout"

.field private static mRatioHeight:F

.field private static mRatioWidth:F


# instance fields
.field private mActionListener:Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout$ActionListener;

.field private mChildRoot:Landroid/widget/RelativeLayout;

.field private mCloseButton:Landroid/view/View;

.field private final mCloseButtonClickListener:Landroid/view/View$OnClickListener;

.field private mColorSpoidHandle:Landroid/view/View;

.field private mColorThemeUtil:Lcom/samsung/android/sdk/pen/setting/color/SpenColorThemeUtil;

.field private mCurrentColor:I

.field private mDownTotalX:F

.field private mDownTotalY:F

.field private mDownX:F

.field private mDownY:F

.field private mHasFirstShowAni:Z

.field private mIconColor:I

.field private mIsFirstShow:Z

.field private mIsRotated:Z

.field public mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private final mOnConsumedHoverListener:Landroid/view/View$OnHoverListener;

.field private final mOnConsumedTouchListener:Landroid/view/View$OnTouchListener;

.field private mParentLayout:Landroid/view/ViewGroup;

.field private mSpoidCurrentColor:Landroid/widget/ImageView;

.field public mSpoidSettingListener:Landroid/view/View$OnTouchListener;

.field private mStartMargin:I

.field private mTopMargin:I

.field private mTotalLayout:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;II)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mParentLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mCurrentColor:I

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mActionListener:Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout$ActionListener;

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mIsRotated:Z

    iput v1, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mStartMargin:I

    iput v1, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mTopMargin:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mIsFirstShow:Z

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mHasFirstShowAni:Z

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout$4;-><init>(Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout$5;-><init>(Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mSpoidSettingListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout$6;-><init>(Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mCloseButtonClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout$7;-><init>(Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mOnConsumedTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout$8;-><init>(Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mOnConsumedHoverListener:Landroid/view/View$OnHoverListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/color/SpenColorThemeUtil;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/pen/setting/color/SpenColorThemeUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mColorThemeUtil:Lcom/samsung/android/sdk/pen/setting/color/SpenColorThemeUtil;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/spen/R$dimen;->color_spoid_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->SPOID_LAYOUT_WIDTH:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/spen/R$dimen;->color_spoid_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->SPOID_LAYOUT_HEIGHT:I

    sget v0, Lcom/samsung/android/spen/R$color;->setting_handwriting_icon_enable_color:I

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mIconColor:I

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mParentLayout:Landroid/view/ViewGroup;

    invoke-direct {p0, p2, p3, p4}, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->initSpoidSetting(Landroid/view/ViewGroup;II)V

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;)Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mTotalLayout:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mStartMargin:I

    return p0
.end method

.method public static synthetic access$1000(Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;)F
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mDownTotalX:F

    return p0
.end method

.method public static synthetic access$1002(Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mDownTotalX:F

    return p1
.end method

.method public static synthetic access$1100(Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;)F
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mDownTotalY:F

    return p0
.end method

.method public static synthetic access$1102(Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mDownTotalY:F

    return p1
.end method

.method public static synthetic access$1200(Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;II)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->movePositionInner(II)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$1300(Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->updateMargin()V

    return-void
.end method

.method public static synthetic access$1400(Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;)Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout$ActionListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mActionListener:Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout$ActionListener;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mTopMargin:I

    return p0
.end method

.method public static synthetic access$300(Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mHasFirstShowAni:Z

    return p0
.end method

.method public static synthetic access$302(Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mHasFirstShowAni:Z

    return p1
.end method

.method public static synthetic access$400(Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->updateTotalLayout(Z)V

    return-void
.end method

.method public static synthetic access$500(Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->updatePositionRatio()V

    return-void
.end method

.method public static synthetic access$600(Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mParentLayout:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mIsRotated:Z

    return p0
.end method

.method public static synthetic access$702(Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mIsRotated:Z

    return p1
.end method

.method public static synthetic access$800(Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;)F
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mDownX:F

    return p0
.end method

.method public static synthetic access$802(Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mDownX:F

    return p1
.end method

.method public static synthetic access$900(Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;)F
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mDownY:F

    return p0
.end method

.method public static synthetic access$902(Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mDownY:F

    return p1
.end method

.method private bodyLayout(Landroid/widget/RelativeLayout;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->spoiddHandle(Landroid/widget/RelativeLayout;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mColorSpoidHandle:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->spoidExitBtn(Landroid/widget/RelativeLayout;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mCloseButton:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->spoidColorImage(Landroid/widget/RelativeLayout;)Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->spoidCurrentColor(Landroid/widget/RelativeLayout;)Landroid/widget/ImageView;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mSpoidCurrentColor:Landroid/widget/ImageView;

    return-void
.end method

.method private getMovableRect(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v2, 0x0

    aget v3, v0, v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v1, Landroid/graphics/Rect;->left:I

    const/4 v3, 0x1

    aget v4, v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->top:I

    aget v2, v0, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v2, v4

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v2, v4

    iput v2, v1, Landroid/graphics/Rect;->right:I

    aget v0, v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    sub-int/2addr v0, p1

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    return-object v1
.end method

.method private varargs getString(Landroid/content/res/Resources;Ljava/lang/String;[Ljava/lang/Integer;)Ljava/lang/String;
    .locals 3

    array-length v0, p3

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    aget-object v2, p3, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    :goto_0
    array-length v2, p3

    if-ge v1, v2, :cond_2

    if-eqz p2, :cond_1

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    aget-object v2, p3, v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private initSpoidSetting(Landroid/view/ViewGroup;II)V
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->totalLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mTotalLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mColorSpoidHandle:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mSpoidSettingListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    sget v2, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->SPOID_LAYOUT_WIDTH:I

    sget v3, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->SPOID_LAYOUT_HEIGHT:I

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mTotalLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :cond_0
    :goto_0
    const-string p1, "SpenColorSpoidLayout"

    const-string v0, "call movePosition() in initSpoidSetting()"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->movePosition(II)V

    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private movePositionInner(II)Z
    .locals 12

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mParentLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mParentLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    const-string v3, "SpenColorSpoidLayout"

    if-nez v0, :cond_1

    if-nez v2, :cond_1

    const-string p1, "parent width and height is 0"

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mTotalLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getRotation()F

    move-result v4

    float-to-int v4, v4

    div-int/lit8 v4, v4, 0x5a

    rem-int/lit8 v4, v4, 0x2

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    move v4, v5

    goto :goto_0

    :cond_2
    move v4, v1

    :goto_0
    sget v6, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->SPOID_LAYOUT_WIDTH:I

    sget v7, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->SPOID_LAYOUT_HEIGHT:I

    if-eqz v4, :cond_3

    sub-int v8, v6, v7

    div-int/lit8 v8, v8, 0x2

    goto :goto_1

    :cond_3
    move v8, v1

    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[1] movePositionInner() x="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " y="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " isRotated="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v11, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mIsRotated:Z

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, " isRotatedSpoid="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " delta="

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    neg-int v4, v8

    if-ge p1, v4, :cond_4

    move p1, v4

    move v1, v5

    :cond_4
    if-ge p2, v8, :cond_5

    move v1, v5

    move p2, v8

    :cond_5
    add-int v4, p1, v6

    add-int v9, v0, v8

    if-le v4, v9, :cond_6

    sub-int/2addr v0, v6

    add-int p1, v0, v8

    move v1, v5

    :cond_6
    sub-int/2addr v2, v7

    sub-int/2addr v2, v8

    if-le p2, v2, :cond_7

    move p2, v2

    goto :goto_2

    :cond_7
    move v5, v1

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[2] movePositionInner() x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ##### isChanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mTotalLayout:Landroid/widget/RelativeLayout;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setX(F)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mTotalLayout:Landroid/widget/RelativeLayout;

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setY(F)V

    return v5
.end method

.method private setBackground(Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method private setIconColor(Landroid/widget/ImageView;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mIconColor:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    return-void
.end method

.method private setViewTooltip(Landroid/view/View;I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilHover;->setHoverText(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private spoidColorImage(Landroid/widget/RelativeLayout;)Landroid/view/View;
    .locals 1

    sget v0, Lcom/samsung/android/spen/R$id;->eyedropper_icon:I

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    sget v0, Lcom/samsung/android/spen/R$drawable;->ic_spoid:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->setIconColor(Landroid/widget/ImageView;)V

    sget v0, Lcom/samsung/android/spen/R$string;->pen_string_color_spuit:I

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->setViewTooltip(Landroid/view/View;I)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setFocusable(Z)V

    return-object p1
.end method

.method private spoidCurrentColor(Landroid/widget/RelativeLayout;)Landroid/widget/ImageView;
    .locals 4

    sget v0, Lcom/samsung/android/spen/R$id;->current_color:I

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    sget v0, Lcom/samsung/android/spen/R$drawable;->spuit_color_circle_shape:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mCurrentColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Integer;

    sget v2, Lcom/samsung/android/spen/R$string;->pen_string_color:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget v2, Lcom/samsung/android/spen/R$string;->pen_string_color_double_tap_to_apply:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, " "

    invoke-direct {p0, v0, v2, v1}, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->getString(Landroid/content/res/Resources;Ljava/lang/String;[Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setFocusable(Z)V

    return-object p1
.end method

.method private spoidExitBtn(Landroid/widget/RelativeLayout;)Landroid/view/View;
    .locals 1

    sget v0, Lcom/samsung/android/spen/R$id;->exit_button:I

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    sget v0, Lcom/samsung/android/spen/R$drawable;->close_slot:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->setIconColor(Landroid/widget/ImageView;)V

    sget v0, Lcom/samsung/android/spen/R$drawable;->spen_brush_btn_ripple_effect:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setFocusable(Z)V

    sget v0, Lcom/samsung/android/spen/R$string;->pen_string_close:I

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->setViewTooltip(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mCloseButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method private spoiddHandle(Landroid/widget/RelativeLayout;)Landroid/view/View;
    .locals 4

    sget v0, Lcom/samsung/android/spen/R$id;->handle:I

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    sget v0, Lcom/samsung/android/spen/R$drawable;->colorpicker_handler:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->setIconColor(Landroid/widget/ImageView;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Integer;

    sget v2, Lcom/samsung/android/spen/R$string;->pen_string_move_handler:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget v2, Lcom/samsung/android/spen/R$string;->pen_string_color_double_tap_and_hold_to_move:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, ", "

    invoke-direct {p0, v0, v2, v1}, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->getString(Landroid/content/res/Resources;Ljava/lang/String;[Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setFocusable(Z)V

    return-object p1
.end method

.method private startAnimation(ZLandroid/view/animation/Animation$AnimationListener;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mChildRoot:Landroid/widget/RelativeLayout;

    if-nez v2, :cond_0

    return-void

    :cond_0
    new-instance v2, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x2

    const-wide/16 v6, 0xfa

    const/4 v9, 0x1

    if-eqz p1, :cond_1

    new-instance v14, Landroid/view/animation/ScaleAnimation;

    const v11, 0x3f733333    # 0.95f

    const/high16 v12, 0x3f800000    # 1.0f

    const v13, 0x3f733333    # 0.95f

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v16, 0x1

    const/high16 v17, 0x3f000000    # 0.5f

    const/16 v18, 0x1

    const/high16 v19, 0x3f000000    # 0.5f

    move-object v10, v14

    move-object v8, v14

    move v14, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    invoke-direct/range {v10 .. v18}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    invoke-virtual {v8, v6, v7}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    invoke-static {v5}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilAnimation;->getInterpolator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v5

    invoke-virtual {v8, v5}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v8, v9}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    new-instance v5, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v5, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-static {v9}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilAnimation;->getInterpolator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v3, 0x96

    invoke-virtual {v5, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v5, v3, v4}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    goto :goto_0

    :cond_1
    new-instance v8, Landroid/view/animation/ScaleAnimation;

    const/high16 v11, 0x3f800000    # 1.0f

    const v12, 0x3f733333    # 0.95f

    const/high16 v13, 0x3f800000    # 1.0f

    const v14, 0x3f733333    # 0.95f

    const/4 v15, 0x1

    const/high16 v16, 0x3f000000    # 0.5f

    const/16 v17, 0x1

    const/high16 v18, 0x3f000000    # 0.5f

    move-object v10, v8

    invoke-direct/range {v10 .. v18}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    invoke-virtual {v8, v6, v7}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    invoke-static {v5}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilAnimation;->getInterpolator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v5

    invoke-virtual {v8, v5}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v8, v9}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    new-instance v5, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v5, v4, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-static {v9}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilAnimation;->getInterpolator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v3, 0x96

    invoke-virtual {v5, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    :goto_0
    invoke-virtual {v2, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v2, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v2, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, v0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mChildRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private totalLayout()Landroid/widget/RelativeLayout;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/samsung/android/spen/R$layout;->setting_spuit_layout_v40:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    sget v1, Lcom/samsung/android/spen/R$id;->child_root:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mChildRoot:Landroid/widget/RelativeLayout;

    sget v2, Lcom/samsung/android/spen/R$drawable;->spuit_bg:I

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->setBackground(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mOnConsumedHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mOnConsumedTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->bodyLayout(Landroid/widget/RelativeLayout;)V

    :cond_0
    return-object v0
.end method

.method private updateMargin()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mTotalLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getX()F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mTotalLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getY()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mParentLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mParentLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    sub-int/2addr v2, v0

    sget v0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->SPOID_LAYOUT_WIDTH:I

    sub-int v0, v2, v0

    :cond_0
    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mStartMargin:I

    iput v1, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mTopMargin:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateMargin() MARGIN["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mStartMargin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mTopMargin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenColorSpoidLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updatePositionRatio()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mParentLayout:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->getMovableRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mTotalLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->getMovableRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int v4, v2, v3

    int-to-float v4, v4

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v5

    add-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v4, v2

    sput v4, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mRatioWidth:F

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mParentLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    sget v3, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mRatioWidth:F

    sub-float/2addr v2, v3

    sput v2, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mRatioWidth:F

    :cond_0
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int v4, v2, v3

    int-to-float v4, v4

    sub-int/2addr v2, v3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    add-int/2addr v2, v0

    int-to-float v0, v2

    div-float/2addr v4, v0

    sput v4, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mRatioHeight:F

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "### decide RATIO["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mRatioWidth:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mRatioHeight:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenColorSpoidLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateTotalLayout(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mTotalLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->invalidate()V

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout$2;-><init>(Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;)V

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->startAnimation(ZLandroid/view/animation/Animation$AnimationListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mColorSpoidHandle:Landroid/view/View;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mSpoidCurrentColor:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mTotalLayout:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mTotalLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mTotalLayout:Landroid/widget/RelativeLayout;

    :cond_0
    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mChildRoot:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mParentLayout:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mParentLayout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mColorThemeUtil:Lcom/samsung/android/sdk/pen/setting/color/SpenColorThemeUtil;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/color/SpenColorThemeUtil;->close()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mColorThemeUtil:Lcom/samsung/android/sdk/pen/setting/color/SpenColorThemeUtil;

    const/4 v1, 0x0

    sput v1, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mRatioWidth:F

    sput v1, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mRatioHeight:F

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mCloseButton:Landroid/view/View;

    return-void
.end method

.method public getColorSpoidCurrentColor()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mCurrentColor:I

    return v0
.end method

.method public getColorSpoidSettingVisible()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mTotalLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    return v0
.end method

.method public getPositionX()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mStartMargin:I

    return v0
.end method

.method public getPositionY()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mTopMargin:I

    return v0
.end method

.method public getSpoidView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mTotalLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public hide()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->hide(Z)V

    return-void
.end method

.method public hide(Z)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mTotalLayout:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout$3;-><init>(Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;)V

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->startAnimation(ZLandroid/view/animation/Animation$AnimationListener;)V

    :goto_0
    return-void
.end method

.method public movePosition(II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "movePosition() :: movePositionByMargin MARGIN["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenColorSpoidLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mParentLayout:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mStartMargin:I

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mTopMargin:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mParentLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    sub-int/2addr v0, p1

    sget p1, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->SPOID_LAYOUT_WIDTH:I

    sub-int p1, v0, p1

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->movePositionInner(II)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->updateMargin()V

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->updatePositionRatio()V

    return-void
.end method

.method public rotatePosition()V
    .locals 11

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mColorSpoidHandle:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mIsRotated:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mParentLayout:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->getMovableRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    sget v1, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mRatioWidth:F

    sget v2, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mRatioHeight:F

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hRatio = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", vRatio = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SpenColorSpoidLayout"

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    float-to-double v5, v1

    const-wide v7, 0x3fefae147ae147aeL    # 0.99

    cmpl-double v3, v5, v7

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    if-lez v3, :cond_2

    move v1, v5

    goto :goto_0

    :cond_2
    cmpg-float v3, v1, v6

    if-gez v3, :cond_3

    move v1, v6

    :cond_3
    :goto_0
    float-to-double v9, v2

    cmpl-double v3, v9, v7

    if-lez v3, :cond_4

    move v2, v5

    goto :goto_1

    :cond_4
    cmpg-float v3, v2, v6

    if-gez v3, :cond_5

    move v2, v6

    :cond_5
    :goto_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    sget v5, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->SPOID_LAYOUT_WIDTH:I

    sub-int/2addr v3, v5

    int-to-float v3, v3

    mul-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    sget v3, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->SPOID_LAYOUT_HEIGHT:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calculate result by ratio. sMargin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", tMargin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "call movePosition() in rotatePosition()"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->movePosition(II)V

    return-void
.end method

.method public setColorSpoidColor(I)V
    .locals 5

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mCurrentColor:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mSpoidCurrentColor:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mColorThemeUtil:Lcom/samsung/android/sdk/pen/setting/color/SpenColorThemeUtil;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/util/color/SpenColorThemeUtil;->getColor(I)I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setColorSpoidColor() color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget v3, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mCurrentColor:I

    and-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, " #%08X"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " visible="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v1, [Ljava/lang/Object;

    and-int/lit8 v2, p1, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenColorSpoidLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mSpoidCurrentColor:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mSpoidCurrentColor:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setColorTheme(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mColorThemeUtil:Lcom/samsung/android/sdk/pen/setting/color/SpenColorThemeUtil;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/util/color/SpenColorThemeUtil;->setColorTheme(I)V

    :cond_0
    return-void
.end method

.method public setRotation()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mIsRotated:Z

    return-void
.end method

.method public setSpoidListener(Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout$ActionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mActionListener:Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout$ActionListener;

    return-void
.end method

.method public show()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->show(Z)V

    return-void
.end method

.method public show(Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mTotalLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mCloseButton:Landroid/view/View;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->bringToFront()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mTotalLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mCloseButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsRotate="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mIsRotated:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsFirstShow="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mIsFirstShow:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SpenColorSpoidLayout"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mIsRotated:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mIsFirstShow:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->rotatePosition()V

    :cond_1
    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mIsRotated:Z

    :cond_2
    const-string v0, "call movePosition() in show()"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mStartMargin:I

    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mTopMargin:I

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->movePosition(II)V

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mIsFirstShow:Z

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mIsFirstShow:Z

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mHasFirstShowAni:Z

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mTotalLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout$1;-><init>(Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->updateTotalLayout(Z)V

    :cond_4
    :goto_0
    return-void
.end method
