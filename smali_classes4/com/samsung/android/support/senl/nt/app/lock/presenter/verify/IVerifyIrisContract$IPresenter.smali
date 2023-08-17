.class public interface abstract Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyIrisContract$IPresenter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/lock/presenter/base/IBaseBiometricContract$IPresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyIrisContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IPresenter"
.end annotation


# virtual methods
.method public abstract authenticate(Landroid/content/Context;)V
.end method

.method public abstract cancelAuthenticate()V
.end method

.method public abstract onResume(Landroid/content/Context;)V
.end method
