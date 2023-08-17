.class public Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;
.super Lcom/samsung/android/sdk/pen/widget/SpenTextManager;
.source "SourceFile"


# static fields
.field public static final DEFAULT_TEXT_SIZE_DELTA_IN_PHONE:I = 0x0

.field public static final DEFAULT_TEXT_SIZE_DELTA_IN_TABLET:I = -0x5

.field private static final TAG:Ljava/lang/String; = "SpenNoteTextManager"


# instance fields
.field private mDocument:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

.field private mIsShowSoftInputDisabled:Z

.field private mNativeNoteTextManager:J


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;-><init>(Landroid/view/View;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;->mNativeNoteTextManager:J

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;->mDocument:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;->mIsShowSoftInputDisabled:Z

    return-void
.end method

.method private static native Native_calculateInsertedTextCountWhenInsertEmptyBodyTextTo(JILcom/samsung/android/sdk/pen/worddoc/SpenWPage;)I
.end method

.method private static native Native_calculateTextSizeDelta(JI)I
.end method

.method private static native Native_clearBodyTextIn(JI)Z
.end method

.method private static native Native_copyBodyTextFrom(JI)Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;
.end method

.method private static native Native_getCursorIndexToInsertIntoBodyText(JFF)I
.end method

.method private static native Native_getLineCountFromBodyTextBottom(JFF)I
.end method

.method private static native Native_getLineRectOfBodyText(JLcom/samsung/android/sdk/pen/worddoc/SpenWPage;F)Landroid/graphics/RectF;
.end method

.method private static native Native_getPageIndexByCursorOfBodyText(JI)I
.end method

.method private static native Native_insertBodyTextTo(JIIFLcom/samsung/android/sdk/pen/document/SpenObjectBase;I)Z
.end method

.method private static native Native_insertEmptyBodyTextTo(JIIF)Z
.end method

.method private static native Native_insertEmptyBodyTextsTo(JILjava/util/ArrayList;IF)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;IF)Z"
        }
    .end annotation
.end method

.method private static native Native_lockBodyTextPage(J)V
.end method

.method private static native Native_moveBodyTextTo(JIIF)Z
.end method

.method private static native Native_removeBodyTextFrom(JI)Z
.end method

.method private static native Native_removeBodyTextsFrom(JLjava/util/ArrayList;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation
.end method

.method private static native Native_setCursorObstacleRect(JIIII)V
.end method

.method private static native Native_setCursorOnScreen(JLcom/samsung/android/sdk/pen/document/SpenObjectShape;I)V
.end method

.method private static native Native_unlockBodyTextPage(J)V
.end method

.method private static native Native_updateObjectSpanPosition(JII)V
.end method

.method private static native Native_updateTextRange(J)V
.end method

.method public static calculateTextSizeDelta(Lcom/samsung/android/sdk/pen/view/SpenDisplay;I)I
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/view/SpenDisplay;->handle:J

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;->Native_calculateTextSizeDelta(JI)I

    move-result p0

    return p0
.end method

.method public static getDefaultTextSizeDeltaByDevice(Landroid/content/Context;)I
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/view/SpenConfiguration;->isTabletUX(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, -0x5

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public calculateInsertedTextCountWhenInsertEmptyBodyTextTo(ILcom/samsung/android/sdk/pen/worddoc/SpenWPage;)I
    .locals 2
    .param p2    # Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;->mNativeNoteTextManager:J

    invoke-static {v0, v1, p1, p2}, Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;->Native_calculateInsertedTextCountWhenInsertEmptyBodyTextTo(JILcom/samsung/android/sdk/pen/worddoc/SpenWPage;)I

    move-result p1

    return p1
.end method

.method public clearBodyTextIn(I)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;->mDocument:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getBodyText()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->finishComposingText(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;)V

    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;->mNativeNoteTextManager:J

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;->Native_clearBodyTextIn(JI)Z

    move-result p1

    return p1
.end method

.method public close()V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;->mNativeNoteTextManager:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iput-wide v2, p0, Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;->mNativeNoteTextManager:J

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->hideHashTagBubble()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;->mDocument:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->close()V

    return-void
.end method

.method public copyBodyTextFrom(I)Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;->mNativeNoteTextManager:J

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;->Native_copyBodyTextFrom(JI)Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object p1

    return-object p1
.end method

.method public getCursorIndexToInsertIntoBodyText(Landroid/graphics/PointF;)I
    .locals 3

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;->mNativeNoteTextManager:J

    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-static {v0, v1, v2, p1}, Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;->Native_getCursorIndexToInsertIntoBodyText(JFF)I

    move-result p1

    return p1
.end method

.method public getLineCountFromBodyTextBottom(Landroid/graphics/PointF;)I
    .locals 3

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;->mNativeNoteTextManager:J

    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-static {v0, v1, v2, p1}, Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;->Native_getLineCountFromBodyTextBottom(JFF)I

    move-result p1

    return p1
.end method

.method public getLineRectOfBodyText(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;F)Landroid/graphics/RectF;
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;->mNativeNoteTextManager:J

    invoke-static {v0, v1, p1, p2}, Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;->Native_getLineRectOfBodyText(JLcom/samsung/android/sdk/pen/worddoc/SpenWPage;F)Landroid/graphics/RectF;

    move-result-object p1

    return-object p1
.end method

.method public getPageIndexByCursorOfBodyText(I)I
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;->mNativeNoteTextManager:J

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;->Native_getPageIndexByCursorOfBodyText(JI)I

    move-result p1

    return p1
.end method

.method public getSelectedObject()Lcom/samsung/android/sdk/pen/document/SpenObjectBase;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;->mDocument:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getSelectedObject()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    if-eqz v0, :cond_1

    instance-of v2, v0, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    if-eqz v2, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    :cond_1
    return-object v1
.end method

.method public insertBodyTextTo(IIFLcom/samsung/android/sdk/pen/document/SpenObjectTextBox;I)Z
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;->mDocument:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getBodyText()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->finishComposingText(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;)V

    :cond_0
    iget-wide v1, p0, Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;->mNativeNoteTextManager:J

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    invoke-static/range {v1 .. v7}, Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;->Native_insertBodyTextTo(JIIFLcom/samsung/android/sdk/pen/document/SpenObjectBase;I)Z

    move-result p1

    return p1
.end method

.method public insertEmptyBodyTextTo(IIF)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;->mDocument:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getBodyText()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->finishComposingText(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;)V

    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;->mNativeNoteTextManager:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;->Native_insertEmptyBodyTextTo(JIIF)Z

    move-result p1

    return p1
.end method

.method public lockBodyTextPage()V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;->mNativeNoteTextManager:J

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;->Native_lockBodyTextPage(J)V

    return-void
.end method

.method public moveBodyTextTo(IIF)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;->mDocument:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getBodyText()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->finishComposingText(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;)V

    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;->mNativeNoteTextManager:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;->Native_moveBodyTextTo(JIIF)Z

    move-result p1

    return p1
.end method

.method public onShowSoftInput(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;->mIsShowSoftInputDisabled:Z

    if-eqz v0, :cond_0

    const-string p1, "SpenNoteTextManager"

    const-string v0, "[STT] skip onShowSoftInput on working STT"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->onShowSoftInput(Z)V

    return-void
.end method

.method public removeBodyTextFrom(I)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;->mDocument:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getBodyText()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->finishComposingText(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;)V

    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;->mNativeNoteTextManager:J

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;->Native_removeBodyTextFrom(JI)Z

    move-result p1

    return p1
.end method

.method public removeBodyTextFrom(Ljava/util/ArrayList;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;->mDocument:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getBodyText()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->finishComposingText(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;)V

    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;->mNativeNoteTextManager:J

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;->Native_removeBodyTextsFrom(JLjava/util/ArrayList;)Z

    move-result p1

    return p1
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mInputManager:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->sendKeyEvent(Landroid/view/KeyEvent;)V

    :cond_0
    return-void
.end method

.method public setCursorObstacleRect(Landroid/graphics/Rect;)V
    .locals 6

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;->mNativeNoteTextManager:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;->Native_setCursorObstacleRect(JIIII)V

    :cond_0
    return-void
.end method

.method public setCursorOnScreen(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;I)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;->mNativeNoteTextManager:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1, p1, p2}, Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;->Native_setCursorOnScreen(JLcom/samsung/android/sdk/pen/document/SpenObjectShape;I)V

    :cond_0
    return-void
.end method

.method public setDocument(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;->mDocument:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->mInputManager:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->setDocument(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    return-void
.end method

.method public setNativeHandle(J)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->setNativeHandle(J)V

    iput-wide p1, p0, Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;->mNativeNoteTextManager:J

    return-void
.end method

.method public setShowSoftInputDisabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;->mIsShowSoftInputDisabled:Z

    return-void
.end method

.method public unlockBodyTextPage()V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;->mNativeNoteTextManager:J

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;->Native_unlockBodyTextPage(J)V

    return-void
.end method

.method public updateBodyObjectSpanPosition(II)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;->mNativeNoteTextManager:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {v0, v1, p1, p2}, Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;->Native_updateObjectSpanPosition(JII)V

    return-void
.end method

.method public updateBodyTextPage()V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;->mNativeNoteTextManager:J

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;->Native_updateTextRange(J)V

    return-void
.end method
