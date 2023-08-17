.class public interface abstract Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$HistoryListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "HistoryListener"
.end annotation


# virtual methods
.method public abstract onCommit(Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;)V
.end method

.method public abstract onRedoable(Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;Z)V
.end method

.method public abstract onUndoable(Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;Z)V
.end method
