.class public Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final GUIDE_TYPE_CONVERT_TO_TEXT_COUNT:I = 0x1

.field private static final KEY_MATH_GUIDE_TEXT_CNT:Ljava/lang/String; = "MATH_GUIDETEXT_CNT"

.field private static final PREFERENCE_NAME:Ljava/lang/String; = "_recogUIFeature"

.field private static final TAG:Ljava/lang/String; = "MathManager"


# instance fields
.field private fontPath:Ljava/lang/String;

.field private mCanvasLayout:Landroid/view/ViewGroup;

.field private mContext:Landroid/content/Context;

.field private mFloatingButtons:Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingButtons;

.field private mFloatingMathEditor:Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;

.field private mIsDarkModeGUI:Z

.field private mIsDarkModeStroke:Z

.field private mNativeMathManager:J

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mSpenMathListener:Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathListener;

.field private mToolbarRect:Landroid/graphics/Rect;

.field private modelPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->mNativeMathManager:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->modelPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->fontPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->mSpenMathListener:Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->mCanvasLayout:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->mIsDarkModeGUI:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->mIsDarkModeStroke:Z

    return-void
.end method

.method private static native Native_cancelMath(J)Z
.end method

.method private static native Native_convertToMath(J)Z
.end method

.method private static native Native_executeMath(JLcom/samsung/android/sdk/pen/document/SpenObjectFormula;)Z
.end method

.method private static native Native_extractMath(J)Z
.end method

.method private static native Native_finalize(J)V
.end method

.method private static native Native_init(JLcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static native Native_initGuideCountSharedPreferences(JI)V
.end method

.method private static native Native_setEnabled(JZ)V
.end method

.method private static native Native_setEnabledTextEditor(JZ)V
.end method

.method private static native Native_updateMath(JLcom/samsung/android/sdk/pen/document/SpenObjectFormula;)Z
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;)Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->mFloatingMathEditor:Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;

    return-object p0
.end method

.method private onChangeGuideCount(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SPenMathManager:: onChangeGuideCount count:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MathManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "MATH_GUIDETEXT_CNT"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method private onFailed(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->mSpenMathListener:Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathListener;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SPenMathManager:: onFailed noInput : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MathManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->mSpenMathListener:Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathListener;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathListener;->onNoInputStrokes()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->mSpenMathListener:Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathListener;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathListener;->onFailed()V

    :cond_1
    :goto_0
    return-void
.end method

.method private onProgressStartEnd(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SPenMathManager:: onProgressStartEnd : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MathManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->mSpenMathListener:Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathListener;->onProgressStart()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathListener;->onProgressStop()V

    :goto_0
    return-void
.end method

.method private onShowFloatingButtons(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->mFloatingButtons:Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingButtons;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->mFloatingButtons:Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingButtons;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->mToolbarRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingButtons;->setToolbarRect(Landroid/graphics/Rect;)V

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SPenMathManager:: onShowFloatingButtons focus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MathManager"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private onShowFloatingMathEditor(ZLcom/samsung/android/sdk/pen/document/SpenObjectFormula;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectFormula;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->mFloatingMathEditor:Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;

    const-string v1, "MathManager"

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->mFloatingMathEditor:Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;

    invoke-virtual {v0, p2, p3}, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;->setText(Lcom/samsung/android/sdk/pen/document/SpenObjectFormula;Ljava/util/ArrayList;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->mFloatingMathEditor:Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;

    if-eqz p1, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SPenMathManager:: onFloatingMathEditor focus:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->mFloatingMathEditor:Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;

    if-eqz v0, :cond_7

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->mFloatingMathEditor:Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;

    const/4 v4, 0x0

    invoke-virtual {v0, p2, p3, v4, v4}, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;->showPreview(Lcom/samsung/android/sdk/pen/document/SpenObjectFormula;Ljava/util/ArrayList;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    :cond_3
    if-eqz p1, :cond_4

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->mFloatingMathEditor:Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;

    invoke-virtual {p2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->mFloatingMathEditor:Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;

    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->hasFocus()Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->mFloatingMathEditor:Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;->requestTextFocus(Z)V

    goto :goto_1

    :cond_4
    iget-object p2, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->mSpenMathListener:Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathListener;

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->mFloatingMathEditor:Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;->isTextFocused()Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->mFloatingMathEditor:Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;

    invoke-virtual {p2, v3}, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;->requestTextFocus(Z)V

    :cond_5
    iget-object p2, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->mFloatingMathEditor:Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;->clearSpan()V

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->mFloatingMathEditor:Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;

    invoke-virtual {p2, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_6
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "SpenConvertToTextManager::onFloatingMathEditor focus:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method

.method private onUndefinedResult()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->mSpenMathListener:Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathListener;

    if-eqz v0, :cond_0

    const-string v0, "MathManager"

    const-string v1, "SPenMathManager:: onUndefinedResult:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->mSpenMathListener:Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathListener;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathListener;->onUndefinedResult()V

    :cond_0
    return-void
.end method


# virtual methods
.method public cancelMath()Z
    .locals 4

    const-string v0, "MathManager"

    const-string v1, "SPenMathManager:: cancelMath"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->mNativeMathManager:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->Native_cancelMath(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public close()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->mFloatingMathEditor:Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->mFloatingMathEditor:Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->mFloatingButtons:Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingButtons;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingButtons;->close()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->mFloatingButtons:Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingButtons;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->mCanvasLayout:Landroid/view/ViewGroup;

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->mNativeMathManager:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->Native_finalize(J)V

    :cond_0
    iput-wide v2, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->mNativeMathManager:J

    return-void
.end method

.method public convertToMath()Z
    .locals 4

    const-string v0, "MathManager"

    const-string v1, "SPenMathManager:: convertToMath"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->mNativeMathManager:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->Native_convertToMath(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public executeMath(Lcom/samsung/android/sdk/pen/document/SpenObjectFormula;)Z
    .locals 4

    const-string v0, "MathManager"

    const-string v1, "SPenMathManager:: executeMath"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->mNativeMathManager:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->Native_executeMath(JLcom/samsung/android/sdk/pen/document/SpenObjectFormula;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public extractMath()Z
    .locals 4

    const-string v0, "MathManager"

    const-string v1, "SPenMathManager:: extractMath"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->mNativeMathManager:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->Native_extractMath(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setCanvasLayout(Landroid/view/ViewGroup;)V
    .locals 2

    const-string v0, "MathManager"

    const-string v1, "SPenMathManager:: setCanvasLayout"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->mFloatingMathEditor:Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->mFloatingMathEditor:Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->mFloatingButtons:Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingButtons;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->mFloatingButtons:Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingButtons;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public setDarkModeEnabled(ZZ)V
    .locals 2

    iput-boolean p2, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->mIsDarkModeStroke:Z

    iget-boolean p2, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->mIsDarkModeGUI:Z

    if-eq p2, p1, :cond_0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->mIsDarkModeGUI:Z

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->mFloatingMathEditor:Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->mFloatingMathEditor:Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->mContext:Landroid/content/Context;

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->mNativeMathManager:J

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->setNativeHandle(Landroid/content/Context;J)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->mCanvasLayout:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->mFloatingMathEditor:Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->mNativeMathManager:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->Native_setEnabled(JZ)V

    return-void
.end method

.method public setEnabledTextEditor(Z)V
    .locals 4

    const-string v0, "MathManager"

    const-string v1, "SPenMathManager:: setEnabledTextEditor"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->mNativeMathManager:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->Native_setEnabledTextEditor(JZ)V

    return-void
.end method

.method public setListener(Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->mSpenMathListener:Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathListener;

    return-void
.end method

.method public setNativeHandle(Landroid/content/Context;J)V
    .locals 4

    iput-wide p2, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->mNativeMathManager:J

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->mContext:Landroid/content/Context;

    const-string p2, "MathManager"

    const-string p3, "SPenMathManager:: setNativeHandle()"

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p3, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->mContext:Landroid/content/Context;

    invoke-direct {p3, v0}, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->mFloatingMathEditor:Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->mIsDarkModeGUI:Z

    iget-boolean v1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->mIsDarkModeStroke:Z

    invoke-virtual {p3, v0, v1}, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;->construct(ZZ)V

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->mFloatingMathEditor:Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;

    new-instance v0, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager$1;-><init>(Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;)V

    invoke-virtual {p3, v0}, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;->setListener(Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$ActionListener;)V

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->mFloatingMathEditor:Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;

    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    new-instance p3, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingButtons;

    invoke-direct {p3, p1}, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingButtons;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->mFloatingButtons:Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingButtons;

    new-instance v1, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager$2;-><init>(Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;)V

    invoke-virtual {p3, v1}, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingButtons;->setListener(Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingButtons$ActionListener;)V

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->mFloatingButtons:Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingButtons;

    invoke-virtual {p3, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->mNativeMathManager:J

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->modelPath:Ljava/lang/String;

    if-nez p3, :cond_0

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathResourceExtractor;->copyModelFilesFromAssets(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    :cond_0
    iput-object p3, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->modelPath:Ljava/lang/String;

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->fontPath:Ljava/lang/String;

    if-nez p3, :cond_1

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathResourceExtractor;->copyOtfFontsFromAssets(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    :cond_1
    iput-object p3, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->fontPath:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SPenMathManager:: setNativeHandle() modelPath : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->modelPath:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", fontPath : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->fontPath:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->mNativeMathManager:J

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->modelPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->fontPath:Ljava/lang/String;

    invoke-static {v0, v1, p0, p3, v2}, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->Native_init(JLcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_recogUIFeature"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const/4 p3, 0x6

    const-string v0, "MATH_GUIDETEXT_CNT"

    invoke-interface {p1, v0, p3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SPenMathManager:: mathGuideCnt : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide p2, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->mNativeMathManager:J

    invoke-static {p2, p3, p1}, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->Native_initGuideCountSharedPreferences(JI)V

    :cond_2
    return-void
.end method

.method public setToolarRect(Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->mToolbarRect:Landroid/graphics/Rect;

    return-void
.end method

.method public showFloatingButtons(ZLandroid/graphics/RectF;)V
    .locals 1

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->mFloatingButtons:Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingButtons;

    if-eqz p2, :cond_2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->mFloatingButtons:Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingButtons;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->mToolbarRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingButtons;->setToolbarRect(Landroid/graphics/Rect;)V

    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SPenMathManager:: showFloatingButtons focus:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MathManager"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public updateFormulaText(Lcom/samsung/android/sdk/pen/document/SpenObjectFormula;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectFormula;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "MathManager"

    const-string v1, "SPenMathManager:: updateFormulaText"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectFormula;->setLatex(Ljava/util/ArrayList;)V

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->mNativeMathManager:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-eqz p2, :cond_0

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->Native_updateMath(JLcom/samsung/android/sdk/pen/document/SpenObjectFormula;)Z

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->mFloatingMathEditor:Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method
