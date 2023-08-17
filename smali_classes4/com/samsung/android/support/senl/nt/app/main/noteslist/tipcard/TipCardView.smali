.class public Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView$Contract;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TipCardView"


# instance fields
.field private mContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView$Contract;

.field private mPageTag:I

.field private final mTipCard:Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;

.field private mTipCardButtonBar:Landroid/widget/LinearLayout;

.field private mTipCardButtonNegative:Landroid/widget/TextView;

.field private mTipCardButtonNeutral:Landroid/widget/TextView;

.field private mTipCardButtonPositive:Landroid/widget/TextView;

.field private mTipCardMessage:Landroid/widget/TextView;

.field private final mTipCardNegativeButtonClickListener:Landroid/view/View$OnClickListener;

.field private final mTipCardNeutralButtonClickListener:Landroid/view/View$OnClickListener;

.field private final mTipCardPositiveButtonClickListener:Landroid/view/View$OnClickListener;

.field private mTipCardProgressArea:Landroid/widget/LinearLayout;

.field private mTipCardProgressBar:Landroid/widget/ProgressBar;

.field private mTipCardProgressRate:Landroid/widget/TextView;

.field private mTipCardProgressRateTypeArea:Landroid/widget/RelativeLayout;

.field private mTipCardProgressType:Landroid/widget/TextView;

.field private mTipCardTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;->mTipCardPositiveButtonClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView$2;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;->mTipCardNegativeButtonClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView$3;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;->mTipCardNeutralButtonClickListener:Landroid/view/View$OnClickListener;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;->mTipCard:Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;->initLayout(Landroid/content/Context;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView$Contract;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;->mContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView$Contract;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;)Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;->mTipCard:Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;

    return-object p0
.end method

.method private decorateMessage()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;->mTipCard:Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;->mTipCardMessage:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;->mTipCardMessage:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;->mTipCardMessage:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private decorateNegativeButton()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;->mTipCard:Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;->getNegativeButtonResource()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;->mTipCardButtonNegative:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;->mTipCardButtonNegative:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;->mTipCardButtonNegative:Landroid/widget/TextView;

    new-instance v1, Lcom/samsung/android/support/senl/nt/base/winset/accessibility/VoiceAssistAsButton;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/base/winset/accessibility/VoiceAssistAsButton;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;->mTipCardButtonNegative:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;->highlightButtonShape(Landroid/widget/TextView;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;->mTipCardButtonNegative:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private decorateNeutralButton()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;->mTipCard:Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;->getNeutralButtonResourceId()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;->mTipCardButtonNeutral:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;->mTipCardButtonNeutral:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;->mTipCardButtonNeutral:Landroid/widget/TextView;

    new-instance v1, Lcom/samsung/android/support/senl/nt/base/winset/accessibility/VoiceAssistAsButton;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/base/winset/accessibility/VoiceAssistAsButton;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;->mTipCardButtonNeutral:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;->highlightButtonShape(Landroid/widget/TextView;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;->mTipCardButtonNeutral:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private decoratePositiveButton()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;->mTipCard:Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;->getPositiveButtonResource()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;->mTipCardButtonPositive:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;->mTipCardButtonPositive:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;->mTipCardButtonPositive:Landroid/widget/TextView;

    new-instance v1, Lcom/samsung/android/support/senl/nt/base/winset/accessibility/VoiceAssistAsButton;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/base/winset/accessibility/VoiceAssistAsButton;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;->mTipCardButtonPositive:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;->highlightButtonShape(Landroid/widget/TextView;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;->mTipCardButtonPositive:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private decorateTitle()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;->mTipCard:Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;->getTitleResource()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;->mTipCardTitle:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;->mTipCardTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;->mTipCardTitle:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private highlightButtonShape(Landroid/widget/TextView;)V
    .locals 3

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/ButtonBackgroundUtils;->isShowButtonShapeEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$drawable;->tip_card_button_shape_bg:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$color;->tip_card_background:I

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$color;->tip_card_button_text_color:I

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private initLayout(Landroid/content/Context;)V
    .locals 3

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$layout;->tipcard_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->tipcard_title:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;->mTipCardTitle:Landroid/widget/TextView;

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->tipcard_message:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;->mTipCardMessage:Landroid/widget/TextView;

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->tipcard_button_bar:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;->mTipCardButtonBar:Landroid/widget/LinearLayout;

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->tipcard_button_positive:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;->mTipCardButtonPositive:Landroid/widget/TextView;

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->tipcard_button_negative:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;->mTipCardButtonNegative:Landroid/widget/TextView;

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->tipcard_button_neutral:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;->mTipCardButtonNeutral:Landroid/widget/TextView;

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->tipcard_progress_area:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;->mTipCardProgressArea:Landroid/widget/LinearLayout;

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->tipcard_progress_rate_type_area:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;->mTipCardProgressRateTypeArea:Landroid/widget/RelativeLayout;

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->tipcard_progress_bar:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;->mTipCardProgressBar:Landroid/widget/ProgressBar;

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->tipcard_progress_rate:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;->mTipCardProgressRate:Landroid/widget/TextView;

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->tipcard_progress_type:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;->mTipCardProgressType:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;->mTipCardButtonPositive:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;->mTipCardPositiveButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;->mTipCardButtonNegative:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;->mTipCardNegativeButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;->mTipCardButtonNeutral:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;->mTipCardNeutralButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;->mTipCardTitle:Landroid/widget/TextView;

    const/high16 v1, 0x41980000    # 19.0f

    invoke-static {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/util/CharUtils;->applyTextSizeUntilLargeSize(Landroid/content/Context;Landroid/widget/TextView;F)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;->mTipCardMessage:Landroid/widget/TextView;

    const/high16 v1, 0x41700000    # 15.0f

    invoke-static {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/util/CharUtils;->applyTextSizeUntilLargeSize(Landroid/content/Context;Landroid/widget/TextView;F)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;->mTipCardButtonPositive:Landroid/widget/TextView;

    invoke-static {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/util/CharUtils;->applyTextSizeUntilLargeSize(Landroid/content/Context;Landroid/widget/TextView;F)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;->mTipCardButtonNegative:Landroid/widget/TextView;

    invoke-static {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/util/CharUtils;->applyTextSizeUntilLargeSize(Landroid/content/Context;Landroid/widget/TextView;F)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;->mTipCardButtonNeutral:Landroid/widget/TextView;

    invoke-static {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/util/CharUtils;->applyTextSizeUntilLargeSize(Landroid/content/Context;Landroid/widget/TextView;F)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;->mTipCardProgressRate:Landroid/widget/TextView;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/util/CharUtils;->applyTextSizeUntilLargeSize(Landroid/content/Context;Landroid/widget/TextView;F)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;->mTipCardProgressType:Landroid/widget/TextView;

    invoke-static {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/util/CharUtils;->applyTextSizeUntilLargeSize(Landroid/content/Context;Landroid/widget/TextView;F)V

    return-void
.end method


# virtual methods
.method public decorateProgress()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;->mTipCard:Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;->isProgressTipCard()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;->mTipCardProgressArea:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;->mTipCardProgressRateTypeArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;->mTipCardButtonBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/samsung/android/support/senl/nt/app/R$dimen;->tipcard_button_bar_margin_top_when_progress_bar_showing:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;->mTipCardButtonBar:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;->mTipCard:Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;

    check-cast v0, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardProgress;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;->mTipCardProgressRate:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardProgress;->getProgressRate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;->mTipCardProgressType:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardProgress;->getProgressType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;->mTipCardProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardProgress;->getProgressValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;->mTipCardProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardProgress;->isFinished()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;->mTipCardProgressRateTypeArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardProgress;->isNotInitialized()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TipCardView progress... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardProgress;->getProgressValue()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TipCardView"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;->mTipCardProgressArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;->mTipCardProgressRateTypeArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public decorateProgressRateTypeArea()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;->mTipCardProgressRateTypeArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;->mTipCardProgressRateTypeArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;->mTipCardProgressRate:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;->mTipCardProgressType:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "decorateProgressRateTypeArea, areaWidth: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", rateWidth: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", typeWidth: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TipCardView"

    invoke-static {v4, v3}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;->mTipCardProgressType:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x64

    const/4 v2, 0x3

    const/16 v4, 0x14

    const/16 v5, 0x15

    if-ge v0, v1, :cond_1

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->tipcard_progress_rate:I

    invoke-virtual {v3, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    :cond_1
    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;->mTipCardProgressType:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public getPageTag()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;->mPageTag:I

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAttachedToWindow# type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;->mTipCard:Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TipCardView"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;->decorateTitle()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;->decorateMessage()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;->decoratePositiveButton()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;->decorateNegativeButton()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;->decorateNeutralButton()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;->decorateProgress()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;->decorateProgressRateTypeArea()V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;->decorateProgressRateTypeArea()V

    :cond_0
    return-void
.end method

.method public setContract(Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView$Contract;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;->mContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView$Contract;

    return-void
.end method

.method public setPageTag(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;->mPageTag:I

    return-void
.end method
