.class public Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DARK_COLOR:I = 0x10101

.field private static final TAG:Ljava/lang/String; = "ConvertToTextManager"


# instance fields
.field private mCanvasLayout:Landroid/view/ViewGroup;

.field private mContext:Landroid/content/Context;

.field private mDocument:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

.field private mFloatingTextResult:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;

.field private mIsDarkModeGUI:Z

.field private mIsDarkModeStroke:Z

.field private mIsExtractText:Z

.field private mNativeConvertToTextView:J

.field private mSpenConvertToTextListener:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->mNativeConvertToTextView:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->mDocument:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->mSpenConvertToTextListener:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->mCanvasLayout:Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->mIsDarkModeGUI:Z

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->mIsDarkModeStroke:Z

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->mIsExtractText:Z

    const/16 p1, 0x8

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->createFloatingTextResult(I)V

    return-void
.end method

.method private static native Native_cancelConvertToText(J)Z
.end method

.method private static native Native_closeControl(J)V
.end method

.method private static native Native_executeConvertToText(J)Z
.end method

.method private static native Native_executeConvertToTextFromPoint(JFF)Z
.end method

.method private static native Native_executeExtractText(J)Z
.end method

.method private static native Native_finalize(J)V
.end method

.method private static native Native_init(JLcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;)V
.end method

.method private static native Native_onClickTextResult(J)V
.end method

.method private static native Native_refreshTextResult(J)Z
.end method

.method private static native Native_setConvertToTextEnabled(JZ)V
.end method

.method private static native Native_setTextTransformEnabled(JZ)V
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;)Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->mDocument:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->mNativeConvertToTextView:J

    return-wide v0
.end method

.method public static synthetic access$200(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->Native_onClickTextResult(J)V

    return-void
.end method

.method public static synthetic access$300(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;)Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->mSpenConvertToTextListener:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextListener;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->mIsExtractText:Z

    return p0
.end method

.method public static synthetic access$500(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;)Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->mFloatingTextResult:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;

    return-object p0
.end method

.method public static synthetic access$600(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->Native_closeControl(J)V

    return-void
.end method

.method private createFloatingTextResult(I)V
    .locals 3

    new-instance v0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->mFloatingTextResult:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;

    iget-boolean v1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->mIsDarkModeGUI:Z

    iget-boolean v2, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->mIsDarkModeStroke:Z

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->construct(ZZ)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->mFloatingTextResult:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;

    new-instance v1, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager$1;-><init>(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->setListener(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult$ActionListener;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->mFloatingTextResult:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method private isSameRectList(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/RectF;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/RectF;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v1, v2, :cond_2

    move v1, v0

    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/RectF;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :cond_2
    :goto_1
    return v0
.end method

.method private onConvertToTextFailed(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->mSpenConvertToTextListener:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextListener;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConvertToTextFailed isNoHandwriting :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConvertToTextManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->mSpenConvertToTextListener:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextListener;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextListener;->onConvertToTextFailed(Z)V

    :cond_0
    return-void
.end method

.method private onConvertToTextRunning(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConvertToTextFailed::onRunning : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConvertToTextManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->mSpenConvertToTextListener:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextListener;->onConvertToTextRunning(Z)V

    :cond_0
    return-void
.end method

.method private onProgressStartEnd(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onProgressStartEnd : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConvertToTextManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->mSpenConvertToTextListener:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextListener;->onProgressStart()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextListener;->onProgressStop()V

    :goto_0
    return-void
.end method

.method private onShowFloatingTextResult(ZZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/RectF;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/RectF;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/RectF;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move v1, p1

    iget-object v2, v0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->mFloatingTextResult:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    invoke-direct {p0, v3}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->createFloatingTextResult(I)V

    iget-object v2, v0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->mCanvasLayout:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    iget-object v4, v0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->mFloatingTextResult:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    if-eqz p6, :cond_2

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->mSpenConvertToTextListener:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextListener;

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextListener;->onUpdateRecognitionLanguage()V

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->updateLayoutDirection()V

    iget-object v2, v0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->mFloatingTextResult:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->getResultRect()Ljava/util/ArrayList;

    iget-object v5, v0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->mFloatingTextResult:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;

    move v6, p2

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-virtual/range {v5 .. v11}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->showPreview(ZLjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_2
    iget-object v2, v0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->mDocument:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    if-eqz v2, :cond_3

    iget-boolean v4, v0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->mIsDarkModeGUI:Z

    if-eqz v4, :cond_3

    iget-boolean v4, v0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->mIsDarkModeStroke:Z

    if-nez v4, :cond_3

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPage(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getBackgroundColor()I

    move-result v2

    iget-object v4, v0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->mFloatingTextResult:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;

    invoke-virtual {v4, v2}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->setBgColorDarkMode(I)V

    :cond_3
    iget-object v2, v0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->mFloatingTextResult:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;

    if-eqz v1, :cond_4

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v2, v0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->mFloatingTextResult:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, v0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->mFloatingTextResult:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->requestTextFocus(Z)V

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->isTextFocused()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->mFloatingTextResult:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->requestTextFocus(Z)V

    :cond_5
    iget-object v2, v0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->mFloatingTextResult:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->clearSpan()V

    iget-object v2, v0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->mFloatingTextResult:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v2, v0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->mSpenConvertToTextListener:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextListener;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextListener;->onFinished()V

    :cond_6
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SpenConvertToTextManager::onFloatingTextResult focus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ConvertToTextManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateLayoutDirection()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/recoguifeature/SPenRecognitionWorker;->getLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/Locale;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-direct {v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->mFloatingTextResult:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;

    invoke-static {v1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->setLayoutDirection(I)V

    return-void
.end method


# virtual methods
.method public cancelConvertToText()Z
    .locals 4

    const-string v0, "ConvertToTextManager"

    const-string v1, "SpenConvertToTextManager::cancelConvertToText"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->mNativeConvertToTextView:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->Native_cancelConvertToText(J)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->mSpenConvertToTextListener:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->mFloatingTextResult:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;

    invoke-virtual {v0, v3}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->requestTextFocus(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->mFloatingTextResult:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->clearSpan()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->mSpenConvertToTextListener:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextListener;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextListener;->onClose()V

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    return v3
.end method

.method public close()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->mFloatingTextResult:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->mFloatingTextResult:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->mCanvasLayout:Landroid/view/ViewGroup;

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->mNativeConvertToTextView:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->Native_finalize(J)V

    :cond_0
    iput-wide v2, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->mNativeConvertToTextView:J

    return-void
.end method

.method public closeControl()V
    .locals 4

    const-string v0, "ConvertToTextManager"

    const-string v1, "SpenConvertToTextManager::closeControl"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->mNativeConvertToTextView:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->Native_closeControl(J)V

    :cond_0
    return-void
.end method

.method public executeConvertToText()Z
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->mFloatingTextResult:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "ConvertToTextManager"

    if-nez v0, :cond_0

    const-string v0, "SpenConvertToTextManager::executeConvertToText FloatingTextResult is already running."

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const-string v0, "SpenConvertToTextManager::executeConvertToText"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->mIsExtractText:Z

    iget-wide v2, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->mNativeConvertToTextView:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->Native_executeConvertToText(J)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    return v1
.end method

.method public executeConvertToTextFromPoint(Landroid/graphics/PointF;)Z
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->mFloatingTextResult:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "ConvertToTextManager"

    if-nez v0, :cond_0

    const-string p1, "SpenConvertToTextManager::executeConvertToTextFromPoint FloatingTextResult is already running."

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SpenConvertToTextManager:: executeConvertToText x:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", y:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->mIsExtractText:Z

    iget-wide v2, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->mNativeConvertToTextView:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    iget v4, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-static {v2, v3, v4, p1}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->Native_executeConvertToTextFromPoint(JFF)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    return v1
.end method

.method public executeExtractText()Z
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->mFloatingTextResult:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    const-string v1, "ConvertToTextManager"

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const-string v0, "SpenConvertToTextManager::executeExtractText FloatingTextResult is already running."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const-string v0, "SpenConvertToTextManager::executeExtractText"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->mIsExtractText:Z

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->mNativeConvertToTextView:J

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-eqz v3, :cond_1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->Native_executeExtractText(J)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public isEditing()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->mFloatingTextResult:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->isTextFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SpenConvertToTextManager::isEditing - mFloatingTextResult.isTextFocused() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->mFloatingTextResult:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->isTextFocused()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_1

    :cond_1
    const-string v2, "null"

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ConvertToTextManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isFloatingViewShown()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->mFloatingTextResult:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setCanvasLayout(Landroid/view/ViewGroup;)V
    .locals 2

    const-string v0, "ConvertToTextManager"

    const-string v1, "SpenConvertToTextManager::setCanvasLayout"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->mCanvasLayout:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->mFloatingTextResult:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->removeParentView()V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->mCanvasLayout:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->mFloatingTextResult:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setConvertToTextEnabled(Z)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->mNativeConvertToTextView:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->Native_setConvertToTextEnabled(JZ)V

    :cond_0
    return-void
.end method

.method public setDarkModeEnabled(ZZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpenConvertToTextManager::setDarkModeEnabled isDarkModeGUI : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isDarkMode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConvertToTextManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->mDocument:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPage(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getBackgroundColor()I

    move-result v0

    const v1, 0xffffff

    and-int/2addr v0, v1

    const v1, 0x10101

    if-ne v0, v1, :cond_0

    const/4 p2, 0x1

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->mIsDarkModeGUI:Z

    if-ne v0, p1, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->mIsDarkModeStroke:Z

    if-eq v0, p2, :cond_2

    :cond_1
    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->mIsDarkModeGUI:Z

    iput-boolean p2, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->mIsDarkModeStroke:Z

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->mFloatingTextResult:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->mFloatingTextResult:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->createFloatingTextResult(I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->mCanvasLayout:Landroid/view/ViewGroup;

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->mFloatingTextResult:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public setDocument(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->mDocument:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    return-void
.end method

.method public setNativeHandle(J)V
    .locals 2

    iput-wide p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->mNativeConvertToTextView:J

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p0}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->Native_init(JLcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;)V

    :cond_0
    return-void
.end method

.method public setRecognitionLanguageList(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "ConvertToTextManager"

    const-string v1, "SpenConvertToTextManager::setRecognitionLanguageList"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/recoguifeature/SPenRecognitionWorker;->setLanguage(Ljava/lang/String;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public setRecognitionListener(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->mSpenConvertToTextListener:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextListener;

    return-void
.end method

.method public setTextTransformEnabled(Z)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->mNativeConvertToTextView:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->Native_setTextTransformEnabled(JZ)V

    return-void
.end method

.method public updateLanguage(Ljava/lang/CharSequence;)V
    .locals 4

    const-string v0, "ConvertToTextManager"

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SpenConvertToTextManager::updateLanguage - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/recoguifeature/SPenRecognitionWorker;->setLanguage(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->mFloatingTextResult:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->clearSpan()V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/recoguifeature/SPenRecognitionWorker;->initializeSelf(Landroid/content/Context;)V

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->mNativeConvertToTextView:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->Native_refreshTextResult(J)Z

    :cond_1
    return-void

    :cond_2
    :goto_0
    const-string p1, "SpenConvertToTextManager::updateLanguage text == null || text.length() <= 0"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
