.class public interface abstract Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/dex/DoPFileTransmitReceiver$Callback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/dex/DoPFileTransmitReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onTransitCanceled(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method public abstract onTransitCompleted(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method public abstract onTransitFailed(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method public abstract onTransitFinished(Landroid/content/Context;Landroid/content/Intent;)V
.end method
