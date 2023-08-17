.class public abstract Lcom/samsung/android/support/senl/nt/app/lock/presenter/base/AbsBasePresenter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/lock/presenter/base/IBaseContract$IPresenter;


# instance fields
.field private final mView:Lcom/samsung/android/support/senl/nt/app/lock/presenter/base/IBaseContract$IView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/lock/presenter/base/IBaseContract$IView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/base/AbsBasePresenter;->mView:Lcom/samsung/android/support/senl/nt/app/lock/presenter/base/IBaseContract$IView;

    return-void
.end method


# virtual methods
.method public finishCancel()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/base/AbsBasePresenter;->mView:Lcom/samsung/android/support/senl/nt/app/lock/presenter/base/IBaseContract$IView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/base/IBaseContract$IView;->finishCancel()V

    :cond_0
    return-void
.end method

.method public finishSuccess()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/base/AbsBasePresenter;->mView:Lcom/samsung/android/support/senl/nt/app/lock/presenter/base/IBaseContract$IView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/base/IBaseContract$IView;->finishSuccess()V

    :cond_0
    return-void
.end method
