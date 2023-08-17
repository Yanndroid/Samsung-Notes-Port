.class public interface abstract Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$HistoryEventListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "HistoryEventListener"
.end annotation


# virtual methods
.method public abstract onCommit(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V
.end method

.method public abstract onPreSubmit(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;III)V
.end method

.method public abstract onRedo(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V
.end method

.method public abstract onRedoable(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Z)V
.end method

.method public abstract onUndo(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V
.end method

.method public abstract onUndoable(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Z)V
.end method
