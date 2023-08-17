.class public interface abstract Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/HistoryEventListenerImpl$UndoRedoListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/HistoryEventListenerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UndoRedoListener"
.end annotation


# virtual methods
.method public abstract onObjectChanged()V
.end method

.method public abstract onRedoable(Z)V
.end method

.method public abstract onUndoable(Z)V
.end method
