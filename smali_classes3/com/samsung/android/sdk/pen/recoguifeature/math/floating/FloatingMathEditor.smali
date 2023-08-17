.class public Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$ResultEditText;,
        Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$ActionListener;
    }
.end annotation


# static fields
.field public static final MAX_LINE_COUNT:I = 0x32

.field public static final MAX_TEXT_LENGTH:I = 0xbb8

.field private static final TAG:Ljava/lang/String; = "FloatingMathEditor"


# instance fields
.field private colorThemeUtil:Lcom/samsung/android/sdk/pen/util/color/SpenColorThemeUtil;

.field private mActionListener:Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$ActionListener;

.field private mContext:Landroid/content/Context;

.field private mCurObjectFormula:Lcom/samsung/android/sdk/pen/document/SpenObjectFormula;

.field private mFrameRect:Landroid/graphics/RectF;

.field private mInnerView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mResultEditText:Landroid/widget/EditText;

.field private mWindowRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/sdk/pen/util/color/SpenColorThemeUtil;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/pen/util/color/SpenColorThemeUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;->colorThemeUtil:Lcom/samsung/android/sdk/pen/util/color/SpenColorThemeUtil;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;->mContext:Landroid/content/Context;

    new-instance p2, Lcom/samsung/android/sdk/pen/util/color/SpenColorThemeUtil;

    invoke-direct {p2, p1}, Lcom/samsung/android/sdk/pen/util/color/SpenColorThemeUtil;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;->colorThemeUtil:Lcom/samsung/android/sdk/pen/util/color/SpenColorThemeUtil;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;->mContext:Landroid/content/Context;

    new-instance p2, Lcom/samsung/android/sdk/pen/util/color/SpenColorThemeUtil;

    invoke-direct {p2, p1}, Lcom/samsung/android/sdk/pen/util/color/SpenColorThemeUtil;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;->colorThemeUtil:Lcom/samsung/android/sdk/pen/util/color/SpenColorThemeUtil;

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;->mResultEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;)Lcom/samsung/android/sdk/pen/document/SpenObjectFormula;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;->mCurObjectFormula:Lcom/samsung/android/sdk/pen/document/SpenObjectFormula;

    return-object p0
.end method

.method public static synthetic access$202(Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;Lcom/samsung/android/sdk/pen/document/SpenObjectFormula;)Lcom/samsung/android/sdk/pen/document/SpenObjectFormula;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;->mCurObjectFormula:Lcom/samsung/android/sdk/pen/document/SpenObjectFormula;

    return-object p1
.end method

.method public static synthetic access$300(Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;)Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$ActionListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;->mActionListener:Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$ActionListener;

    return-object p0
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

.method private showKeyboard(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;->mResultEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateLayout(ZZ)V
    .locals 3

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;->colorThemeUtil:Lcom/samsung/android/sdk/pen/util/color/SpenColorThemeUtil;

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/util/color/SpenColorThemeUtil;->setColorTheme(I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;->mContext:Landroid/content/Context;

    sget p2, Lcom/samsung/android/spen/R$layout;->sdk_floating_math_editor:I

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/RelativeLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;->mInnerView:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/view/SpenConfiguration;->isTabletDevice(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/samsung/android/spen/R$dimen;->sdk_floating_convert_text_view_max_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p2, p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;->mInnerView:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;->mInnerView:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance p2, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$1;-><init>(Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;->mInnerView:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance p2, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$2;-><init>(Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    new-instance p1, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$ResultEditText;

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$ResultEditText;-><init>(Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;->mResultEditText:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;->mResultEditText:Landroid/widget/EditText;

    const-string p2, "sec-roboto-light"

    const/4 v0, 0x0

    invoke-static {p2, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;->mResultEditText:Landroid/widget/EditText;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setGravity(I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;->mResultEditText:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOverScrollMode(I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;->mResultEditText:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setScrollBarFadeDuration(I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;->mResultEditText:Landroid/widget/EditText;

    const/high16 p2, 0x1000000

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setScrollBarStyle(I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;->mResultEditText:Landroid/widget/EditText;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setVerticalScrollBarEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;->mResultEditText:Landroid/widget/EditText;

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/samsung/android/spen/R$dimen;->sdk_floating_convert_text_textview_font_size:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setTextSize(F)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;->mResultEditText:Landroid/widget/EditText;

    const-string p2, "disableDirectWriting=true;"

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    new-instance p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 p2, -0x1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/spen/R$dimen;->sdk_floating_convert_text_textview_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-direct {p1, p2, v0}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    sget p2, Lcom/samsung/android/spen/R$id;->preview_close_btn:I

    iput p2, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    sget v0, Lcom/samsung/android/spen/R$id;->preview_setting_btn:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/spen/R$dimen;->sdk_floating_convert_text_setting_btn_margin_bottom:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;->mResultEditText:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;->mInnerView:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget v1, Lcom/samsung/android/spen/R$id;->top_constraint:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;->mResultEditText:Landroid/widget/EditText;

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v1, "hme/fonts/MathJax_AMS-Regular.otf"

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;->mResultEditText:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;->mInnerView:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget v1, Lcom/samsung/android/spen/R$id;->preview_convert_btn:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance v1, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$3;-><init>(Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;->mInnerView:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget v1, Lcom/samsung/android/spen/R$id;->preview_copy_btn:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance v1, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$4;-><init>(Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;->mInnerView:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    new-instance p2, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$5;

    invoke-direct {p2, p0}, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$5;-><init>(Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;->mInnerView:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    new-instance p2, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$6;

    invoke-direct {p2, p0}, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$6;-><init>(Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public clearSpan()V
    .locals 2

    const-string v0, "FloatingMathEditor"

    const-string v1, "FloatingMathEditor::clearSpan"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;->mResultEditText:Landroid/widget/EditText;

    check-cast v0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$ResultEditText;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$ResultEditText;->resetCursor()V

    return-void
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;->mCurObjectFormula:Lcom/samsung/android/sdk/pen/document/SpenObjectFormula;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    return-void
.end method

.method public construct(ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;->updateLayout(ZZ)V

    return-void
.end method

.method public isTextFocused()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;->mResultEditText:Landroid/widget/EditText;

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
    .locals 6

    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    sub-int/2addr p5, p3

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "FloatingMathEditor::onLayout w: "

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

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "FloatingMathEditor"

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result p2

    sub-int/2addr p1, p2

    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    const/4 p2, 0x0

    cmpl-float p4, p1, p2

    if-lez p4, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setX(F)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;->mWindowRect:Landroid/graphics/RectF;

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;->mFrameRect:Landroid/graphics/RectF;

    if-eqz p1, :cond_c

    new-instance p1, Landroid/graphics/RectF;

    iget-object p4, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;->mWindowRect:Landroid/graphics/RectF;

    invoke-direct {p1, p4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    new-instance p4, Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;->mFrameRect:Landroid/graphics/RectF;

    invoke-direct {p4, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iget v0, p4, Landroid/graphics/RectF;->left:F

    cmpg-float v1, v0, p2

    if-gez v1, :cond_1

    move v0, p2

    :cond_1
    iput v0, p4, Landroid/graphics/RectF;->left:F

    iget v0, p4, Landroid/graphics/RectF;->top:F

    cmpg-float v1, v0, p2

    if-gez v1, :cond_2

    move v0, p2

    :cond_2
    iput v0, p4, Landroid/graphics/RectF;->top:F

    iget v0, p4, Landroid/graphics/RectF;->right:F

    iget v1, p1, Landroid/graphics/RectF;->right:F

    cmpl-float v2, v0, v1

    if-lez v2, :cond_3

    move v0, v1

    :cond_3
    iput v0, p4, Landroid/graphics/RectF;->right:F

    iget v0, p4, Landroid/graphics/RectF;->bottom:F

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v2, v0, v1

    if-lez v2, :cond_4

    move v0, v1

    :cond_4
    iput v0, p4, Landroid/graphics/RectF;->bottom:F

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FloatingMathEditor::onLayout frameRect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", windowRect:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/spen/R$dimen;->sdk_floating_convert_text_preview_horizontal_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    mul-int/lit8 v1, v0, 0x2

    add-int/2addr v1, p5

    iget v2, p4, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v3

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    iget v4, p4, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FloatingMathEditor::onLayout topDiff: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", bottomDiff:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    int-to-float v1, v1

    cmpl-float v4, v2, v1

    if-gez v4, :cond_9

    cmpl-float v4, v3, v1

    if-ltz v4, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v2

    sub-float/2addr v4, v3

    cmpl-float v1, v4, v1

    if-ltz v1, :cond_7

    cmpl-float p1, v2, v3

    if-lez p1, :cond_6

    iget p1, p4, Landroid/graphics/RectF;->top:F

    int-to-float p4, v0

    add-float/2addr p1, p4

    goto :goto_1

    :cond_6
    iget p1, p4, Landroid/graphics/RectF;->bottom:F

    int-to-float p4, p5

    sub-float/2addr p1, p4

    int-to-float p4, v0

    sub-float/2addr p1, p4

    :goto_1
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "FloatingMathEditor::onLayout 2. In frame frame : y = "

    goto :goto_5

    :cond_7
    cmpl-float p4, v2, v3

    if-lez p4, :cond_8

    int-to-float p1, v0

    goto :goto_2

    :cond_8
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    int-to-float p4, p5

    sub-float/2addr p1, p4

    int-to-float p4, v0

    sub-float/2addr p1, p4

    :goto_2
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "FloatingMathEditor::onLayout 3. Top or Bot on window : y = "

    goto :goto_5

    :cond_9
    :goto_3
    cmpl-float p1, v2, v3

    if-lez p1, :cond_a

    iget p1, p4, Landroid/graphics/RectF;->top:F

    int-to-float p4, p5

    sub-float/2addr p1, p4

    int-to-float p4, v0

    sub-float/2addr p1, p4

    goto :goto_4

    :cond_a
    iget p1, p4, Landroid/graphics/RectF;->bottom:F

    int-to-float p4, v0

    add-float/2addr p1, p4

    :goto_4
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "FloatingMathEditor::onLayout 1. Out of frame : y = "

    :goto_5
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmpl-float p3, p1, p2

    if-lez p3, :cond_b

    move p2, p1

    :cond_b
    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->setY(F)V

    :cond_c
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;->setInParent()V

    return-void
.end method

.method public requestTextFocus(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;->mResultEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FloatingMathEditor::requestTextFocus : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FloatingMathEditor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;->mResultEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;->mResultEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;->showKeyboard(Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;->mResultEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setListener(Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$ActionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;->mActionListener:Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$ActionListener;

    return-void
.end method

.method public setRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FloatingMathEditor::setRect frameRect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", windowRect:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FloatingMathEditor"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;->mWindowRect:Landroid/graphics/RectF;

    if-nez p2, :cond_0

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;->mWindowRect:Landroid/graphics/RectF;

    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;->mWindowRect:Landroid/graphics/RectF;

    int-to-float v1, v1

    int-to-float p2, p2

    invoke-virtual {v2, v0, v0, v1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    :cond_1
    iput-object p2, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;->mWindowRect:Landroid/graphics/RectF;

    :goto_0
    iget-object p2, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;->mWindowRect:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;->mWindowRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-int v1, v1

    const/4 v2, -0x2

    invoke-direct {p2, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;->mInnerView:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1, p2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;->mFrameRect:Landroid/graphics/RectF;

    if-nez p1, :cond_3

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;->mFrameRect:Landroid/graphics/RectF;

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;->mInnerView:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;->mFrameRect:Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-virtual {v1, v0, v0, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_1

    :cond_4
    iput-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;->mFrameRect:Landroid/graphics/RectF;

    :goto_1
    return-void
.end method

.method public setText(Lcom/samsung/android/sdk/pen/document/SpenObjectFormula;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectFormula;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;->mCurObjectFormula:Lcom/samsung/android/sdk/pen/document/SpenObjectFormula;

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;->mResultEditText:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_3

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setText : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "FloatingMathEditor"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;->mResultEditText:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    add-int/lit8 v2, p1, -0x1

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;->mResultEditText:Landroid/widget/EditText;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;->mResultEditText:Landroid/widget/EditText;

    invoke-virtual {p1, v0, v0}, Landroid/widget/EditText;->scrollTo(II)V

    const-string p1, "FloatingMathEditor::setText() text is empty"

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public showPreview(Lcom/samsung/android/sdk/pen/document/SpenObjectFormula;Ljava/util/ArrayList;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectFormula;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/graphics/RectF;",
            "Landroid/graphics/RectF;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;->setText(Lcom/samsung/android/sdk/pen/document/SpenObjectFormula;Ljava/util/ArrayList;)V

    invoke-virtual {p0, p3, p4}, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;->setRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    return-void
.end method
