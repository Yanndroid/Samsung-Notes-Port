.class public interface abstract Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyIrisContract$IView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/lock/presenter/base/IBaseBiometricContract$IView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyIrisContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IView"
.end annotation


# virtual methods
.method public abstract getPreView()Landroid/view/View;
.end method

.method public abstract setGuideText(Ljava/lang/CharSequence;)V
.end method

.method public abstract showRetryDialog(I)V
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
.end method

.method public abstract showRetryDialog(Ljava/lang/CharSequence;)V
.end method
