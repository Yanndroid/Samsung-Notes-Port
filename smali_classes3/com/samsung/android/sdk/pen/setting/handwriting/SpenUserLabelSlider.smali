.class Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;
.super Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$OnLabelListener;
    }
.end annotation


# static fields
.field private static final STATE_HOLDING_MIN_TIME:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "SpenUserLabelSlider"


# instance fields
.field private mChangedListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnChangedListener;

.field private mDelayHandler:Landroid/os/Handler;

.field private mIsWaitingToHide:Z

.field private mIsWorkingLabelRunnable:Z

.field private mLabelDelayRunnable:Ljava/lang/Runnable;

.field private mLabelFormat:Ljava/lang/String;

.field private mLabelListener:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$OnLabelListener;

.field private mLabelState:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$OnLabelListener$LabelState;

.field private mMinusButtonListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderButtonListener;

.field private mOnChangedListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnChangedListener;

.field private mOnMinusButtonListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderButtonListener;

.field private mOnPlusButtonListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderButtonListener;

.field private mOnSliderTrackListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderTrackListener;

.field private mPlusButtonListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderButtonListener;

.field private mTrackListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderTrackListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;-><init>(Landroid/content/Context;Z)V

    new-instance p1, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$1;-><init>(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->mOnChangedListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnChangedListener;

    new-instance p1, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$2;-><init>(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->mOnPlusButtonListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderButtonListener;

    new-instance p1, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$3;

    invoke-direct {p1, p0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$3;-><init>(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->mOnMinusButtonListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderButtonListener;

    new-instance p1, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$4;

    invoke-direct {p1, p0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$4;-><init>(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->mOnSliderTrackListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderTrackListener;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->construct()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;-><init>(Landroid/content/Context;ZI)V

    new-instance p1, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$1;-><init>(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->mOnChangedListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnChangedListener;

    new-instance p1, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$2;-><init>(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->mOnPlusButtonListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderButtonListener;

    new-instance p1, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$3;

    invoke-direct {p1, p0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$3;-><init>(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->mOnMinusButtonListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderButtonListener;

    new-instance p1, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$4;

    invoke-direct {p1, p0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$4;-><init>(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->mOnSliderTrackListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderTrackListener;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->construct()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;-><init>(Landroid/content/Context;ZII)V

    new-instance p1, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$1;-><init>(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->mOnChangedListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnChangedListener;

    new-instance p1, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$2;-><init>(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->mOnPlusButtonListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderButtonListener;

    new-instance p1, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$3;

    invoke-direct {p1, p0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$3;-><init>(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->mOnMinusButtonListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderButtonListener;

    new-instance p1, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$4;

    invoke-direct {p1, p0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$4;-><init>(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->mOnSliderTrackListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderTrackListener;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->construct()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZIIII)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;-><init>(Landroid/content/Context;ZIIII)V

    new-instance p1, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$1;-><init>(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->mOnChangedListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnChangedListener;

    new-instance p1, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$2;-><init>(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->mOnPlusButtonListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderButtonListener;

    new-instance p1, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$3;

    invoke-direct {p1, p0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$3;-><init>(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->mOnMinusButtonListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderButtonListener;

    new-instance p1, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$4;

    invoke-direct {p1, p0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$4;-><init>(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->mOnSliderTrackListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderTrackListener;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->construct()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;-><init>(Landroid/content/Context;ZIIIII)V

    new-instance p1, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$1;-><init>(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->mOnChangedListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnChangedListener;

    new-instance p1, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$2;-><init>(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->mOnPlusButtonListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderButtonListener;

    new-instance p1, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$3;

    invoke-direct {p1, p0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$3;-><init>(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->mOnMinusButtonListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderButtonListener;

    new-instance p1, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$4;

    invoke-direct {p1, p0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$4;-><init>(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->mOnSliderTrackListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderTrackListener;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->construct()V

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;)Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$OnLabelListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->mLabelListener:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$OnLabelListener;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;)Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$OnLabelListener$LabelState;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->mLabelState:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$OnLabelListener$LabelState;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;)Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderButtonListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->mMinusButtonListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderButtonListener;

    return-object p0
.end method

.method public static synthetic access$1100(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;)I
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->getValue()I

    move-result p0

    return p0
.end method

.method public static synthetic access$1200(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;)I
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->getValue()I

    move-result p0

    return p0
.end method

.method public static synthetic access$1300(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;)I
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->getValue()I

    move-result p0

    return p0
.end method

.method public static synthetic access$1400(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;)Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderTrackListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->mTrackListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderTrackListener;

    return-object p0
.end method

.method public static synthetic access$1500(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;)I
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->getValue()I

    move-result p0

    return p0
.end method

.method public static synthetic access$1600(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->mIsWaitingToHide:Z

    return p0
.end method

.method public static synthetic access$1702(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->mIsWorkingLabelRunnable:Z

    return p1
.end method

.method public static synthetic access$1800(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;)I
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->getValue()I

    move-result p0

    return p0
.end method

.method public static synthetic access$200(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$OnLabelListener$LabelState;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->setLabelStateChange(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$OnLabelListener$LabelState;I)V

    return-void
.end method

.method public static synthetic access$300(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->setLabelTextChange(I)V

    return-void
.end method

.method public static synthetic access$400(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;)Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnChangedListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->mChangedListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnChangedListener;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;)I
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->getValue()I

    move-result p0

    return p0
.end method

.method public static synthetic access$600(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;)Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderButtonListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->mPlusButtonListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderButtonListener;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;)I
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->getValue()I

    move-result p0

    return p0
.end method

.method public static synthetic access$800(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;)I
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->getValue()I

    move-result p0

    return p0
.end method

.method public static synthetic access$900(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;)I
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->getValue()I

    move-result p0

    return p0
.end method

.method private closeStateRunnable()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->mIsWorkingLabelRunnable:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->mIsWaitingToHide:Z

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->mDelayHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->mLabelDelayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->mDelayHandler:Landroid/os/Handler;

    :cond_0
    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->mLabelDelayRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private construct()V
    .locals 1

    const-string v0, "%d"

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->mLabelFormat:Ljava/lang/String;

    sget-object v0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$OnLabelListener$LabelState;->HIDE:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$OnLabelListener$LabelState;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->mLabelState:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$OnLabelListener$LabelState;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->mOnChangedListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnChangedListener;

    invoke-super {p0, v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->setOnChangedListener(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnChangedListener;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->mOnPlusButtonListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderButtonListener;

    invoke-super {p0, v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->setOnPlusButtonActionListener(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderButtonListener;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->mOnMinusButtonListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderButtonListener;

    invoke-super {p0, v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->setOnMinusButtonActionListener(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderButtonListener;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->mOnSliderTrackListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderTrackListener;

    invoke-super {p0, v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->setOnTrackListener(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderTrackListener;)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->initStateRunnable()V

    return-void
.end method

.method private getLabelText(I)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->mLabelFormat:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private initStateRunnable()V
    .locals 1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->mDelayHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$5;-><init>(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->mLabelDelayRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->mIsWorkingLabelRunnable:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->mIsWaitingToHide:Z

    return-void
.end method

.method private notifyLabelChanged(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyLabelChanged("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->mLabelState:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$OnLabelListener$LabelState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "])"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenUserLabelSlider"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->mLabelListener:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$OnLabelListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$OnLabelListener;->onLabelChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private notifyLabelStateChanged(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$OnLabelListener$LabelState;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyLabelStateChanged("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "])"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenUserLabelSlider"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->mLabelListener:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$OnLabelListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$OnLabelListener;->onLabelStateChanged(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$OnLabelListener$LabelState;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setLabelStateChange(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$OnLabelListener$LabelState;I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLabelStateChange() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " value("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenUserLabelSlider"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->mLabelListener:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$OnLabelListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$OnLabelListener$LabelState;->SHOW:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$OnLabelListener$LabelState;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->startLabelDelayRunner()V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "workingDelay="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->mIsWorkingLabelRunnable:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " waitingToHide="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->mIsWaitingToHide:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->mIsWorkingLabelRunnable:Z

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->mIsWaitingToHide:Z

    return-void

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->mIsWaitingToHide:Z

    :goto_0
    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->mLabelState:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$OnLabelListener$LabelState;

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->getLabelText(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->notifyLabelStateChanged(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$OnLabelListener$LabelState;Ljava/lang/String;)V

    return-void
.end method

.method private setLabelTextChange(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLabelTextChange() state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->mLabelState:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$OnLabelListener$LabelState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " value("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenUserLabelSlider"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->mLabelListener:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$OnLabelListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->mLabelState:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$OnLabelListener$LabelState;

    sget-object v1, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$OnLabelListener$LabelState;->HIDE:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$OnLabelListener$LabelState;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->getLabelText(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->notifyLabelChanged(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->startLabelDelayRunner()V

    :cond_1
    :goto_0
    return-void
.end method

.method private startLabelDelayRunner()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startLabelDelayRunner() workingDelay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->mIsWorkingLabelRunnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenUserLabelSlider"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->mDelayHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->mIsWorkingLabelRunnable:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->mLabelDelayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->mDelayHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->mLabelDelayRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->mIsWorkingLabelRunnable:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->closeStateRunnable()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->mLabelListener:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$OnLabelListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->mChangedListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnChangedListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->mPlusButtonListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderButtonListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->mMinusButtonListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderButtonListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->mTrackListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderTrackListener;

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->close()V

    return-void
.end method

.method public setLabelFormat(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->setLabelFormat(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->mLabelFormat:Ljava/lang/String;

    return-void
.end method

.method public setOnChangedListener(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->mChangedListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnChangedListener;

    return-void
.end method

.method public setOnLabelListener(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$OnLabelListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->mLabelListener:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$OnLabelListener;

    return-void
.end method

.method public setOnMinusButtonActionListener(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderButtonListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->mMinusButtonListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderButtonListener;

    return-void
.end method

.method public setOnPlusButtonActionListener(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderButtonListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->mPlusButtonListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderButtonListener;

    return-void
.end method

.method public setOnTrackListener(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderTrackListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->mTrackListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderTrackListener;

    return-void
.end method
