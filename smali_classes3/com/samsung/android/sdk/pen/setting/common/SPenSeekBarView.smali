.class public Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$SPenSeekBarChangeListner;,
        Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$RptUpdater;
    }
.end annotation


# static fields
.field private static final PEN_ALPHA_MAX:I = 0x63

.field private static final REMOVER_PROGRESS_MAX:I = 0x9

.field private static final REP_DELAY:I = 0x14

.field private static final SEEKBAR_COLOR:I = -0xb95b2

.field public static final SPEN_SEEKBAR_TYPE_ALPHA:I = 0x0

.field public static final SPEN_SEEKBAR_TYPE_DENSITY:I = 0x1

.field public static final SPEN_SEEKBAR_TYPE_REMOVER:I = -0x3

.field public static final SPEN_SEEKBAR_TYPE_SIZE:I = -0x1

.field private static TAG:Ljava/lang/String; = "SPenSeekBarView"


# instance fields
.field private final BUTTON_TYPE_MINUS:I

.field private final BUTTON_TYPE_PLUS:I

.field private mAutoDecrement:Z

.field private mAutoIncrement:Z

.field private final mButtonClickListener:Landroid/view/View$OnClickListener;

.field private final mButtonLongClickListener:Landroid/view/View$OnLongClickListener;

.field private final mButtonOnKeyListener:Landroid/view/View$OnKeyListener;

.field private final mButtonOnTouchListener:Landroid/view/View$OnTouchListener;

.field public mContext:Landroid/content/Context;

.field private mIsEraser:Z

.field private mMinusButton:Landroid/widget/ImageButton;

.field private mPenAlpha:I

.field private mPenAttributeTextView:Landroid/widget/TextView;

.field private mPenSeekbarTextView:Landroid/widget/TextView;

.field private mPlusButton:Landroid/widget/ImageButton;

.field private mSPenSeekBarChangeListner:Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$SPenSeekBarChangeListner;

.field public mSeekBar:Landroid/widget/SeekBar;

.field private mSeekBarAnimation:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarAnimation;

.field private final mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mSeekBarColorControl:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;

.field private final mSeekBarKeyListener:Landroid/view/View$OnKeyListener;

.field private mSeekbarType:I

.field private mUserEvent:Z

.field private seekbarLayout:Landroid/widget/RelativeLayout;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;FIZ)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mSeekbarType:I

    iput-boolean p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mAutoDecrement:Z

    iput-boolean p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mAutoIncrement:Z

    iput-boolean p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mUserEvent:Z

    iput-boolean p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mIsEraser:Z

    const/16 p2, 0x64

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mPenAlpha:I

    const/4 p2, 0x1

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->BUTTON_TYPE_MINUS:I

    const/4 p2, 0x2

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->BUTTON_TYPE_PLUS:I

    new-instance p2, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$1;-><init>(Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;)V

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    new-instance p2, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$3;

    invoke-direct {p2, p0}, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$3;-><init>(Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;)V

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mButtonClickListener:Landroid/view/View$OnClickListener;

    new-instance p2, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$4;

    invoke-direct {p2, p0}, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$4;-><init>(Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;)V

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mButtonLongClickListener:Landroid/view/View$OnLongClickListener;

    new-instance p2, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$5;

    invoke-direct {p2, p0}, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$5;-><init>(Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;)V

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mButtonOnTouchListener:Landroid/view/View$OnTouchListener;

    new-instance p2, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$6;

    invoke-direct {p2, p0}, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$6;-><init>(Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;)V

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mButtonOnKeyListener:Landroid/view/View$OnKeyListener;

    new-instance p2, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$7;

    invoke-direct {p2, p0}, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$7;-><init>(Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;)V

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mSeekBarKeyListener:Landroid/view/View$OnKeyListener;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mContext:Landroid/content/Context;

    iput p3, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mSeekbarType:I

    invoke-direct {p0, p1, p4}, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->initView(Landroid/content/Context;Z)V

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;)Landroid/widget/SeekBar$OnSeekBarChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;)Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$SPenSeekBarChangeListner;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mSPenSeekBarChangeListner:Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$SPenSeekBarChangeListner;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mPenAlpha:I

    return p0
.end method

.method public static synthetic access$1002(Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mPenAlpha:I

    return p1
.end method

.method public static synthetic access$1100(Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mIsEraser:Z

    return p0
.end method

.method public static synthetic access$1200(Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->setButtonEnabled()V

    return-void
.end method

.method public static synthetic access$1300(Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;Landroid/view/View;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->getButtonType(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public static synthetic access$1400(Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;Landroid/view/View;Z)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->setAutoFlag(Landroid/view/View;Z)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$1500(Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->getAutoFlag(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$1600(Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->updateAutoSeekBar(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic access$1700(Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;Z)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->updateSeekBarByKey(Z)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$200(Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mSeekbarType:I

    return p0
.end method

.method public static synthetic access$300(Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->updatePenSeekBarTextViewPos()V

    return-void
.end method

.method public static synthetic access$400(Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mPenAttributeTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mPenSeekbarTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;)Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->seekbarLayout:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mUserEvent:Z

    return p0
.end method

.method public static synthetic access$702(Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mUserEvent:Z

    return p1
.end method

.method public static synthetic access$800(Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mAutoDecrement:Z

    return p0
.end method

.method public static synthetic access$900(Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mAutoIncrement:Z

    return p0
.end method

.method private getAutoFlag(Landroid/view/View;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->getButtonType(Landroid/view/View;)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mAutoIncrement:Z

    return p1

    :cond_0
    iget-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mAutoDecrement:Z

    return p1
.end method

.method private getButtonType(Landroid/view/View;)I
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private getHoverDescription(Landroid/view/View;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilHover;->getHoverText(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method private initButton(Landroid/widget/ImageButton;ILandroid/content/res/ColorStateList;II)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setImageResource(I)V

    invoke-virtual {p1, p3}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->setHoverDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method private initView(Landroid/content/Context;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->seekbarLayout(Landroid/content/Context;Z)I

    move-result p1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->setSeekbarListener()V

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p2, p1}, Landroid/widget/SeekBar;->setMax(I)V

    :cond_0
    return-void
.end method

.method private penSeekbar(ZLandroid/graphics/drawable/Drawable;)Landroid/widget/SeekBar;
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->seekbarLayout:Landroid/widget/RelativeLayout;

    sget v1, Lcom/samsung/android/spen/R$id;->seek_bar:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    new-instance v1, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;

    invoke-direct {v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mSeekBarColorControl:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    move-object v2, v0

    move v4, p1

    move-object v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->initSeekBar(Landroid/widget/SeekBar;Landroid/content/Context;ZLandroid/graphics/drawable/Drawable;F)V

    new-instance p1, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarAnimation;

    invoke-direct {p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarAnimation;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mSeekBarAnimation:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarAnimation;

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mSeekBarColorControl:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->getThumbDrawable()Landroid/graphics/drawable/ScaleDrawable;

    move-result-object p2

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mSeekBarColorControl:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->getThumbStrokeDrawable()Landroid/graphics/drawable/ScaleDrawable;

    move-result-object v1

    invoke-virtual {p1, v0, p2, v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarAnimation;->setTarget(Landroid/widget/SeekBar;Landroid/graphics/drawable/ScaleDrawable;Landroid/graphics/drawable/ScaleDrawable;)Z

    return-object v0
.end method

.method private seekbarLayout(Landroid/content/Context;Z)I
    .locals 17

    move-object/from16 v6, p0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sget v1, Lcom/samsung/android/spen/R$string;->pen_string_decrease:I

    sget v2, Lcom/samsung/android/spen/R$string;->pen_string_increase:I

    sget v3, Lcom/samsung/android/spen/R$color;->seek_bar_button_color:I

    move-object/from16 v4, p1

    invoke-static {v4, v3}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v8

    iget v3, v6, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mSeekbarType:I

    const/4 v9, 0x1

    const/16 v4, 0x63

    const/4 v5, -0x1

    const/4 v11, 0x0

    if-ne v3, v5, :cond_0

    sget v3, Lcom/samsung/android/spen/R$string;->pen_string_size:I

    :goto_0
    move v13, v2

    move v12, v3

    move v14, v4

    move v15, v11

    :goto_1
    move v4, v1

    goto :goto_2

    :cond_0
    const/4 v12, -0x3

    if-ne v3, v12, :cond_1

    const/16 v4, 0x9

    move v13, v2

    move v14, v4

    move v12, v11

    const/16 v15, 0x8

    goto :goto_1

    :cond_1
    if-nez v3, :cond_2

    sget v3, Lcom/samsung/android/spen/R$string;->pen_string_opacity:I

    sget v1, Lcom/samsung/android/spen/R$string;->pen_string_opacity_increase:I

    sget v2, Lcom/samsung/android/spen/R$string;->pen_string_opacity_decrease:I

    move v13, v1

    move v12, v3

    move v14, v4

    move v15, v11

    move v4, v2

    goto :goto_2

    :cond_2
    if-ne v3, v9, :cond_3

    sget v3, Lcom/samsung/android/spen/R$string;->pen_string_softness:I

    goto :goto_0

    :cond_3
    move v4, v1

    move v13, v2

    move v14, v5

    move v12, v11

    const/16 v15, 0x8

    :goto_2
    sget v1, Lcom/samsung/android/spen/R$layout;->setting_seekbar_layout_v51:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/LinearLayout;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v5, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget v0, Lcom/samsung/android/spen/R$id;->seek_bar_body:I

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v6, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->seekbarLayout:Landroid/widget/RelativeLayout;

    sget v0, Lcom/samsung/android/spen/R$id;->seek_bar_minus_button:I

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, v6, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mMinusButton:Landroid/widget/ImageButton;

    sget v5, Lcom/samsung/android/spen/R$drawable;->minus:I

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move-object v10, v2

    move v2, v5

    move-object v5, v3

    move-object v3, v8

    move/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->initButton(Landroid/widget/ImageButton;ILandroid/content/res/ColorStateList;II)V

    iget-object v0, v6, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mMinusButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v11}, Landroid/widget/ImageButton;->setEnabled(Z)V

    sget v0, Lcom/samsung/android/spen/R$id;->seek_bar_plus_button:I

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, v6, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mPlusButton:Landroid/widget/ImageButton;

    sget v2, Lcom/samsung/android/spen/R$drawable;->plus:I

    const/4 v5, 0x2

    move-object/from16 v0, p0

    move v4, v13

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->initButton(Landroid/widget/ImageButton;ILandroid/content/res/ColorStateList;II)V

    sget v0, Lcom/samsung/android/spen/R$id;->seek_bar_title:I

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v6, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mPenAttributeTextView:Landroid/widget/TextView;

    iget-object v1, v6, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText$FontName;->REGULAR:Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText$FontName;

    new-array v3, v9, [Landroid/widget/TextView;

    aput-object v0, v3, v11

    invoke-static {v1, v2, v3}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText;->setTypeFace(Landroid/content/Context;Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText$FontName;[Landroid/widget/TextView;)V

    iget-object v0, v6, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mPenAttributeTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v0, 0x8

    if-eq v15, v0, :cond_4

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v6, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mPenAttributeTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v6, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mPenAttributeTextView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/samsung/android/spen/R$string;->pen_string_header:I

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_4
    iget-object v0, v6, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mPenAttributeTextView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    move/from16 v0, p2

    const/4 v1, 0x0

    invoke-direct {v6, v0, v1}, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->penSeekbar(ZLandroid/graphics/drawable/Drawable;)Landroid/widget/SeekBar;

    move-result-object v0

    iput-object v0, v6, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setImportantForAccessibility(I)V

    sget v0, Lcom/samsung/android/spen/R$id;->seek_bar_text:I

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v6, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mPenSeekbarTextView:Landroid/widget/TextView;

    iget-object v3, v6, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mContext:Landroid/content/Context;

    new-array v4, v9, [Landroid/widget/TextView;

    aput-object v0, v4, v11

    invoke-static {v3, v2, v4}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText;->setTypeFace(Landroid/content/Context;Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText$FontName;[Landroid/widget/TextView;)V

    iget-object v0, v6, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mPenSeekbarTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    iget-object v0, v6, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mPenSeekbarTextView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v6, v10}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return v14
.end method

.method private setAutoFlag(Landroid/view/View;Z)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->getButtonType(Landroid/view/View;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iput-boolean p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mAutoIncrement:Z

    goto :goto_0

    :cond_1
    iput-boolean p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mAutoDecrement:Z

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private setButtonEnabled()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

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
    iget-boolean v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mAutoIncrement:Z

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mPlusButton:Landroid/widget/ImageButton;

    invoke-direct {p0, v0, v1, v4}, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->setButtonState(ZZLandroid/widget/ImageButton;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mAutoDecrement:Z

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mMinusButton:Landroid/widget/ImageButton;

    invoke-direct {p0, v2, v0, v1}, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->setButtonState(ZZLandroid/widget/ImageButton;)V

    return-void
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

.method private setSeekbarListener()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mSeekBarKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mPlusButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mPlusButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mButtonLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mPlusButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mButtonOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mPlusButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mButtonOnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mMinusButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mMinusButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mButtonLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mMinusButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mButtonOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mMinusButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mButtonOnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_2
    return-void
.end method

.method private updateAutoSeekBar(Landroid/view/View;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->getButtonType(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getMax()I

    move-result v3

    if-ne v0, v3, :cond_1

    :goto_0
    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mSPenSeekBarChangeListner:Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$SPenSeekBarChangeListner;

    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    invoke-interface {v3, v2, v4}, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$SPenSeekBarChangeListner;->onUpdate(ZI)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mSPenSeekBarChangeListner:Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$SPenSeekBarChangeListner;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-interface {v2, v3}, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$SPenSeekBarChangeListner;->onSizeButtonPressed(Landroid/widget/SeekBar;)V

    :cond_2
    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->getHoverDescription(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->setHoverDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->setHoverDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method private updatePenSeekBarTextViewPos()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getThumbOffset()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mPenSeekbarTextView:Landroid/widget/TextView;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTranslationX(F)V

    return-void
.end method

.method private updateSeekBarByKey(Z)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getMax()I

    move-result v2

    if-ne p1, v2, :cond_0

    return v0

    :cond_0
    move p1, v1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    if-nez p1, :cond_2

    return v0

    :cond_2
    const/4 p1, -0x1

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mUserEvent:Z

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->incrementProgressBy(I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mSPenSeekBarChangeListner:Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$SPenSeekBarChangeListner;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-interface {p1, v0}, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$SPenSeekBarChangeListner;->onSizeButtonPressed(Landroid/widget/SeekBar;)V

    :cond_3
    return v1
.end method


# virtual methods
.method public close()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mPenSeekbarTextView:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mMinusButton:Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mPlusButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mSeekBarColorControl:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->close()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mSeekBarColorControl:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mSeekBarAnimation:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarAnimation;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarAnimation;->close()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mSeekBarAnimation:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarAnimation;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 2

    if-nez p2, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mPenSeekbarTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$2;-><init>(Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V

    return-void
.end method

.method public setColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mSeekBarColorControl:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->setColor(I)V

    return-void
.end method

.method public setEnableSeekbar()V
    .locals 2

    const v0, -0xb95b2

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->setColor(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mPenSeekbarTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->updatePenSeekBarTextViewPos()V

    return-void
.end method

.method public setPenInfo(Ljava/lang/String;III)V
    .locals 4

    const-string v0, "Eraser"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mIsEraser:Z

    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mSeekbarType:I

    const/4 v0, 0x0

    const-string v1, "%d"

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    sub-int/2addr p3, v2

    invoke-virtual {p1, p3}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mPenSeekbarTextView:Landroid/widget/TextView;

    new-array p2, v2, [Ljava/lang/Object;

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p3}, Landroid/widget/SeekBar;->getProgress()I

    move-result p3

    add-int/2addr p3, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v0

    invoke-static {v1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mIsEraser:Z

    if-eqz p1, :cond_3

    const p1, -0xb95b2

    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->setColor(I)V

    goto :goto_1

    :cond_0
    if-nez p1, :cond_2

    shr-int/lit8 p1, p2, 0x18

    and-int/lit16 p1, p1, 0xff

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mPenAlpha:I

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    int-to-float p1, p1

    const/high16 p4, 0x437f0000    # 255.0f

    div-float/2addr p1, p4

    const/high16 p4, 0x42c60000    # 99.0f

    mul-float/2addr p1, p4

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mPenSeekbarTextView:Landroid/widget/TextView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    new-array p4, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p4, v0

    invoke-static {v1, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "%"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mIsEraser:Z

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mPenAlpha:I

    shl-int/lit8 p1, p1, 0x18

    const/high16 p2, -0x1000000

    and-int/2addr p1, p2

    const p2, 0xf46a4e

    or-int/2addr p1, p2

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2}, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->setColor(I)V

    goto :goto_1

    :cond_2
    if-ne p1, v2, :cond_3

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    sub-int/2addr p4, v2

    invoke-virtual {p1, p4}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mPenSeekbarTextView:Landroid/widget/TextView;

    new-array p2, v2, [Ljava/lang/Object;

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p3}, Landroid/widget/SeekBar;->getProgress()I

    move-result p3

    add-int/2addr p3, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v0

    invoke-static {v1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->seekbarLayout:Landroid/widget/RelativeLayout;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mPenSeekbarTextView:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mPenAttributeTextView:Landroid/widget/TextView;

    invoke-virtual {p4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/samsung/android/spen/R$string;->pen_string_slider:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setProgress(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method

.method public setSPenSeekBarChangeListener(Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$SPenSeekBarChangeListner;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mSPenSeekBarChangeListner:Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$SPenSeekBarChangeListner;

    return-void
.end method
