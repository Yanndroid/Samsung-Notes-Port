.class public Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout$ButtonPosition;
    }
.end annotation


# static fields
.field private static final SUPPORT_TOUCH_TARGET:Z = false

.field private static final TAG:Ljava/lang/String; = "SpenCommonTitleLayout"

.field private static final TITLE_TEXT_MAX_LINE:I = 0x2


# instance fields
.field private SETTING_IC_DISABLED_COLOR:I

.field private SETTING_IC_ENABLED_COLOR:I

.field private mBaseViewId:I

.field private mButtonExtendTouchTop:I

.field private mButtonHeight:I

.field private mButtonMargin:I

.field private mButtonWidth:I

.field private mCloseButton:Landroid/view/View;

.field private mCloseButtonClickListener:Landroid/view/View$OnClickListener;

.field private final mCloseClickListener:Landroid/view/View$OnClickListener;

.field private mHeaderIconId:I

.field private mNextButtonOfClose:Landroid/widget/FrameLayout;

.field private mTitleText:Landroid/widget/TextView;

.field private mTitleTextObserver:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mViewStartMargin:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout$1;-><init>(Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;)V

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->mCloseClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->construct(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;)Landroid/view/View$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->mCloseButtonClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->mTitleText:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic access$202(Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->mTitleTextObserver:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object p1
.end method

.method public static synthetic access$300(Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->adjustTitleText()V

    return-void
.end method

.method private addButtonInner(IILandroid/view/View$OnClickListener;Z)Landroid/view/View;
    .locals 10

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/common/SpenExtendTouchTargetLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenExtendTouchTargetLayout;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setId(I)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->getCloseParentId()I

    move-result v3

    iget v4, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->mBaseViewId:I

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    if-nez v4, :cond_0

    const/16 p4, 0x15

    invoke-virtual {v2, p4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    sget-object p4, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout$ButtonPosition;->LAST:Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout$ButtonPosition;

    :goto_0
    move-object v3, p4

    move p4, v5

    goto :goto_1

    :cond_0
    if-eqz p4, :cond_1

    if-eq v3, v4, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->getCloseParentId()I

    move-result p4

    invoke-virtual {v2, v6, p4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 p4, 0x1

    sget-object v3, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout$ButtonPosition;->MIDDLE:Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout$ButtonPosition;

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    sget-object p4, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout$ButtonPosition;->FIRST:Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout$ButtonPosition;

    iget v3, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->mBaseViewId:I

    invoke-virtual {p0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Lcom/samsung/android/sdk/pen/setting/common/SpenExtendTouchTargetLayout;

    goto :goto_0

    :goto_1
    iget v4, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->mViewStartMargin:I

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    iget v4, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->mButtonWidth:I

    iget v8, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->mButtonHeight:I

    iget v9, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->mButtonMargin:I

    invoke-direct {p0, v0, v4, v8, v9}, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->addIconButton(Landroid/widget/FrameLayout;III)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {p0, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-nez p4, :cond_2

    :goto_2
    iput v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->mBaseViewId:I

    goto :goto_3

    :cond_2
    iget-object p4, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->mNextButtonOfClose:Landroid/widget/FrameLayout;

    if-nez p4, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    check-cast p4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p4, v6, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->mNextButtonOfClose:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_3
    invoke-direct {p0, v3, v0, v7}, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->adjustTouchTargetFooterButton(Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout$ButtonPosition;Lcom/samsung/android/sdk/pen/setting/common/SpenExtendTouchTargetLayout;Lcom/samsung/android/sdk/pen/setting/common/SpenExtendTouchTargetLayout;)V

    iget-object p4, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->mCloseButton:Landroid/view/View;

    if-eqz p4, :cond_4

    iget-object p4, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->mNextButtonOfClose:Landroid/widget/FrameLayout;

    if-nez p4, :cond_4

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->mNextButtonOfClose:Landroid/widget/FrameLayout;

    :cond_4
    sget p4, Lcom/samsung/android/spen/R$drawable;->spen_ripple_effect_drawable:I

    invoke-direct {p0, v4, p1, p4, p3}, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->setIconResource(Landroid/widget/ImageView;IILandroid/view/View$OnClickListener;)V

    new-array p1, v5, [Ljava/lang/Object;

    invoke-direct {p0, v0, v4, p2, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->setIconAccessibility(Landroid/view/ViewGroup;Landroid/view/View;I[Ljava/lang/Object;)V

    return-object v4
.end method

.method private addIconButton(Landroid/widget/FrameLayout;III)Landroid/widget/ImageView;
    .locals 2

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setFocusable(Z)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, p2, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p4}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v1, p4}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    iput p4, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput p4, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const/16 p2, 0xd

    iput p2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p1, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private adjustTitleText()V
    .locals 3

    const-string v0, "SpenCommonTitleLayout"

    const-string v1, "adjustTitleText()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->mTitleText:Landroid/widget/TextView;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v1}, Landroid/widget/TextView;->getLineCount()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->mTitleText:Landroid/widget/TextView;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText;->adjustCharLineSeparation(Landroid/widget/TextView;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adjustCharLineSeparation() ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLineCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] String="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private adjustTouchTargetFooterButton(Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout$ButtonPosition;Lcom/samsung/android/sdk/pen/setting/common/SpenExtendTouchTargetLayout;Lcom/samsung/android/sdk/pen/setting/common/SpenExtendTouchTargetLayout;)V
    .locals 0

    return-void
.end method

.method private adjustTouchTargetHeaderButton(Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout$ButtonPosition;Lcom/samsung/android/sdk/pen/setting/common/SpenExtendTouchTargetLayout;Lcom/samsung/android/sdk/pen/setting/common/SpenExtendTouchTargetLayout;)V
    .locals 0

    return-void
.end method

.method private checkTitleTextLine()V
    .locals 2

    const-string v0, "SpenCommonTitleLayout"

    const-string v1, "checkTitleTextLine()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->mTitleText:Landroid/widget/TextView;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    if-lez v1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->adjustTitleText()V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->mTitleTextObserver:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v1, :cond_2

    const-string v1, "Already processing."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    new-instance v1, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout$2;-><init>(Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->mTitleTextObserver:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    const-string v1, "Make Title\'s OnGlobalLayoutListener."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->mTitleTextObserver:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private construct(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->mHeaderIconId:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->mBaseViewId:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/spen/R$dimen;->setting_common_title_ic_space:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->mViewStartMargin:I

    sget v1, Lcom/samsung/android/spen/R$dimen;->setting_common_title_ic_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->mButtonWidth:I

    sget v1, Lcom/samsung/android/spen/R$dimen;->setting_common_title_ic_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->mButtonHeight:I

    sget v1, Lcom/samsung/android/spen/R$dimen;->setting_common_title_ic_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->mButtonMargin:I

    sget v1, Lcom/samsung/android/spen/R$dimen;->setting_common_title_ic_extend_touch_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->mButtonExtendTouchTop:I

    sget v0, Lcom/samsung/android/spen/R$color;->setting_handwriting_icon_enable_color:I

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->SETTING_IC_ENABLED_COLOR:I

    sget v0, Lcom/samsung/android/spen/R$color;->setting_handwriting_icon_disable_color:I

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->SETTING_IC_DISABLED_COLOR:I

    return-void
.end method

.method private getCloseParentId()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->mCloseButton:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method private varargs setIconAccessibility(Landroid/view/ViewGroup;Landroid/view/View;I[Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x2

    invoke-virtual {p1, p4}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-static {p2, p3}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilHover;->setHoverText(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setIconResource(Landroid/widget/ImageView;IILandroid/view/View$OnClickListener;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->SETTING_IC_ENABLED_COLOR:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setColorFilter(I)V

    invoke-virtual {p1, p4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addButton(IILandroid/view/View$OnClickListener;Z)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->addButtonInner(IILandroid/view/View$OnClickListener;Z)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    if-eqz p4, :cond_0

    const-string p2, "1"

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->setButtonStateChanged(Landroid/view/View;Z)V

    :cond_0
    return-object p1
.end method

.method public addButtonNextToClose(IILandroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->addButtonInner(IILandroid/view/View$OnClickListener;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public varargs addHeaderButton(ILandroid/view/View$OnClickListener;I[Ljava/lang/Object;)Landroid/view/View;
    .locals 6

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/common/SpenExtendTouchTargetLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenExtendTouchTargetLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setId(I)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/spen/R$dimen;->setting_common_title_header_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->mButtonWidth:I

    iget v3, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->mButtonHeight:I

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->addIconButton(Landroid/widget/FrameLayout;III)Landroid/widget/ImageView;

    move-result-object v2

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xf

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget v4, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->mHeaderIconId:I

    if-nez v4, :cond_0

    const/16 v1, 0x14

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    sget-object v1, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout$ButtonPosition;->FIRST:Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout$ButtonPosition;

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    const/16 v5, 0x11

    invoke-virtual {v3, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    sget-object v1, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout$ButtonPosition;->LAST:Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout$ButtonPosition;

    iget v4, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->mHeaderIconId:I

    invoke-virtual {p0, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sdk/pen/setting/common/SpenExtendTouchTargetLayout;

    :goto_0
    invoke-virtual {p0, v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, v1, v0, v4}, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->adjustTouchTargetHeaderButton(Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout$ButtonPosition;Lcom/samsung/android/sdk/pen/setting/common/SpenExtendTouchTargetLayout;Lcom/samsung/android/sdk/pen/setting/common/SpenExtendTouchTargetLayout;)V

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getId()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->mHeaderIconId:I

    sget v1, Lcom/samsung/android/spen/R$drawable;->spen_ripple_effect_drawable:I

    invoke-direct {p0, v2, p1, v1, p2}, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->setIconResource(Landroid/widget/ImageView;IILandroid/view/View$OnClickListener;)V

    invoke-direct {p0, v0, v2, p3, p4}, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->setIconAccessibility(Landroid/view/ViewGroup;Landroid/view/View;I[Ljava/lang/Object;)V

    return-object v2
.end method

.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->mTitleText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->mTitleTextObserver:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->mTitleTextObserver:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->mTitleTextObserver:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->mTitleText:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->mCloseButton:Landroid/view/View;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->mNextButtonOfClose:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getTouchDelegate()Landroid/view/TouchDelegate;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getTouchDelegate()Landroid/view/TouchDelegate;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/setting/common/SpenTouchDelegateComposite;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenTouchDelegateComposite;->close()V

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    :cond_1
    return-void
.end method

.method public onFinishInflate()V
    .locals 4

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    sget v0, Lcom/samsung/android/spen/R$drawable;->note_setting_ic_close:I

    sget v1, Lcom/samsung/android/spen/R$string;->pen_string_close:I

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->mCloseClickListener:Landroid/view/View$OnClickListener;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->addButton(IILandroid/view/View$OnClickListener;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->mCloseButton:Landroid/view/View;

    return-void
.end method

.method public requestCloseButtonAccessibilityEvent(I)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->mCloseButton:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->mCloseButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public setButtonStateChanged(Landroid/view/View;Z)V
    .locals 1

    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->SETTING_IC_ENABLED_COLOR:I

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->SETTING_IC_DISABLED_COLOR:I

    :goto_0
    check-cast p1, Landroid/widget/ImageView;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p2, v0}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_1
    return-void
.end method

.method public setCloseButtonDescription(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->mCloseButton:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->mCloseButton:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilHover;->setHoverText(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setCloseButtonVisibility(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->mCloseButton:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->mCloseButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->mCloseButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v2, 0x8

    if-ne p1, v2, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->mViewStartMargin:I

    :goto_0
    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public setOnCloseButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->mCloseButtonClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setText(I)Landroid/widget/TextView;
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->mTitleText:Landroid/widget/TextView;

    if-nez v0, :cond_1

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/samsung/android/spen/R$color;->setting_title_string_color:I

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0x10

    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->mBaseViewId:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->mHeaderIconId:I

    if-eqz v1, :cond_0

    const/16 v2, 0x11

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText$FontName;->MEDIUM:Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText$FontName;

    const/4 v3, 0x1

    new-array v4, v3, [Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->mTitleText:Landroid/widget/TextView;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v1, v2, v4}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText;->setTypeFace(Landroid/content/Context;Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText$FontName;[Landroid/widget/TextView;)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41800000    # 16.0f

    new-array v3, v3, [Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->mTitleText:Landroid/widget/TextView;

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText;->applyUpToLargeLevel(Landroid/content/Context;F[Landroid/widget/TextView;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->checkTitleTextLine()V

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->mTitleText:Landroid/widget/TextView;

    return-object p1
.end method
