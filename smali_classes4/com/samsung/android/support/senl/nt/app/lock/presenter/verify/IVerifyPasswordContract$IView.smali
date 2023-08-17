.class public interface abstract Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyPasswordContract$IView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/lock/presenter/password/IBasePasswordContract$IView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyPasswordContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IView"
.end annotation


# virtual methods
.method public abstract getSavedFailCount()I
.end method

.method public abstract onBlockingTimeChanged(I)V
.end method

.method public abstract onBlockingTimerEnded()V
.end method

.method public abstract onBlockingTimerStarted(J)V
.end method

.method public abstract setGuideWrongPasswordText()V
.end method
