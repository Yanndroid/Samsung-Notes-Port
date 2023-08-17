.class public Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;
.super Landroid/view/inputmethod/BaseInputConnection;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection$TextComposingListener;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "SpenInputConnection"


# instance fields
.field private mBatchEditNesting:I

.field private mDebugLevel:Ljava/lang/Integer;

.field private mDeletedSurroundingTextLength:I

.field private mDisallowInputText:Z

.field private mEditable:Landroid/text/Editable;

.field private mIsCommitText:Z

.field private mIsComposingText:Z

.field private mIsDeletedText:Z

.field private mKeyListener:Landroid/text/method/KeyListener;

.field private mListener:Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection$TextComposingListener;

.field private mSurroundingTextLength:I

.field private mTextView:Landroid/view/View;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection$TextComposingListener;)V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->mDebugLevel:Ljava/lang/Integer;

    iput v0, p0, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->mBatchEditNesting:I

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->mIsCommitText:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->mIsDeletedText:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->mIsComposingText:Z

    iput v0, p0, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->mSurroundingTextLength:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->mDeletedSurroundingTextLength:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->mListener:Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection$TextComposingListener;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->mTextView:Landroid/view/View;

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->mListener:Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection$TextComposingListener;

    :cond_0
    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->mDisallowInputText:Z

    invoke-static {}, Lcom/samsung/android/sdk/pen/view/SpenDisplay;->getDebugLevel()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->mDebugLevel:Ljava/lang/Integer;

    return-void
.end method

.method private beginCommit(Ljava/lang/CharSequence;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->mListener:Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection$TextComposingListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection$TextComposingListener;->onCommitText(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->mIsDeletedText:Z

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->mIsCommitText:Z

    return p1
.end method

.method private beginComposing()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->mIsDeletedText:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->mIsComposingText:Z

    return-void
.end method

.method private endCommit()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->mIsCommitText:Z

    return-void
.end method

.method private endComposing()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->mIsComposingText:Z

    return-void
.end method

.method private printLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->mDebugLevel:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->DBG:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private sendKeyEvent(I)V
    .locals 16

    move-object/from16 v0, p0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    new-instance v15, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/16 v12, 0x16

    move-object v1, v15

    move-wide v2, v13

    move-wide v4, v13

    move/from16 v7, p1

    invoke-direct/range {v1 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {v0, v15}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    new-instance v15, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v6, 0x1

    move-object v1, v15

    invoke-direct/range {v1 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {v0, v15}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    return-void
.end method


# virtual methods
.method public beginBatchEdit()Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->mBatchEditNesting:I

    if-ltz v0, :cond_1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->mBatchEditNesting:I

    const-string v0, "SpenInputConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "beginBatchEdit() mBatchEditNesting : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->mBatchEditNesting:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->mListener:Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection$TextComposingListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection$TextComposingListener;->onBeginBatchEdit()Z

    move-result v0

    monitor-exit p0

    return v0

    :cond_0
    monitor-exit p0

    return v1

    :cond_1
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public beginDelete()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->mIsDeletedText:Z

    return-void
.end method

.method public canInputText()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->mDisallowInputText:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public clearBatchEdit()V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "SpenInputConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearBatchEdit() mBatchEditNesting : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->mBatchEditNesting:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->mBatchEditNesting:I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearMetaKeyStates(I)Z
    .locals 3

    const-string v0, "SpenInputConnection"

    const-string v1, "clearMetaKeyStates()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->mKeyListener:Landroid/text/method/KeyListener;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->mTextView:Landroid/view/View;

    if-eqz v2, :cond_1

    :try_start_0
    invoke-interface {v1, v2, v0, p1}, Landroid/text/method/KeyListener;->clearMetaKeyState(Landroid/view/View;Landroid/text/Editable;I)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/AbstractMethodError;->printStackTrace()V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->mTextView:Landroid/view/View;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->mListener:Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection$TextComposingListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->mKeyListener:Landroid/text/method/KeyListener;

    return-void
.end method

.method public commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->mListener:Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection$TextComposingListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection$TextComposingListener;->onCommitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/inputmethod/BaseInputConnection;->commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z

    move-result p1

    return p1
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "commitText() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", newCursorPosition : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenInputConnection"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->mDisallowInputText:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->beginCommit(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->endCommit()V

    const/4 p1, 0x1

    return p1
.end method

.method public deleteSurroundingText(II)Z
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteSurroundingText() beforeLength : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", afterLength : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenInputConnection"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->mDisallowInputText:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v3

    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v4

    if-ltz v3, :cond_e

    if-gez v4, :cond_2

    goto/16 :goto_1

    :cond_2
    if-le v3, v4, :cond_3

    move v9, v4

    move v4, v3

    move v3, v9

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleteSurroundingText() a : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", b : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int v5, p1, p2

    const/4 v6, 0x1

    if-lez v5, :cond_5

    if-nez v3, :cond_4

    if-le p1, p2, :cond_4

    const-string p1, "deleteSurroundingText() call sendKeyEvent(KeyEvent.KEYCODE_DEL)!!"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x43

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->sendKeyEvent(I)V

    return v6

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->beginDelete()V

    :cond_5
    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v5

    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v7

    if-ge v7, v5, :cond_6

    move v9, v7

    move v7, v5

    move v5, v9

    :cond_6
    const/4 v8, -0x1

    if-eq v5, v8, :cond_8

    if-eq v7, v8, :cond_8

    if-ge v5, v3, :cond_7

    move v3, v5

    :cond_7
    if-le v7, v4, :cond_8

    move v4, v7

    :cond_8
    const-string v5, " ~ "

    const-string v7, "deleteSurroundingText() "

    if-lez p1, :cond_b

    sub-int p1, v3, p1

    if-gez p1, :cond_9

    goto :goto_0

    :cond_9
    move v2, p1

    :goto_0
    sub-int p1, v3, v2

    iput p1, p0, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->mDeletedSurroundingTextLength:I

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->mListener:Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection$TextComposingListener;

    if-eqz v8, :cond_a

    invoke-interface {v8, v2, v3, p2}, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection$TextComposingListener;->onDeleteSurroundingText(III)Z

    move-result v8

    if-eqz v8, :cond_a

    const-string p1, "deleteSurroundingText() call onComposingText!!"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->endDelete()V

    return v6

    :cond_a
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v1, v8}, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->beginBatchEdit()Z

    invoke-interface {v0, v2, v3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->endBatchEdit()Z

    move v2, p1

    :cond_b
    if-lez p2, :cond_d

    sub-int/2addr v4, v2

    add-int/2addr p2, v4

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result p1

    if-le p2, p1, :cond_c

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result p2

    :cond_c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->beginBatchEdit()Z

    invoke-interface {v0, v4, p2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->endBatchEdit()Z

    :cond_d
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->endDelete()V

    return v6

    :cond_e
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "deleteSurroundingText() invalid cursor position. start : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", end : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public endBatchEdit()Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->mBatchEditNesting:I

    if-lez v0, :cond_1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->mBatchEditNesting:I

    const-string v0, "SpenInputConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "endBatchEdit() mBatchEditNesting : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->mBatchEditNesting:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->mListener:Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection$TextComposingListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection$TextComposingListener;->onEndBatchEdit()Z

    move-result v0

    monitor-exit p0

    return v0

    :cond_0
    monitor-exit p0

    return v1

    :cond_1
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public endDelete()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->mIsDeletedText:Z

    return-void
.end method

.method public finishComposingText()Z
    .locals 2

    const-string v0, "SpenInputConnection"

    const-string v1, "finishComposingText()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->mListener:Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection$TextComposingListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection$TextComposingListener;->onFinishComposingText()V

    :cond_0
    invoke-super {p0}, Landroid/view/inputmethod/BaseInputConnection;->finishComposingText()Z

    move-result v0

    return v0
.end method

.method public getBatchEditNesting()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->mBatchEditNesting:I

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDeletedSurroundingTextLength()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->mDeletedSurroundingTextLength:I

    return v0
.end method

.method public getEditable()Landroid/text/Editable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->mEditable:Landroid/text/Editable;

    return-object v0
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .locals 2

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->mTextView:Landroid/view/View;

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    new-instance p1, Landroid/view/inputmethod/ExtractedText;

    invoke-direct {p1}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    const/4 v0, 0x0

    iput v0, p1, Landroid/view/inputmethod/ExtractedText;->flags:I

    const/4 v1, -0x1

    iput v1, p1, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    iput v1, p1, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    iput v0, p1, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    const-string v1, ""

    iput-object v1, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    iput v0, p1, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    iput v0, p1, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p2

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    iput-object p2, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result p2

    iput p2, p1, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result p2

    iput p2, p1, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    :cond_1
    move-object p2, p1

    :cond_2
    return-object p2
.end method

.method public getSurroundingTextLength()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->mSurroundingTextLength:I

    return v0
.end method

.method public initialize()V
    .locals 2

    const-string v0, "SpenInputConnection"

    const-string v1, "initialize()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->mIsCommitText:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->mIsDeletedText:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->mIsComposingText:Z

    iput v0, p0, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->mSurroundingTextLength:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->mDeletedSurroundingTextLength:I

    return-void
.end method

.method public isTextChanged()Z
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->mIsCommitText:Z

    iget-boolean v1, p0, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->mIsComposingText:Z

    or-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->mIsDeletedText:Z

    or-int/2addr v0, v1

    return v0
.end method

.method public performContextMenuAction(I)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->mListener:Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection$TextComposingListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection$TextComposingListener;->onPerformContextMenuAction(I)Z

    :cond_0
    invoke-super {p0, p1}, Landroid/view/inputmethod/BaseInputConnection;->performContextMenuAction(I)Z

    move-result p1

    return p1
.end method

.method public requestDisallowInputText(Z)V
    .locals 1

    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->mDisallowInputText:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->finishComposingText()Z

    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->mDisallowInputText:Z

    return-void
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setComposingText() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", newCursorPosition : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenInputConnection"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->mDisallowInputText:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->beginComposing()V

    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->mEditable:Landroid/text/Editable;

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->mListener:Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection$TextComposingListener;

    if-eqz v0, :cond_1

    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result p2

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection$TextComposingListener;->onComposingText(Ljava/lang/CharSequence;I)Z

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->endComposing()V

    const/4 p1, 0x1

    return p1
.end method

.method public setDeletedSurroundingTextLength(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->mDeletedSurroundingTextLength:I

    return-void
.end method

.method public setEditable(Landroid/text/Editable;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->mEditable:Landroid/text/Editable;

    :cond_0
    return-void
.end method

.method public setKeyListener(Landroid/text/method/KeyListener;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->mKeyListener:Landroid/text/method/KeyListener;

    :cond_0
    return-void
.end method

.method public setSelection(II)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSelection() start : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", end : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenInputConnection"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->setSelection(II)Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->mListener:Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection$TextComposingListener;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection$TextComposingListener;->onSetSelection(II)V

    :cond_0
    return v0
.end method

.method public setSurroundingTextLength(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->mSurroundingTextLength:I

    return-void
.end method
