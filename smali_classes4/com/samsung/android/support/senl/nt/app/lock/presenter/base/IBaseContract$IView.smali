.class public interface abstract Lcom/samsung/android/support/senl/nt/app/lock/presenter/base/IBaseContract$IView;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/lock/presenter/base/IBaseContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IView"
.end annotation


# virtual methods
.method public abstract changeScenario(I)V
.end method

.method public abstract changeViewTo(II)V
.end method

.method public abstract finishCancel()V
.end method

.method public abstract finishSuccess()V
.end method

.method public abstract getSavedPasswordBlockingTime()J
.end method

.method public abstract onWindowFocusChanged(Z)V
.end method

.method public abstract resetPasswordBlockingEndTime()V
.end method
