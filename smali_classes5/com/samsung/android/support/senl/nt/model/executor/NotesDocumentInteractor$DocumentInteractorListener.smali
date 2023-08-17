.class public interface abstract Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$DocumentInteractorListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DocumentInteractorListener"
.end annotation


# virtual methods
.method public abstract onEnd()V
.end method

.method public abstract onSaved(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;Z)V
    .param p1    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onStart()V
.end method
