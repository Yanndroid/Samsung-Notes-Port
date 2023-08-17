.class public interface abstract Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IIrisApiImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract authenticate(Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$OnAuthenticationListener;)V
    .param p3    # Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$OnAuthenticationListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract cancelAuthenticate()V
.end method

.method public abstract getIrisId(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract isRetryCase(I)Z
.end method
