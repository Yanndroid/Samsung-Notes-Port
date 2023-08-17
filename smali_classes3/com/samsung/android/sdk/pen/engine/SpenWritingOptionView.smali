.class public Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$WritingOptionState;,
        Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenWritingOptionView"


# instance fields
.field private final mDVFSButton:Landroid/widget/Button;

.field private mDVFSState:Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$WritingOptionState;

.field private final mFrontBufferRenderingButton:Landroid/widget/Button;

.field private mFrontBufferRenderingState:Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$WritingOptionState;

.field private mIsGestureEnable:Z

.field private mListener:Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$Listener;

.field private final mMeasureButton:Landroid/widget/Button;

.field private final mPalmRejectionButton:Landroid/widget/Button;

.field private mPalmRejectionEnabled:Z

.field private mPreTouchPosition:Landroid/graphics/Point;

.field private final mPredictionButton:Landroid/widget/Button;

.field private mPredictionState:Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$WritingOptionState;

.field private mTouchOffset:Landroid/graphics/Point;

.field private final mTouchOffsetButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$WritingOptionState;Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$WritingOptionState;Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$WritingOptionState;Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$Listener;)V
    .locals 5

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;->mListener:Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$Listener;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;->mIsGestureEnable:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;->mPalmRejectionEnabled:Z

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;->mTouchOffset:Landroid/graphics/Point;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;->mPreTouchPosition:Landroid/graphics/Point;

    iput-object p5, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;->mListener:Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$Listener;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;->inflateViews(Landroid/content/Context;)V

    sget p1, Lcom/samsung/android/spen/R$id;->writingoption_fbr_button:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;->mFrontBufferRenderingButton:Landroid/widget/Button;

    sget p5, Lcom/samsung/android/spen/R$id;->writingoption_prediction_button:I

    invoke-virtual {p0, p5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/Button;

    iput-object p5, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;->mPredictionButton:Landroid/widget/Button;

    sget v1, Lcom/samsung/android/spen/R$id;->writingoption_dvfs_button:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;->mDVFSButton:Landroid/widget/Button;

    sget v2, Lcom/samsung/android/spen/R$id;->writingoption_measure_button:I

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;->mMeasureButton:Landroid/widget/Button;

    sget v3, Lcom/samsung/android/spen/R$id;->writingoption_palm_rejection_button:I

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;->mPalmRejectionButton:Landroid/widget/Button;

    sget v4, Lcom/samsung/android/spen/R$id;->writingoption_offset_button:I

    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;->mTouchOffsetButton:Landroid/widget/Button;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;->mFrontBufferRenderingState:Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$WritingOptionState;

    iput-object p3, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;->mPredictionState:Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$WritingOptionState;

    iput-object p4, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;->mDVFSState:Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$WritingOptionState;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;->setFrontBufferRenderingButtonText()V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;->setDVFSButtonText()V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;->setMeasureButtonText()V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;->setPalmRejectionButtonText()V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;->setTouchOffsetButtonText()V

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;->mFrontBufferRenderingState:Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$WritingOptionState;

    sget-object p3, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$WritingOptionState;->Unsupported:Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$WritingOptionState;

    const/4 p4, 0x0

    if-ne p2, p3, :cond_0

    invoke-virtual {p1, p4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    new-instance p2, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$1;-><init>(Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;->mPredictionState:Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$WritingOptionState;

    if-ne p1, p3, :cond_1

    invoke-virtual {p5, p4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    :cond_1
    invoke-virtual {p5, v0}, Landroid/widget/Button;->setEnabled(Z)V

    new-instance p1, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$2;-><init>(Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;)V

    invoke-virtual {p5, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;->mDVFSState:Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$WritingOptionState;

    if-ne p1, p3, :cond_2

    invoke-virtual {v1, p4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2

    :cond_2
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    new-instance p1, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$3;

    invoke-direct {p1, p0}, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$3;-><init>(Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;)V

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_2
    new-instance p1, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$4;

    invoke-direct {p1, p0}, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$4;-><init>(Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;)V

    invoke-virtual {v2, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$5;

    invoke-direct {p1, p0}, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$5;-><init>(Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;)V

    invoke-virtual {v3, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$6;

    invoke-direct {p1, p0}, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$6;-><init>(Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;)V

    invoke-virtual {v4, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Lcom/samsung/android/spen/R$id;->writingoption_close_button:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance p2, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$7;

    invoke-direct {p2, p0, p0}, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$7;-><init>(Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;Landroid/widget/LinearLayout;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;)Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$WritingOptionState;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;->mFrontBufferRenderingState:Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$WritingOptionState;

    return-object p0
.end method

.method public static synthetic access$002(Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$WritingOptionState;)Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$WritingOptionState;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;->mFrontBufferRenderingState:Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$WritingOptionState;

    return-object p1
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;->setFrontBufferRenderingButtonText()V

    return-void
.end method

.method public static synthetic access$1000(Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;->setPalmRejectionButtonText()V

    return-void
.end method

.method public static synthetic access$1100(Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;->showTouchOffsetDialog()V

    return-void
.end method

.method public static synthetic access$1200(Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;)Landroid/graphics/Point;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;->mPreTouchPosition:Landroid/graphics/Point;

    return-object p0
.end method

.method public static synthetic access$1300(Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;)Landroid/graphics/Point;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;->mTouchOffset:Landroid/graphics/Point;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;)Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$Listener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;->mListener:Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$Listener;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;)Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$WritingOptionState;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;->mPredictionState:Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$WritingOptionState;

    return-object p0
.end method

.method public static synthetic access$302(Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$WritingOptionState;)Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$WritingOptionState;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;->mPredictionState:Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$WritingOptionState;

    return-object p1
.end method

.method public static synthetic access$400(Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;->setPredictionButtonText()V

    return-void
.end method

.method public static synthetic access$500(Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;)Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$WritingOptionState;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;->mDVFSState:Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$WritingOptionState;

    return-object p0
.end method

.method public static synthetic access$502(Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$WritingOptionState;)Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$WritingOptionState;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;->mDVFSState:Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$WritingOptionState;

    return-object p1
.end method

.method public static synthetic access$600(Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;->setDVFSButtonText()V

    return-void
.end method

.method public static synthetic access$700(Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;->mIsGestureEnable:Z

    return p0
.end method

.method public static synthetic access$702(Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;->mIsGestureEnable:Z

    return p1
.end method

.method public static synthetic access$800(Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;->setMeasureButtonText()V

    return-void
.end method

.method public static synthetic access$900(Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;->mPalmRejectionEnabled:Z

    return p0
.end method

.method public static synthetic access$902(Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;->mPalmRejectionEnabled:Z

    return p1
.end method

.method private inflateViews(Landroid/content/Context;)V
    .locals 1

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    sget v0, Lcom/samsung/android/spen/R$layout;->writing_option_view:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method private setDVFSButtonText()V
    .locals 2

    sget-object v0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$10;->$SwitchMap$com$samsung$android$sdk$pen$engine$SpenWritingOptionView$WritingOptionState:[I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;->mDVFSState:Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$WritingOptionState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;->mDVFSButton:Landroid/widget/Button;

    const-string v1, "DVFS is Unsupported"

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;->mDVFSButton:Landroid/widget/Button;

    const-string v1, "DVFS OFF"

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;->mDVFSButton:Landroid/widget/Button;

    const-string v1, "DVFS ON"

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method private setFrontBufferRenderingButtonText()V
    .locals 2

    sget-object v0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$10;->$SwitchMap$com$samsung$android$sdk$pen$engine$SpenWritingOptionView$WritingOptionState:[I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;->mFrontBufferRenderingState:Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$WritingOptionState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;->mFrontBufferRenderingButton:Landroid/widget/Button;

    const-string v1, "Front Buffer Rendering is Unsupported"

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;->mFrontBufferRenderingButton:Landroid/widget/Button;

    const-string v1, "Front Buffer Rendering OFF"

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;->mFrontBufferRenderingButton:Landroid/widget/Button;

    const-string v1, "Front Buffer Rendering ON"

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method private setMeasureButtonText()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;->mIsGestureEnable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;->mMeasureButton:Landroid/widget/Button;

    const-string v1, "Measure mode off"

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;->mMeasureButton:Landroid/widget/Button;

    const-string v1, "Measure mode on"

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setPalmRejectionButtonText()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;->mPalmRejectionEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;->mPalmRejectionButton:Landroid/widget/Button;

    const-string v1, "Palm rejection on"

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;->mPalmRejectionButton:Landroid/widget/Button;

    const-string v1, "Palm rejection off"

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setPredictionButtonText()V
    .locals 2

    sget-object v0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$10;->$SwitchMap$com$samsung$android$sdk$pen$engine$SpenWritingOptionView$WritingOptionState:[I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;->mPredictionState:Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$WritingOptionState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;->mPredictionButton:Landroid/widget/Button;

    const-string v1, "Prediction is Unsupported"

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;->mPredictionButton:Landroid/widget/Button;

    const-string v1, "Prediction OFF"

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;->mPredictionButton:Landroid/widget/Button;

    const-string v1, "Prediction ON"

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method private setTouchOffsetButtonText()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;->mTouchOffsetButton:Landroid/widget/Button;

    const-string v1, "Adjust touch offset"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showTouchOffsetDialog()V
    .locals 8

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Input offset X and Y"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$8;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$8;-><init>(Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/samsung/android/spen/R$layout;->writing_option_touchoffset:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/samsung/android/spen/R$id;->offsetX:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/NumberPicker;

    invoke-virtual {v3, v1}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/NumberPicker;->setMinValue(I)V

    const/16 v5, 0x14

    invoke-virtual {v3, v5}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;->mPreTouchPosition:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    invoke-virtual {v3, v7}, Landroid/widget/NumberPicker;->setValue(I)V

    sget v7, Lcom/samsung/android/spen/R$id;->offsetY:I

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/NumberPicker;

    invoke-virtual {v7, v1}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    invoke-virtual {v7, v4}, Landroid/widget/NumberPicker;->setMinValue(I)V

    invoke-virtual {v7, v5}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    invoke-virtual {v7, v6}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;->mPreTouchPosition:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v7, v4}, Landroid/widget/NumberPicker;->setValue(I)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$9;

    invoke-direct {v2, p0, v3, v7, v1}, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$9;-><init>(Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;Landroid/widget/NumberPicker;Landroid/widget/NumberPicker;Landroid/widget/NumberPicker$Formatter;)V

    const-string v1, "OK"

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;->mTouchOffset:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    if-nez v1, :cond_0

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string v0, "SpenWritingOptionView"

    const-string v1, "It just use to measure latency!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;->mTouchOffset:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    const/4 p1, 0x1

    return p1
.end method

.method public setParent(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method
