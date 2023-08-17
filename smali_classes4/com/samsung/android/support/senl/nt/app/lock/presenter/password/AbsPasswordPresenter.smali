.class public abstract Lcom/samsung/android/support/senl/nt/app/lock/presenter/password/AbsPasswordPresenter;
.super Lcom/samsung/android/support/senl/nt/app/lock/presenter/base/AbsBasePresenter;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/lock/presenter/password/IBasePasswordContract$IPresenter;


# instance fields
.field public mPasswordModel:Lcom/samsung/android/support/senl/nt/app/lock/model/password/PasswordModel;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/lock/presenter/password/IBasePasswordContract$IView;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/base/AbsBasePresenter;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/presenter/base/IBaseContract$IView;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/lock/model/password/PasswordModel;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/password/IBasePasswordContract$IView;->getEncryptedPasswordHash()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/password/IBasePasswordContract$IView;->getEncryptedPasswordSalt()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/app/lock/model/password/PasswordModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/password/AbsPasswordPresenter;->mPasswordModel:Lcom/samsung/android/support/senl/nt/app/lock/model/password/PasswordModel;

    return-void
.end method


# virtual methods
.method public setOldPasswordVerificationMode(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/password/AbsPasswordPresenter;->mPasswordModel:Lcom/samsung/android/support/senl/nt/app/lock/model/password/PasswordModel;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/lock/model/password/PasswordModel;->setIsOldPasswordVerification(Z)V

    return-void
.end method

.method public setPasswordToBeCompared(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/password/AbsPasswordPresenter;->mPasswordModel:Lcom/samsung/android/support/senl/nt/app/lock/model/password/PasswordModel;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/lock/model/password/PasswordModel;->setEncryptedHashAndSalt(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
