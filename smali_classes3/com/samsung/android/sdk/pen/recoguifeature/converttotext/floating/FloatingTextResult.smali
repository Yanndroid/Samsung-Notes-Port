.class public Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult$ActionListener;
    }
.end annotation


# static fields
.field public static final MAX_LINE_COUNT:I = 0x32

.field public static final MAX_TEXT_LENGTH:I = 0xbb8

.field private static final TAG:Ljava/lang/String; = "FloatingTextResult"


# instance fields
.field private colorThemeUtil:Lcom/samsung/android/sdk/pen/util/color/SpenColorThemeUtil;

.field private mActionListener:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult$ActionListener;

.field private mContext:Landroid/content/Context;

.field private mCopyBtn:Landroid/widget/Button;

.field private mFrameConstraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mGuideLayout:Landroid/widget/RelativeLayout;

.field private mGuideView:Landroid/widget/RelativeLayout;

.field private mInnerView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mIsCenterAlign:Z

.field private mIsEditTextEmpty:Z

.field private mMaxViewRectList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field private mOriginalSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

.field private mOriginalText:Ljava/lang/String;

.field private mResultEditText:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;

.field private mResultRectList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field private mResultViewRectList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mOriginalSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mOriginalText:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mResultRectList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mResultViewRectList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mMaxViewRectList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mIsCenterAlign:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mIsEditTextEmpty:Z

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/sdk/pen/util/color/SpenColorThemeUtil;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/pen/util/color/SpenColorThemeUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->colorThemeUtil:Lcom/samsung/android/sdk/pen/util/color/SpenColorThemeUtil;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mOriginalSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mOriginalText:Ljava/lang/String;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mResultRectList:Ljava/util/ArrayList;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mResultViewRectList:Ljava/util/ArrayList;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mMaxViewRectList:Ljava/util/ArrayList;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mIsCenterAlign:Z

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mIsEditTextEmpty:Z

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mContext:Landroid/content/Context;

    new-instance p2, Lcom/samsung/android/sdk/pen/util/color/SpenColorThemeUtil;

    invoke-direct {p2, p1}, Lcom/samsung/android/sdk/pen/util/color/SpenColorThemeUtil;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->colorThemeUtil:Lcom/samsung/android/sdk/pen/util/color/SpenColorThemeUtil;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mOriginalSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mOriginalText:Ljava/lang/String;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mResultRectList:Ljava/util/ArrayList;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mResultViewRectList:Ljava/util/ArrayList;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mMaxViewRectList:Ljava/util/ArrayList;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mIsCenterAlign:Z

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mIsEditTextEmpty:Z

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mContext:Landroid/content/Context;

    new-instance p2, Lcom/samsung/android/sdk/pen/util/color/SpenColorThemeUtil;

    invoke-direct {p2, p1}, Lcom/samsung/android/sdk/pen/util/color/SpenColorThemeUtil;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->colorThemeUtil:Lcom/samsung/android/sdk/pen/util/color/SpenColorThemeUtil;

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;)Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mResultEditText:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;)Landroid/text/SpannableStringBuilder;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mOriginalSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mOriginalSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    return-object p1
.end method

.method public static synthetic access$200(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;Z)Landroid/text/SpannableStringBuilder;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->getCurrentSpannableStringBuilder(Z)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$300(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->showKeyboard(Z)V

    return-void
.end method

.method public static synthetic access$400(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mIsEditTextEmpty:Z

    return p0
.end method

.method public static synthetic access$500(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->setButtonEnable(Z)V

    return-void
.end method

.method public static synthetic access$600(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;)Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult$ActionListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mActionListener:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult$ActionListener;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mResultRectList:Ljava/util/ArrayList;

    return-object p0
.end method

.method private getCurrentSpannableStringBuilder(Z)Landroid/text/SpannableStringBuilder;
    .locals 10

    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mResultEditText:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mResultEditText:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mResultEditText:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    const-class v3, Landroid/text/style/ForegroundColorSpan;

    const/4 v4, 0x0

    invoke-interface {v1, v4, v2, v3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/ForegroundColorSpan;

    array-length v2, v1

    move v3, v4

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v5, v1, v3

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mResultEditText:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6, v5}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mResultEditText:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7, v5}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    new-instance v8, Landroid/text/style/ForegroundColorSpan;

    if-eqz p1, :cond_0

    iget-object v9, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->colorThemeUtil:Lcom/samsung/android/sdk/pen/util/color/SpenColorThemeUtil;

    invoke-virtual {v5}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v5

    invoke-virtual {v9, v5}, Lcom/samsung/android/sdk/pen/util/color/SpenColorThemeUtil;->getColor(I)I

    move-result v5

    goto :goto_1

    :cond_0
    invoke-virtual {v5}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v5

    :goto_1
    invoke-direct {v8, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v5, 0x22

    invoke-virtual {v0, v8, v6, v7, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mResultEditText:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mResultEditText:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    const-class v2, Landroid/text/style/UnderlineSpan;

    invoke-interface {p1, v4, v1, v2}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/text/style/UnderlineSpan;

    array-length v1, p1

    :goto_2
    if-ge v4, v1, :cond_2

    aget-object v2, p1, v4

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    return-object v0
.end method

.method private isHorizontalMultiPage(Ljava/util/ArrayList;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/RectF;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_0

    return v1

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    move v3, v1

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    if-ne v0, v3, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    return v2

    :cond_2
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_3

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_3

    return v2

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return v1
.end method

.method private printRectList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/RectF;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] (l:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", t:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", r:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", b:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FloatingTextResult"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setButtonEnable(Z)V
    .locals 1

    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mIsEditTextEmpty:Z

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mCopyBtn:Landroid/widget/Button;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method private setInParent()V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getY()F

    move-result v1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v1

    int-to-float v3, v0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setY(F)V

    :cond_0
    const/4 v0, 0x0

    cmpg-float v1, v1, v0

    if-gez v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setY(F)V

    :cond_1
    return-void
.end method

.method private setSolidColor(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mFrameConstraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Landroid/graphics/drawable/ShapeDrawable;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    :cond_0
    instance-of v1, v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_0

    :cond_1
    instance-of v1, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private showKeyboard(Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mResultEditText:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mResultEditText:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    :goto_0
    return-void
.end method

.method private updateLayout(ZZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FloatingTextResult::updateLayout isDarkModeGUI : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isDarkModeStroke  : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FloatingTextResult"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->colorThemeUtil:Lcom/samsung/android/sdk/pen/util/color/SpenColorThemeUtil;

    invoke-virtual {v0, p2}, Lcom/samsung/android/sdk/pen/util/color/SpenColorThemeUtil;->setColorTheme(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    sget p1, Lcom/samsung/android/spen/R$layout;->sdk_handwriting_floating_text_result_dark:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/samsung/android/spen/R$layout;->sdk_handwriting_floating_text_result:I

    :goto_0
    const/4 p2, 0x0

    invoke-static {v0, p1, p2}, Landroid/widget/RelativeLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mInnerView:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mInnerView:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult$1;-><init>(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mInnerView:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult$2;-><init>(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mInnerView:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget v0, Lcom/samsung/android/spen/R$id;->result_edit_text:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mResultEditText:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mResultEditText:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;

    const/4 p2, 0x0

    const-string v0, "sec-roboto-light"

    invoke-static {v0, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mResultEditText:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;

    const p2, 0x800003

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setGravity(I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mResultEditText:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setTextDirection(I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mResultEditText:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/samsung/android/spen/R$dimen;->sdk_floating_convert_text_textview_font_size:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setTextSize(F)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mResultEditText:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;

    const-string p2, "disableDirectWriting=true;disableImage=true;disableLiveMessage=true;disableGifKeyboard=true;disableSticker=true;disableVoiceInput=true"

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mResultEditText:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;

    new-instance p2, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult$3;

    invoke-direct {p2, p0}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult$3;-><init>(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mResultEditText:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;

    new-instance p2, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult$4;

    invoke-direct {p2, p0}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult$4;-><init>(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;->setTextChangedListener(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText$TextChangedListener;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mInnerView:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget p2, Lcom/samsung/android/spen/R$id;->preview_convert_btn:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance p2, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult$5;

    invoke-direct {p2, p0}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult$5;-><init>(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mInnerView:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget p2, Lcom/samsung/android/spen/R$id;->preview_copy_btn:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mCopyBtn:Landroid/widget/Button;

    new-instance p2, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult$6;

    invoke-direct {p2, p0}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult$6;-><init>(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mInnerView:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget p2, Lcom/samsung/android/spen/R$id;->preview_close_btn:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    new-instance p2, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult$7;

    invoke-direct {p2, p0}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult$7;-><init>(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mInnerView:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget p2, Lcom/samsung/android/spen/R$id;->preview_setting_btn:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    new-instance p2, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult$8;

    invoke-direct {p2, p0}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult$8;-><init>(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public clearSpan()V
    .locals 2

    const-string v0, "FloatingTextResult"

    const-string v1, "FloatingTextResult::clearSpan"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mOriginalSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mOriginalSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    :cond_0
    iput-object v1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mOriginalText:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mResultEditText:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;->setCursorIndex(I)V

    return-void
.end method

.method public close()V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mContext:Landroid/content/Context;

    return-void
.end method

.method public construct(ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->updateLayout(ZZ)V

    return-void
.end method

.method public getResultRect()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mResultRectList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isTextFocused()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mResultEditText:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onLayout(ZIIII)V
    .locals 7

    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    sub-int/2addr p5, p3

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "FloatingTextResult::onLayout w: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr p4, p2

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", h:"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", parentWidth:"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", parentHeight:"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", mIsCenterAlign:"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mIsCenterAlign:Z

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "FloatingTextResult"

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mResultViewRectList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_a

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mMaxViewRectList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_a

    const p2, 0x7fffffff

    const/4 p4, 0x0

    move v0, p4

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mResultViewRectList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p4, v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mResultViewRectList:Ljava/util/ArrayList;

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    if-ge p4, p2, :cond_1

    move p2, p4

    :cond_1
    if-le p4, v0, :cond_2

    move v0, p4

    :cond_2
    :goto_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v1, Lcom/samsung/android/spen/R$dimen;->sdk_convert_text_handle_height:I

    invoke-virtual {p4, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    int-to-float p4, p4

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p4, v1

    float-to-int p4, p4

    mul-int/lit8 v2, p4, 0x2

    add-int/2addr v2, p5

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mMaxViewRectList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mResultViewRectList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v4

    int-to-float v2, v2

    cmpl-float v3, v3, v2

    const-string v4, ")"

    const-string v5, "), y("

    if-ltz v3, :cond_4

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mResultViewRectList:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->left:F

    iget-object p5, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mResultViewRectList:Ljava/util/ArrayList;

    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/graphics/RectF;

    iget p5, p5, Landroid/graphics/RectF;->bottom:F

    int-to-float p4, p4

    add-float/2addr p5, p4

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "FloatingTextResult::onLayout 1. below the last handle x("

    :goto_2
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mResultViewRectList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mResultViewRectList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v6

    cmpl-float v3, v3, v2

    if-ltz v3, :cond_5

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mResultViewRectList:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mResultViewRectList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    int-to-float p5, p5

    sub-float/2addr v0, p5

    int-to-float p4, p4

    sub-float p5, v0, p4

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "FloatingTextResult::onLayout 2. on the last handle x("

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mResultViewRectList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mMaxViewRectList:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v3

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mResultViewRectList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mResultViewRectList:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->top:F

    int-to-float p5, p5

    sub-float/2addr p2, p5

    int-to-float p4, p4

    sub-float p5, p2, p4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "FloatingTextResult::onLayout 3. on the first handle x("

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mResultViewRectList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mResultViewRectList:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    int-to-float p5, p5

    sub-float/2addr p2, p5

    int-to-float p4, p4

    sub-float p5, p2, p4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "FloatingTextResult::onLayout 4. below the first handle x("

    :goto_3
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move p2, v0

    :goto_4
    iget-boolean p3, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mIsCenterAlign:Z

    if-eqz p3, :cond_7

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result p2

    sub-int/2addr p1, p2

    int-to-float p1, p1

    div-float p2, p1, v1

    :cond_7
    const/4 p1, 0x0

    cmpl-float p3, p2, p1

    if-lez p3, :cond_8

    goto :goto_5

    :cond_8
    move p2, p1

    :goto_5
    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->setX(F)V

    cmpl-float p2, p5, p1

    if-lez p2, :cond_9

    goto :goto_6

    :cond_9
    move p5, p1

    :goto_6
    invoke-virtual {p0, p5}, Landroid/widget/RelativeLayout;->setY(F)V

    :cond_a
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->setInParent()V

    return-void
.end method

.method public removeParentView()V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    const-string v0, "FloatingTextResult"

    const-string v1, "FloatingTextResult::removeParentView getParent() == null || !(getParent() instanceof ViewGroup)"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public requestTextFocus(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mResultEditText:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FloatingTextResult::requestTextFocus : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FloatingTextResult"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mResultEditText:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->isFocused()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mResultEditText:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->showKeyboard(Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mResultEditText:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setBgColorDarkMode(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mInnerView:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget v1, Lcom/samsung/android/spen/R$id;->frame_constraint:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mFrameConstraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->setSolidColor(I)V

    return-void
.end method

.method public setLayoutDirection(I)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mResultEditText:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;

    const-string v1, "FloatingTextResult"

    if-nez v0, :cond_0

    const-string p1, "FloatingTextResult::mResultEditText is empty"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FloatingTextResult::setLayoutDirection layoutDirection :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", textDirection :"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mResultEditText:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTextDirection(I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mResultEditText:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->invalidate()V

    return-void
.end method

.method public setListener(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult$ActionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mActionListener:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult$ActionListener;

    return-void
.end method

.method public setRect(ZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/RectF;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/RectF;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/RectF;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_1

    invoke-direct {p0, p4}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->isHorizontalMultiPage(Ljava/util/ArrayList;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mIsCenterAlign:Z

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mResultRectList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mResultRectList:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mResultViewRectList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mResultViewRectList:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mMaxViewRectList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mMaxViewRectList:Ljava/util/ArrayList;

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setText(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;",
            ">;)V"
        }
    .end annotation

    const-string v0, "FloatingTextResult"

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->setButtonEnable(Z)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FloatingTextResult::setText : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mOriginalText:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->clearSpan()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mOriginalSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    if-nez v0, :cond_5

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mOriginalSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/16 v3, 0x22

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getType()I

    move-result v4

    if-eq v4, v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mOriginalSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    move-object v6, v0

    check-cast v6, Lcom/samsung/android/sdk/pen/document/textspan/SpenForegroundColorSpan;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/pen/document/textspan/SpenForegroundColorSpan;->getColor()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getStart()I

    move-result v6

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getEnd()I

    move-result v0

    invoke-virtual {v4, v5, v6, v0, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_3
    new-instance p2, Landroid/text/SpannableStringBuilder;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mOriginalSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-direct {p2, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const-class v2, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p2, v1, v0, v2}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ForegroundColorSpan;

    array-length v2, v0

    move v4, v1

    :goto_1
    if-ge v4, v2, :cond_4

    aget-object v5, v0, v4

    invoke-virtual {p2, v5}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {p2, v5}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    new-instance v8, Landroid/text/style/ForegroundColorSpan;

    iget-object v9, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->colorThemeUtil:Lcom/samsung/android/sdk/pen/util/color/SpenColorThemeUtil;

    invoke-virtual {v5}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v5

    invoke-virtual {v9, v5}, Lcom/samsung/android/sdk/pen/util/color/SpenColorThemeUtil;->getColor(I)I

    move-result v5

    invoke-direct {v8, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p2, v8, v6, v7, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mResultEditText:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mOriginalText:Ljava/lang/String;

    :cond_5
    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->showGuideView(Z)V

    return-void

    :cond_6
    :goto_2
    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->setButtonEnable(Z)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mResultEditText:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;

    invoke-virtual {p1, v1, v1}, Landroid/widget/EditText;->scrollTo(II)V

    const-string p1, "FloatingTextResult::text is empty"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public showGuideView(Z)V
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mGuideView:Landroid/widget/RelativeLayout;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v3, Lcom/samsung/android/spen/R$layout;->sdk_floating_convert_text_guide_view:I

    invoke-static {p1, v3, v2}, Landroid/widget/RelativeLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mGuideView:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult$9;

    invoke-direct {v2, p0}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult$9;-><init>(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;)V

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mGuideView:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult$10;

    invoke-direct {v2, p0}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult$10;-><init>(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;)V

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mGuideView:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mGuideLayout:Landroid/widget/RelativeLayout;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mGuideView:Landroid/widget/RelativeLayout;

    sget v2, Lcom/samsung/android/spen/R$id;->guide_view:I

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mGuideLayout:Landroid/widget/RelativeLayout;

    :cond_1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    const/4 v3, -0x2

    invoke-direct {p1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mGuideLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mGuideView:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mInnerView:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p1, :cond_5

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mGuideView:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_4

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mGuideView:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mGuideLayout:Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mGuideView:Landroid/widget/RelativeLayout;

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mInnerView:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p1, :cond_5

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_5
    :goto_0
    return-void
.end method

.method public showPreview(ZLjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/RectF;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/RectF;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/RectF;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1, p4, p5, p6}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->setRect(ZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->setText(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mMaxViewRectList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mIsCenterAlign:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mMaxViewRectList:Ljava/util/ArrayList;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    float-to-int p1, p1

    :goto_0
    iget-object p2, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/samsung/android/spen/R$dimen;->sdk_floating_convert_text_view_min_width:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/samsung/android/spen/R$dimen;->sdk_floating_convert_text_view_max_width:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    invoke-static {p1, p2, p3}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result p1

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mInnerView:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 p3, -0x2

    if-nez p2, :cond_1

    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p2, p1, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto :goto_1

    :cond_1
    iput p1, p2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput p3, p2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    :goto_1
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->mInnerView:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method
