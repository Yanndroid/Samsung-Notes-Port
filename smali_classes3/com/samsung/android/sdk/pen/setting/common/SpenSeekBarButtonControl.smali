.class public Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl$RptUpdater;,
        Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl$OnActionListener;,
        Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl$ButtonType;
    }
.end annotation


# static fields
.field private static final REP_DELAY:I = 0x14

.field private static TAG:Ljava/lang/String; = "SpenSeekBarButtonControl"


# instance fields
.field private mActionListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl$OnActionListener;

.field private mAutoDecrement:Z

.field private mAutoIncrement:Z

.field private final mButtonClickListener:Landroid/view/View$OnClickListener;

.field private final mButtonLongClickListener:Landroid/view/View$OnLongClickListener;

.field private final mButtonOnKeyListener:Landroid/view/View$OnKeyListener;

.field private final mButtonOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mContext:Landroid/content/Context;

.field private mDisallowInterceptGroup:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mFactor:I

.field private mMinusButton:Landroid/widget/ImageButton;

.field private mPlusButton:Landroid/widget/ImageButton;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mUserEvent:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->mAutoDecrement:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->mAutoIncrement:Z

    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->mFactor:I

    new-instance v1, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl$1;-><init>(Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->mButtonClickListener:Landroid/view/View$OnClickListener;

    new-instance v1, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl$2;-><init>(Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->mButtonLongClickListener:Landroid/view/View$OnLongClickListener;

    new-instance v1, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl$3;-><init>(Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->mButtonOnTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v1, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl$4;-><init>(Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->mButtonOnKeyListener:Landroid/view/View$OnKeyListener;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->mActionListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl$OnActionListener;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->setUserEvent(Z)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->mDisallowInterceptGroup:Ljava/util/List;

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;Landroid/view/View;)Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl$ButtonType;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->getButtonType(Landroid/view/View;)Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl$ButtonType;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->mFactor:I

    return p0
.end method

.method public static synthetic access$1000(Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->mAutoIncrement:Z

    return p0
.end method

.method public static synthetic access$1100(Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->mAutoDecrement:Z

    return p0
.end method

.method public static synthetic access$200(Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;)Landroid/widget/SeekBar;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->mSeekBar:Landroid/widget/SeekBar;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;)Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl$OnActionListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->mActionListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl$OnActionListener;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;Landroid/view/View;Z)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->setAutoFlag(Landroid/view/View;Z)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$500(Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->getAutoFlag(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$600(Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->requestDisallowTouch()V

    return-void
.end method

.method public static synthetic access$700(Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->stopAutoUpdate(Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic access$800(Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;Landroid/view/View;FF)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->isOutOfBounds(Landroid/view/View;FF)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$900(Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->updateAutoSeekBar(Landroid/view/View;)V

    return-void
.end method

.method private getAutoFlag(Landroid/view/View;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->getButtonType(Landroid/view/View;)Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl$ButtonType;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl$ButtonType;->PLUS:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl$ButtonType;

    if-ne p1, v0, :cond_0

    iget-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->mAutoIncrement:Z

    return p1

    :cond_0
    iget-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->mAutoDecrement:Z

    return p1
.end method

.method private getButtonType(Landroid/view/View;)Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl$ButtonType;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl$ButtonType;

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl$ButtonType;->UNKNOWN:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl$ButtonType;

    return-object p1
.end method

.method private getHoverDescription(Landroid/view/View;)Ljava/lang/CharSequence;
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method private initButton(Landroid/widget/ImageButton;ILandroid/content/res/ColorStateList;ILcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl$ButtonType;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setImageResource(I)V

    invoke-virtual {p1, p3}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->setHoverDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, p5}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method private initButtonListener(Landroid/widget/ImageButton;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->mButtonLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->mButtonOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->mButtonOnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_0
    return-void
.end method

.method private isOutOfBounds(Landroid/view/View;FF)Z
    .locals 3

    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, p2, p3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private requestDisallowTouch()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->mDisallowInterceptGroup:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->mDisallowInterceptGroup:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private setAutoFlag(Landroid/view/View;Z)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->getButtonType(Landroid/view/View;)Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl$ButtonType;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl$ButtonType;->UNKNOWN:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl$ButtonType;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl$ButtonType;->PLUS:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl$ButtonType;

    if-ne p1, v0, :cond_1

    iput-boolean p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->mAutoIncrement:Z

    goto :goto_0

    :cond_1
    iput-boolean p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->mAutoDecrement:Z

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private setButtonState(ZZLandroid/widget/ImageButton;)V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0xff

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x66

    :cond_1
    :goto_0
    invoke-virtual {p3, v1}, Landroid/widget/ImageButton;->setImageAlpha(I)V

    invoke-virtual {p3, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    return-void
.end method

.method private setHoverDescription(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private stopAutoUpdate(Landroid/view/View;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->setAutoFlag(Landroid/view/View;Z)Z

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->updateAutoSeekBar(Landroid/view/View;)V

    if-eqz p2, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/View;->playSoundEffect(I)V

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->mActionListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl$OnActionListener;

    if-eqz p2, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->getButtonType(Landroid/view/View;)Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl$ButtonType;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl$OnActionListener;->onStopSizeButtonLongClick(Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl$ButtonType;)V

    :cond_1
    return-void
.end method

.method private updateAutoSeekBar(Landroid/view/View;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->getButtonType(Landroid/view/View;)Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl$ButtonType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl$ButtonType;->MINUS:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl$ButtonType;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    invoke-virtual {p1, v3}, Landroid/view/View;->setSelected(Z)V

    if-eqz v2, :cond_2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->getHoverDescription(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->setHoverDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->setHoverDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public addDisallowTouchInterceptGroup(Landroid/view/ViewGroup;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->mDisallowInterceptGroup:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public clearDisallowTouchInterceptGroup()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->mDisallowInterceptGroup:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->mDisallowInterceptGroup:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->mDisallowInterceptGroup:Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->mActionListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl$OnActionListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->mPlusButton:Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->mMinusButton:Landroid/widget/ImageButton;

    return-void
.end method

.method public initControlButton(Landroid/widget/SeekBar;Landroid/widget/ImageButton;ILandroid/widget/ImageButton;I)V
    .locals 7

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->mSeekBar:Landroid/widget/SeekBar;

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->mContext:Landroid/content/Context;

    sget v0, Lcom/samsung/android/spen/R$color;->seek_bar_button_color:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->mMinusButton:Landroid/widget/ImageButton;

    sget v3, Lcom/samsung/android/spen/R$drawable;->minus:I

    sget-object v6, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl$ButtonType;->MINUS:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl$ButtonType;

    move-object v1, p0

    move-object v2, p2

    move-object v4, p1

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->initButton(Landroid/widget/ImageButton;ILandroid/content/res/ColorStateList;ILcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl$ButtonType;)V

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->mMinusButton:Landroid/widget/ImageButton;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->mMinusButton:Landroid/widget/ImageButton;

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->initButtonListener(Landroid/widget/ImageButton;)V

    iput-object p4, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->mPlusButton:Landroid/widget/ImageButton;

    sget v3, Lcom/samsung/android/spen/R$drawable;->plus:I

    sget-object v6, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl$ButtonType;->PLUS:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl$ButtonType;

    move-object v2, p4

    move v5, p5

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->initButton(Landroid/widget/ImageButton;ILandroid/content/res/ColorStateList;ILcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl$ButtonType;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->mPlusButton:Landroid/widget/ImageButton;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->initButtonListener(Landroid/widget/ImageButton;)V

    return-void
.end method

.method public initControlButton(Landroid/widget/SeekBar;Landroid/widget/ImageButton;Landroid/widget/ImageButton;)V
    .locals 6

    sget v3, Lcom/samsung/android/spen/R$string;->pen_string_decrease:I

    sget v5, Lcom/samsung/android/spen/R$string;->pen_string_increase:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->initControlButton(Landroid/widget/SeekBar;Landroid/widget/ImageButton;ILandroid/widget/ImageButton;I)V

    return-void
.end method

.method public isAutoChanged()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->mAutoDecrement:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->mAutoIncrement:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isUserEvent()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->mUserEvent:Z

    return v0
.end method

.method public setActionListener(Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl$OnActionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->mActionListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl$OnActionListener;

    return-void
.end method

.method public setFactorValue(I)V
    .locals 1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->mFactor:I

    return-void
.end method

.method public setUserEvent(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->mUserEvent:Z

    return-void
.end method

.method public updateButtonState()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iget-boolean v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->mAutoIncrement:Z

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->mPlusButton:Landroid/widget/ImageButton;

    invoke-direct {p0, v0, v1, v4}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->setButtonState(ZZLandroid/widget/ImageButton;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->mAutoDecrement:Z

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->mMinusButton:Landroid/widget/ImageButton;

    invoke-direct {p0, v2, v0, v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->setButtonState(ZZLandroid/widget/ImageButton;)V

    return-void
.end method
