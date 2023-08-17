.class public interface abstract Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$SDocHistoryListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SDocHistoryListener"
.end annotation


# virtual methods
.method public abstract onRedoable(Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;Z)V
.end method

.method public abstract onSDocChanged(Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;)V
.end method

.method public abstract onUndoable(Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;Z)V
.end method
