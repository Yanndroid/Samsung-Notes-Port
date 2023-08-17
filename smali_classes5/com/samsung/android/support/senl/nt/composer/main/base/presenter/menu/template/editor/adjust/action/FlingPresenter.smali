.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/FlingPresenter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/FlingPresenter$FlingRunnable;
    }
.end annotation


# instance fields
.field private mActionPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/ActionPresenter;

.field private mModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/action/FlingAction;

.field private mOverScroller:Landroid/widget/OverScroller;

.field private mRunnable:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/FlingPresenter$FlingRunnable;

.field private mStateModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/state/ActionStateModel;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/action/FlingAction;Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/state/ActionStateModel;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/ActionPresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/FlingPresenter;->mModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/action/FlingAction;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/FlingPresenter;->mStateModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/state/ActionStateModel;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/FlingPresenter;->mActionPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/ActionPresenter;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/FlingPresenter;)Landroid/widget/OverScroller;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/FlingPresenter;->mOverScroller:Landroid/widget/OverScroller;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/FlingPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/FlingPresenter;->onFlingFinished()V

    return-void
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/FlingPresenter;FFFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/FlingPresenter;->onFlingScrolled(FFFF)V

    return-void
.end method

.method private onFlingFinished()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/FlingPresenter;->mStateModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/state/ActionStateModel;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/state/ActionStateModel;->isState(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/FlingPresenter;->mStateModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/state/ActionStateModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/state/ActionStateModel;->setState(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/FlingPresenter;->mActionPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/ActionPresenter;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/ActionPresenter;->updateImageView()V

    return-void
.end method

.method private onFlingScrolled(FFFF)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/FlingPresenter;->mModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/action/FlingAction;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/action/FlingAction;->onFling(FFFF)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/FlingPresenter;->mActionPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/ActionPresenter;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/ActionPresenter;->updateImageView()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/FlingPresenter;->mActionPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/ActionPresenter;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/FlingPresenter;->mRunnable:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/FlingPresenter$FlingRunnable;

    invoke-interface {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/ActionPresenter;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public cancelFling()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/FlingPresenter;->mRunnable:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/FlingPresenter$FlingRunnable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/FlingPresenter$FlingRunnable;->cancelFling()V

    :cond_0
    return-void
.end method

.method public close()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/FlingPresenter;->cancelFling()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/FlingPresenter;->mStateModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/state/ActionStateModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/state/ActionStateModel;->setState(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/FlingPresenter;->mStateModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/state/ActionStateModel;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/FlingPresenter;->mRunnable:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/FlingPresenter$FlingRunnable;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/FlingPresenter;->mOverScroller:Landroid/widget/OverScroller;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/FlingPresenter;->mModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/action/FlingAction;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/FlingPresenter;->mActionPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/ActionPresenter;

    return-void
.end method

.method public onFling(FF)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/FlingPresenter;->cancelFling()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/FlingPresenter;->mStateModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/state/ActionStateModel;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/state/ActionStateModel;->setState(I)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/FlingPresenter$FlingRunnable;

    float-to-int p1, p1

    float-to-int p2, p2

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/FlingPresenter;->mModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/action/FlingAction;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/action/FlingAction;->getFlingArea()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/FlingPresenter$FlingRunnable;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/FlingPresenter;IILandroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/FlingPresenter;->mRunnable:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/FlingPresenter$FlingRunnable;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/FlingPresenter;->mActionPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/ActionPresenter;

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/ActionPresenter;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setOverScroller(Landroid/widget/OverScroller;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/FlingPresenter;->mOverScroller:Landroid/widget/OverScroller;

    return-void
.end method
