.class public Lcom/samsung/android/sdk/pen/widget/SpenTextManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_TEXT_SIZE_DELTA:I = -0x80000000

.field private static final DELAY_TIME_BLINK_OFF:I = 0x12c

.field private static final DELAY_TIME_HIDE_SOFT_INPUT:J = 0xc8L

.field private static final DELAY_TIME_SET_CURSOR_ANCHOR_POSITION:I = 0x3e8

.field private static final DELAY_TIME_UPDATE_SUGGESTION_POPUP:I = 0x258

.field private static final TAG:Ljava/lang/String; = "SpenTextManager"


# instance fields
.field private mActionListener:Lcom/samsung/android/sdk/pen/widget/listener/SpenTextManagerActionListener;

.field public mBlinkOffRunnable:Ljava/lang/Runnable;

.field private mControlObjectListener:Lcom/samsung/android/sdk/pen/control/SpenControlObjectListener;

.field private mCurEnd:I

.field private mCurStart:I

.field private mCursorChangedListener:Lcom/samsung/android/sdk/pen/text/SpenCursorChangedListener;

.field private mCursorObject:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

.field private mHandler:Landroid/os/Handler;

.field private mHasWindowFocus:Z

.field private mHashTag:Lcom/samsung/android/sdk/pen/widget/SpenHashTag;

.field public mInputManager:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

.field private mIsAutoBlinkOffOnWindowFocusChanged:Z

.field private mIsCursorBlinkOffByWindowFocus:Z

.field private mIsEditable:Z

.field private mNativeTextManager:J

.field public mSetCursorAnchorPositionRunnable:Ljava/lang/Runnable;

.field private mSetSelectionListener:Lcom/samsung/android/sdk/pen/text/SpenInputManager$SetSelectionListener;

.field private mSuggestionListener:Lcom/samsung/android/sdk/pen/text/SpenInputManager$SuggestionListener;

.field private mTextScaleListener:Lcom/samsung/android/sdk/pen/text/SpenTextScaleListener;

.field private mTextSearch:Lcom/samsung/android/sdk/pen/widget/edittext/SpenTextSearch;

.field private mTextSizeDelta:I

.field public mUpdateSuggestionPopup:Ljava/lang/Runnable;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mNativeTextManager:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mInputManager:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mCursorChangedListener:Lcom/samsung/android/sdk/pen/text/SpenCursorChangedListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mActionListener:Lcom/samsung/android/sdk/pen/widget/listener/SpenTextManagerActionListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mControlObjectListener:Lcom/samsung/android/sdk/pen/control/SpenControlObjectListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mSuggestionListener:Lcom/samsung/android/sdk/pen/text/SpenInputManager$SuggestionListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mSetSelectionListener:Lcom/samsung/android/sdk/pen/text/SpenInputManager$SetSelectionListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mTextScaleListener:Lcom/samsung/android/sdk/pen/text/SpenTextScaleListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mHashTag:Lcom/samsung/android/sdk/pen/widget/SpenHashTag;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mTextSearch:Lcom/samsung/android/sdk/pen/widget/edittext/SpenTextSearch;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mCursorObject:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mIsEditable:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mCurStart:I

    iput v1, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mCurEnd:I

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mIsCursorBlinkOffByWindowFocus:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mHasWindowFocus:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mIsAutoBlinkOffOnWindowFocusChanged:Z

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mTextSizeDelta:I

    new-instance v0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager$1;-><init>(Lcom/samsung/android/sdk/pen/widget/SpenTextManager;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mBlinkOffRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager$2;-><init>(Lcom/samsung/android/sdk/pen/widget/SpenTextManager;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mSetCursorAnchorPositionRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager$3;-><init>(Lcom/samsung/android/sdk/pen/widget/SpenTextManager;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mUpdateSuggestionPopup:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mInputManager:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    new-instance v1, Lcom/samsung/android/sdk/pen/widget/a;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/pen/widget/a;-><init>(Lcom/samsung/android/sdk/pen/widget/SpenTextManager;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->setActionListener(Lcom/samsung/android/sdk/pen/text/SpenInputManager$InputManagerActionListener;)V

    new-instance v0, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;-><init>(Landroid/view/View;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mHashTag:Lcom/samsung/android/sdk/pen/widget/SpenHashTag;

    new-instance v1, Lcom/samsung/android/sdk/pen/widget/SpenTextManager$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager$4;-><init>(Lcom/samsung/android/sdk/pen/widget/SpenTextManager;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->setHashTagListener(Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagListener;)V

    new-instance v0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager$5;-><init>(Lcom/samsung/android/sdk/pen/widget/SpenTextManager;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mSuggestionListener:Lcom/samsung/android/sdk/pen/text/SpenInputManager$SuggestionListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager$6;-><init>(Lcom/samsung/android/sdk/pen/widget/SpenTextManager;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mSetSelectionListener:Lcom/samsung/android/sdk/pen/text/SpenInputManager$SetSelectionListener;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mInputManager:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mSuggestionListener:Lcom/samsung/android/sdk/pen/text/SpenInputManager$SuggestionListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->setSuggestionListener(Lcom/samsung/android/sdk/pen/text/SpenInputManager$SuggestionListener;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mInputManager:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mSetSelectionListener:Lcom/samsung/android/sdk/pen/text/SpenInputManager$SetSelectionListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->setSelectionListener(Lcom/samsung/android/sdk/pen/text/SpenInputManager$SetSelectionListener;)V

    new-instance v0, Lcom/samsung/android/sdk/pen/widget/edittext/SpenTextSearch;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/widget/edittext/SpenTextSearch;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mTextSearch:Lcom/samsung/android/sdk/pen/widget/edittext/SpenTextSearch;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mView:Landroid/view/View;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->updateFontManager()V

    return-void
.end method

.method private static native Native_finalize(J)V
.end method

.method private static native Native_getCursorIndex(JLcom/samsung/android/sdk/pen/document/SpenObjectShape;FF)I
.end method

.method private static native Native_getCursorRect(JII)Landroid/graphics/RectF;
.end method

.method private static native Native_getCursorRectOnScreenCoordinates(JII)Landroid/graphics/RectF;
.end method

.method private static native Native_getTextScale(J)F
.end method

.method private static native Native_getTextSizeDelta(J)I
.end method

.method private static native Native_highlightSuggestion(JIIII)V
.end method

.method private static native Native_init(JLcom/samsung/android/sdk/pen/widget/SpenTextManager;)V
.end method

.method private static native Native_isAutoScrollEnabled(J)Z
.end method

.method private static native Native_isCursorBlinkEnabled(J)Z
.end method

.method private static native Native_scrollToCursor(J)V
.end method

.method private static native Native_setAutoScrollEnabled(JZ)V
.end method

.method private static native Native_setCursorBlink(JZ)V
.end method

.method private static native Native_setDoubleTapSelectionEnabled(JZ)V
.end method

.method private static native Native_setHyperTextEnabled(JZ)V
.end method

.method private static native Native_setSelection(JII)V
.end method

.method private static native Native_setTextScale(JF)V
.end method

.method public static synthetic a(Lcom/samsung/android/sdk/pen/widget/SpenTextManager;Landroidx/core/view/inputmethod/InputContentInfoCompat;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->lambda$new$0(Landroidx/core/view/inputmethod/InputContentInfoCompat;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/widget/SpenTextManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->blinkOff()V

    return-void
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/pen/widget/SpenTextManager;)Lcom/samsung/android/sdk/pen/widget/listener/SpenTextManagerActionListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mActionListener:Lcom/samsung/android/sdk/pen/widget/listener/SpenTextManagerActionListener;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/samsung/android/sdk/pen/widget/SpenTextManager;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mNativeTextManager:J

    return-wide v0
.end method

.method public static synthetic access$300(JII)Landroid/graphics/RectF;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->Native_getCursorRectOnScreenCoordinates(JII)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$400(JIIII)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->Native_highlightSuggestion(JIIII)V

    return-void
.end method

.method public static synthetic access$500(JII)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->Native_setSelection(JII)V

    return-void
.end method

.method private blinkOff()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->isCursorBlinking()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mIsCursorBlinkOffByWindowFocus:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "blinkOff : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mIsCursorBlinkOffByWindowFocus:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenTextManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mIsCursorBlinkOffByWindowFocus:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->setCursorBlink(Z)V

    :cond_0
    return-void
.end method

.method private blinkOn()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "blinkOn : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mIsCursorBlinkOffByWindowFocus:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenTextManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mIsCursorBlinkOffByWindowFocus:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->setCursorBlink(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mIsCursorBlinkOffByWindowFocus:Z

    :cond_0
    return-void
.end method

.method private isCursorBlinkEnabled()Z
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mNativeTextManager:J

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->Native_isCursorBlinkEnabled(J)Z

    move-result v0

    return v0
.end method

.method private synthetic lambda$new$0(Landroidx/core/view/inputmethod/InputContentInfoCompat;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mActionListener:Lcom/samsung/android/sdk/pen/widget/listener/SpenTextManagerActionListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/widget/listener/SpenTextManagerActionListener;->onCommitContent(Landroidx/core/view/inputmethod/InputContentInfoCompat;)V

    :cond_0
    return-void
.end method

.method private onHyperTextClicked(Ljava/lang/String;IILcom/samsung/android/sdk/pen/document/SpenObjectShape;Lcom/samsung/android/sdk/pen/document/textspan/SpenHyperTextSpan;)V
    .locals 8
    .param p4    # Lcom/samsung/android/sdk/pen/document/SpenObjectShape;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/samsung/android/sdk/pen/document/textspan/SpenHyperTextSpan;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onHyperTextClicked : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenTextManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mActionListener:Lcom/samsung/android/sdk/pen/widget/listener/SpenTextManagerActionListener;

    if-eqz v2, :cond_0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/sdk/pen/widget/listener/SpenTextManagerActionListener;->onHyperTextClicked(Ljava/lang/String;IILcom/samsung/android/sdk/pen/document/SpenObjectShape;Lcom/samsung/android/sdk/pen/document/textspan/SpenHyperTextSpan;)V

    :cond_0
    return-void
.end method

.method private onItemClicked(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onItemClicked : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenTextManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mActionListener:Lcom/samsung/android/sdk/pen/widget/listener/SpenTextManagerActionListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/widget/listener/SpenTextManagerActionListener;->onItemClicked(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;II)V

    :cond_0
    return-void
.end method

.method private onSelectionAreaLongPressed()V
    .locals 2

    const-string v0, "SpenTextManager"

    const-string v1, "onSelectionAreaLongPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mActionListener:Lcom/samsung/android/sdk/pen/widget/listener/SpenTextManagerActionListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/widget/listener/SpenTextManagerActionListener;->onSelectionAreaLongPressed()V

    :cond_0
    return-void
.end method

.method private onVibrate(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mView:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/pen/text/SpenTextUtils;->performHapticFeedback(Landroid/view/View;I)V

    return-void
.end method

.method private searchText(Ljava/lang/String;Ljava/lang/String;[FLjava/util/ArrayList;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[F",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/widget/edittext/SpenTextSearch$SearchInfo;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mTextSearch:Lcom/samsung/android/sdk/pen/widget/edittext/SpenTextSearch;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/pen/widget/edittext/SpenTextSearch;->search(Ljava/lang/String;Ljava/lang/String;[FLjava/util/ArrayList;)I

    move-result p1

    return p1
.end method

.method private updateFontManager()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/text/SpenFontManager;->setSystemFontPath(Landroid/content/Context;)Z

    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/pen/text/SpenFontManager;->setLocaleList()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 5

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mNativeTextManager:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->Native_finalize(J)V

    iput-wide v2, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mNativeTextManager:J

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mHandler:Landroid/os/Handler;

    :cond_1
    iput-object v1, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mCursorObject:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mActionListener:Lcom/samsung/android/sdk/pen/widget/listener/SpenTextManagerActionListener;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mCursorChangedListener:Lcom/samsung/android/sdk/pen/text/SpenCursorChangedListener;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mSuggestionListener:Lcom/samsung/android/sdk/pen/text/SpenInputManager$SuggestionListener;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mSetSelectionListener:Lcom/samsung/android/sdk/pen/text/SpenInputManager$SetSelectionListener;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mControlObjectListener:Lcom/samsung/android/sdk/pen/control/SpenControlObjectListener;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mHashTag:Lcom/samsung/android/sdk/pen/widget/SpenHashTag;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->close()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mHashTag:Lcom/samsung/android/sdk/pen/widget/SpenHashTag;

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mInputManager:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->close()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mInputManager:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    :cond_3
    iput-object v1, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mView:Landroid/view/View;

    return-void
.end method

.method public finishComposingText(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mInputManager:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->finishComposingText(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;)V

    return-void
.end method

.method public getAutoBlinkOffOnWindowFocusChanged()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mIsAutoBlinkOffOnWindowFocusChanged:Z

    return v0
.end method

.method public getCurosrIndex(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;Landroid/graphics/PointF;)I
    .locals 3
    .param p1    # Lcom/samsung/android/sdk/pen/document/SpenObjectShape;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mNativeTextManager:J

    iget v2, p2, Landroid/graphics/PointF;->x:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-static {v0, v1, p1, v2, p2}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->Native_getCursorIndex(JLcom/samsung/android/sdk/pen/document/SpenObjectShape;FF)I

    move-result p1

    return p1
.end method

.method public getCursorRect(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;I)Landroid/graphics/RectF;
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mNativeTextManager:J

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRuntimeHandle()I

    move-result p1

    invoke-static {v0, v1, p1, p2}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->Native_getCursorRect(JII)Landroid/graphics/RectF;

    move-result-object p1

    return-object p1
.end method

.method public getCursorRectOnScreenCoordinates(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;I)Landroid/graphics/RectF;
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mNativeTextManager:J

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRuntimeHandle()I

    move-result p1

    invoke-static {v0, v1, p1, p2}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->Native_getCursorRectOnScreenCoordinates(JII)Landroid/graphics/RectF;

    move-result-object p1

    return-object p1
.end method

.method public getSelectedObject()Lcom/samsung/android/sdk/pen/document/SpenObjectBase;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTextScale()F
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mNativeTextManager:J

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->Native_getTextScale(J)F

    move-result v0

    return v0
.end method

.method public getTextSizeDelta()I
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mTextSizeDelta:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mNativeTextManager:J

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->Native_getTextSizeDelta(J)I

    move-result v0

    return v0
.end method

.method public hideHashTagBubble()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mHashTag:Lcom/samsung/android/sdk/pen/widget/SpenHashTag;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->hideConfirmView()V

    :cond_0
    return-void
.end method

.method public isAutoFocusEnabled()Z
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mNativeTextManager:J

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->Native_isAutoScrollEnabled(J)Z

    move-result v0

    return v0
.end method

.method public isCursorBlinking()Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->isCursorBlinkEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mIsCursorBlinkOffByWindowFocus:Z

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

.method public onAttachedToWindow()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mHashTag:Lcom/samsung/android/sdk/pen/widget/SpenHashTag;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->onAttachedToWindow()V

    :cond_0
    return-void
.end method

.method public onCheckIsTextEditor()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mInputManager:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->onCheckIsTextEditor()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged()V
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->updateFontManager()V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->hideHashTagBubble()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mInputManager:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->isSuggestionPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mInputManager:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->dismissSuggestionPopup(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mUpdateSuggestionPopup:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mUpdateSuggestionPopup:Ljava/lang/Runnable;

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onControlObjectButtonClicked(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mControlObjectListener:Lcom/samsung/android/sdk/pen/control/SpenControlObjectListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/control/SpenControlObjectListener;->onItemButtonClicked(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onControlObjectClicked(ILcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mControlObjectListener:Lcom/samsung/android/sdk/pen/control/SpenControlObjectListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/control/SpenControlObjectListener;->onItemClicked(ILcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onControlObjectLongClicked(ILcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mControlObjectListener:Lcom/samsung/android/sdk/pen/control/SpenControlObjectListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/control/SpenControlObjectListener;->onItemLongClicked(ILcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mInputManager:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onCursorChanged(II)V
    .locals 2

    iput p1, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mCurStart:I

    iput p2, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mCurEnd:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mInputManager:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->getWNote()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mInputManager:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->getWNote()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/text/SpenTextUtils;->isUndoRedoIncompletely(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mHashTag:Lcom/samsung/android/sdk/pen/widget/SpenHashTag;

    if-ne p1, p2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mCursorObject:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->updateHashTag(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->updateHashTag()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mInputManager:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->setSelection(II)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mCursorChangedListener:Lcom/samsung/android/sdk/pen/text/SpenCursorChangedListener;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/text/SpenCursorChangedListener;->onChanged(II)V

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_3

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mSetCursorAnchorPositionRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mSetCursorAnchorPositionRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void
.end method

.method public onCursorObjectChanged(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;Z)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mCursorObject:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mInputManager:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    iget-boolean v1, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mIsEditable:Z

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->setObjectText(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;)V

    return-void
.end method

.method public onInsertLineFeed(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mInputManager:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->onInsertLineFeed(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;I)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mInputManager:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mInputManager:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mInputManager:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mInputManager:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onLayout(Z)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->updateHashTagPosition()V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mSetCursorAnchorPositionRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onParentTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mHashTag:Lcom/samsung/android/sdk/pen/widget/SpenHashTag;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->onParentTouchEvent(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mInputManager:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    return-void
.end method

.method public onShowSoftInput(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mInputManager:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->showSoftInput()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->isInputMethodShown(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mInputManager:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->hideSoftInput(J)V

    goto :goto_0

    :cond_1
    const-string p1, "SpenTextManager"

    const-string v0, "onShowSoftInput(false) is skipped!"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onSuggestionTextClicked(Lcom/samsung/android/sdk/pen/document/textspan/SpenSuggestionSpan;Landroid/graphics/RectF;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mInputManager:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->onSuggestionTextClicked(Lcom/samsung/android/sdk/pen/document/textspan/SpenSuggestionSpan;Landroid/graphics/RectF;)V

    :cond_0
    return-void
.end method

.method public onTextScaleChanged(F)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mTextScaleListener:Lcom/samsung/android/sdk/pen/text/SpenTextScaleListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/text/SpenTextScaleListener;->onTextScaleChanged(F)V

    return-void
.end method

.method public onViewClicked()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mInputManager:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->viewClicked()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mNativeTextManager:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mIsAutoBlinkOffOnWindowFocusChanged:Z

    const-string v1, "onWindowFocusChanged : "

    const-string v2, "SpenTextManager"

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", isAutoBlinkOff :"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mIsAutoBlinkOffOnWindowFocusChanged:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mHasWindowFocus:Z

    if-eq v0, p1, :cond_3

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mHasWindowFocus:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mBlinkOffRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->blinkOn()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mBlinkOffRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public setActionListener(Lcom/samsung/android/sdk/pen/widget/listener/SpenTextManagerActionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mActionListener:Lcom/samsung/android/sdk/pen/widget/listener/SpenTextManagerActionListener;

    return-void
.end method

.method public setAutoBlinkOffOnWindowFocusChanged(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAutoBlinkOffOnWindowFocusChanged : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenTextManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mIsAutoBlinkOffOnWindowFocusChanged:Z

    return-void
.end method

.method public setAutoFocusEnabled(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAutoFocusEnabled : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenTextManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mNativeTextManager:J

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->Native_setAutoScrollEnabled(JZ)V

    return-void
.end method

.method public setControlObjectListener(Lcom/samsung/android/sdk/pen/control/SpenControlObjectListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mControlObjectListener:Lcom/samsung/android/sdk/pen/control/SpenControlObjectListener;

    return-void
.end method

.method public setCursorAnchorPosition()V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->getSelectedObject()Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getCursorPosition()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getCursorPosition()I

    move-result v1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getSelectedEnd()I

    move-result v1

    :goto_1
    if-ltz v1, :cond_2

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->getCursorRectOnScreenCoordinates(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;I)Landroid/graphics/RectF;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v2, Landroid/graphics/PointF;

    const/4 v3, 0x0

    aget v3, v1, v3

    int-to-float v3, v3

    const/4 v4, 0x1

    aget v1, v1, v4

    int-to-float v1, v1

    invoke-direct {v2, v3, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->setCursorAnchorPosition(Landroid/graphics/PointF;Landroid/graphics/RectF;)V

    :cond_2
    return-void
.end method

.method public setCursorAnchorPosition(Landroid/graphics/PointF;Landroid/graphics/RectF;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mInputManager:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->setCursorAnchorPosition(Landroid/graphics/PointF;Landroid/graphics/RectF;)V

    :cond_0
    return-void
.end method

.method public setCursorBlink(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setCursorBlink :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenTextManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mNativeTextManager:J

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->Native_setCursorBlink(JZ)V

    return-void
.end method

.method public setCursorChangedListener(Lcom/samsung/android/sdk/pen/text/SpenCursorChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mCursorChangedListener:Lcom/samsung/android/sdk/pen/text/SpenCursorChangedListener;

    return-void
.end method

.method public setDoubleTapSelectionEnabled(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDoubleTapSelectionEnabled : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenTextManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mNativeTextManager:J

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->Native_setDoubleTapSelectionEnabled(JZ)V

    return-void
.end method

.method public setEditable(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setEditable :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenTextManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mIsEditable:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mIsEditable:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mInputManager:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mCursorObject:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->setObjectText(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mInputManager:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    iget v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mCurStart:I

    iget v1, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mCurEnd:I

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->setSelection(II)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mInputManager:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->setObjectText(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setHashTagEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mHashTag:Lcom/samsung/android/sdk/pen/widget/SpenHashTag;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setHyperTextEnabled(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setHyperTextEnabled : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenTextManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mNativeTextManager:J

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->Native_setHyperTextEnabled(JZ)V

    return-void
.end method

.method public setNativeHandle(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mNativeTextManager:J

    invoke-static {p1, p2, p0}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->Native_init(JLcom/samsung/android/sdk/pen/widget/SpenTextManager;)V

    return-void
.end method

.method public setSoftInputListener(Lcom/samsung/android/sdk/pen/text/SpenSoftInputListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mInputManager:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->setSoftInputListener(Lcom/samsung/android/sdk/pen/text/SpenSoftInputListener;)V

    return-void
.end method

.method public setTagList(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mHashTag:Lcom/samsung/android/sdk/pen/widget/SpenHashTag;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->setTagList(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public setTextInputBlock(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mInputManager:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->setTextInputBlock(Z)V

    :cond_0
    return-void
.end method

.method public setTextLimitListener(Lcom/samsung/android/sdk/pen/text/SpenTextLimitListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mInputManager:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->setTextLimitListener(Lcom/samsung/android/sdk/pen/text/SpenTextLimitListener;)V

    return-void
.end method

.method public setTextScale(F)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setTextScale = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenTextManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mNativeTextManager:J

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->Native_setTextScale(JF)V

    return-void
.end method

.method public setTextScaleListener(Lcom/samsung/android/sdk/pen/text/SpenTextScaleListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mTextScaleListener:Lcom/samsung/android/sdk/pen/text/SpenTextScaleListener;

    return-void
.end method

.method public updateHashTagPosition()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mHashTag:Lcom/samsung/android/sdk/pen/widget/SpenHashTag;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->updateConfirmViewPosition()V

    :cond_0
    return-void
.end method

.method public updateSuggestionPopup()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mInputManager:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mNativeTextManager:J

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->Native_scrollToCursor(J)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->getSelectedObject()Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    move-result-object v0

    if-eqz v0, :cond_2

    instance-of v1, v0, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getCursorPosition()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getCursorPosition()I

    move-result v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getSelectedEnd()I

    move-result v1

    :goto_0
    if-ltz v1, :cond_2

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->getCursorRectOnScreenCoordinates(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;I)Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mInputManager:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->updateSuggestionPopup(Landroid/graphics/RectF;Z)V

    :cond_2
    return-void
.end method
