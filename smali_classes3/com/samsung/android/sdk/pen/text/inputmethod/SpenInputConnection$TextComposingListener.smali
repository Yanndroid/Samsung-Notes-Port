.class public interface abstract Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection$TextComposingListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TextComposingListener"
.end annotation


# virtual methods
.method public abstract onBeginBatchEdit()Z
.end method

.method public abstract onCommitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V
.end method

.method public abstract onCommitText(Ljava/lang/CharSequence;)Z
.end method

.method public abstract onComposingText(Ljava/lang/CharSequence;I)Z
.end method

.method public abstract onDeleteSurroundingText(III)Z
.end method

.method public abstract onEndBatchEdit()Z
.end method

.method public abstract onFinishComposingText()V
.end method

.method public abstract onPerformContextMenuAction(I)Z
.end method

.method public abstract onSetSelection(II)V
.end method
