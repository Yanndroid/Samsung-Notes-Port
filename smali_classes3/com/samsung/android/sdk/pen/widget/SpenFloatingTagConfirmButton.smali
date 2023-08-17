.class public Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton$ActionListener;
    }
.end annotation


# static fields
.field private static final SUPPORT_TOOLTIP:Z

.field private static final TAG:Ljava/lang/String; = "FloatingTagButton"


# instance fields
.field public final DELAY_TIME:I

.field public final MESSAGE_WHAT_GONE:I

.field public final MESSAGE_WHAT_HIDE:I

.field public final MESSAGE_WHAT_SHOW:I

.field private mBubbleBottomView:Landroid/widget/ImageView;

.field private mBubbleTopView:Landroid/widget/ImageView;

.field private mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private mIsRTL:Z

.field private mIsShowing:Ljava/lang/Boolean;

.field private mListener:Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton$ActionListener;

.field private mView:Landroid/widget/RelativeLayout;

.field private mWidth:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;->SUPPORT_TOOLTIP:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;->mView:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;->mBubbleTopView:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;->mBubbleBottomView:Landroid/widget/ImageView;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;->mIsShowing:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;->mListener:Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton$ActionListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;->MESSAGE_WHAT_HIDE:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;->MESSAGE_WHAT_SHOW:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;->MESSAGE_WHAT_GONE:I

    const/16 v0, 0xbb8

    iput v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;->DELAY_TIME:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;->mWidth:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;->mHeight:I

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;->mIsRTL:Z

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;->mView:Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;->mBubbleTopView:Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;->mBubbleBottomView:Landroid/widget/ImageView;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;->mIsShowing:Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;->mListener:Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton$ActionListener;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x1

    iput p2, p0, Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;->MESSAGE_WHAT_HIDE:I

    const/4 p2, 0x2

    iput p2, p0, Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;->MESSAGE_WHAT_SHOW:I

    const/4 p2, 0x3

    iput p2, p0, Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;->MESSAGE_WHAT_GONE:I

    const/16 p2, 0xbb8

    iput p2, p0, Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;->DELAY_TIME:I

    const/4 p2, 0x0

    iput p2, p0, Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;->mWidth:I

    iput p2, p0, Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;->mHeight:I

    iput-boolean p2, p0, Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;->mIsRTL:Z

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;->mView:Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;->mBubbleTopView:Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;->mBubbleBottomView:Landroid/widget/ImageView;

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p3, p0, Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;->mIsShowing:Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;->mListener:Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton$ActionListener;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x1

    iput p2, p0, Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;->MESSAGE_WHAT_HIDE:I

    const/4 p2, 0x2

    iput p2, p0, Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;->MESSAGE_WHAT_SHOW:I

    const/4 p2, 0x3

    iput p2, p0, Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;->MESSAGE_WHAT_GONE:I

    const/16 p2, 0xbb8

    iput p2, p0, Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;->DELAY_TIME:I

    const/4 p2, 0x0

    iput p2, p0, Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;->mWidth:I

    iput p2, p0, Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;->mHeight:I

    iput-boolean p2, p0, Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;->mIsRTL:Z

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;Landroid/graphics/RectF;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;->onShow(Landroid/graphics/RectF;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;->click()V

    return-void
.end method

.method private click()V
    .locals 2

    const-string v0, "FloatingTagButton"

    const-string v1, "onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;->showImpl(ZLandroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;->mListener:Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton$ActionListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton$ActionListener;->onConfirmed(Z)V

    :cond_0
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;->mIsRTL:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/spen/R$dimen;->sdk_floating_tag_confirm_bubble_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;->mWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/spen/R$dimen;->sdk_floating_tag_confirm_bubble_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;->mHeight:I

    new-instance v0, Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton$1;-><init>(Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;->mHandler:Landroid/os/Handler;

    sget v0, Lcom/samsung/android/spen/R$layout;->sdk_floating_tag_confirm_bubble_layout:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/RelativeLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;->mView:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;->mView:Landroid/widget/RelativeLayout;

    sget v0, Lcom/samsung/android/spen/R$id;->tag_confirm_top_button:I

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;->mBubbleTopView:Landroid/widget/ImageView;

    sget-boolean v0, Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;->SUPPORT_TOOLTIP:Z

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/samsung/android/spen/R$string;->tag_confirm_button_description:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setTooltipText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;->mBubbleTopView:Landroid/widget/ImageView;

    new-instance v1, Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton$2;-><init>(Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;->mView:Landroid/widget/RelativeLayout;

    sget v1, Lcom/samsung/android/spen/R$id;->tag_confirm_bottom_button:I

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;->mBubbleBottomView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/samsung/android/spen/R$string;->tag_confirm_button_description:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTooltipText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/samsung/android/spen/R$string;->tag_confirm_button_description:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;->mBubbleBottomView:Landroid/widget/ImageView;

    new-instance v0, Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton$3;-><init>(Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method private onShow(Landroid/graphics/RectF;)V
    .locals 5

    if-nez p1, :cond_0

    const-string p1, "FloatingTagButton"

    const-string v0, "onShow : textPosition is null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;->mHeight:I

    int-to-float v2, v1

    cmpl-float v2, v0, v2

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-lez v2, :cond_1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setY(F)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;->mBubbleTopView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;->mBubbleBottomView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setY(F)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;->mBubbleTopView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;->mBubbleBottomView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;->mIsRTL:Z

    iget p1, p1, Landroid/graphics/RectF;->right:F

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;->mWidth:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    :cond_2
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setX(F)V

    invoke-virtual {p0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;->mHandler:Landroid/os/Handler;

    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;->mView:Landroid/widget/RelativeLayout;

    return-void
.end method

.method public isShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;->mIsShowing:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public setListener(Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton$ActionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;->mListener:Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton$ActionListener;

    return-void
.end method

.method public show(ZLandroid/graphics/RectF;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;->mIsShowing:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez p1, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;->showImpl(ZLandroid/graphics/RectF;)V

    :cond_2
    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;->mListener:Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton$ActionListener;

    if-eqz p1, :cond_3

    invoke-interface {p1, v1}, Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton$ActionListener;->onConfirmed(Z)V

    :cond_3
    return-void
.end method

.method public showImpl(ZLandroid/graphics/RectF;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showImpl :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FloatingTagButton"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;->mView:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    if-eqz p1, :cond_2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;->mIsShowing:Ljava/lang/Boolean;

    return-void
.end method
