.class public abstract Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsModelControlViewModel;
.super Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008&\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016J\u0008\u0010\u0011\u001a\u00020\u0010H\u0016J\u0017\u0010\u0012\u001a\u00020\u00102\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0014\u00a2\u0006\u0002\u0010\u0015R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\u0004R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsModelControlViewModel;",
        "Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel;",
        "facade",
        "Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;",
        "(Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;)V",
        "mFacade",
        "getMFacade",
        "()Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;",
        "setMFacade",
        "mPropertyChangedCallback",
        "Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;",
        "getMPropertyChangedCallback",
        "()Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;",
        "setMPropertyChangedCallback",
        "(Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;)V",
        "clearModels",
        "",
        "closeCallbacks",
        "onPropertyChanged",
        "propertyId",
        "",
        "(Ljava/lang/Integer;)V",
        "ntAddons_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private mFacade:Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mPropertyChangedCallback:Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;)V
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsModelControlViewModel;->mFacade:Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;

    new-instance p1, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsModelControlViewModel$mPropertyChangedCallback$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsModelControlViewModel$mPropertyChangedCallback$1;-><init>(Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsModelControlViewModel;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsModelControlViewModel;->mPropertyChangedCallback:Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsModelControlViewModel;->mFacade:Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/addons/base/common/IObservable;->addObserver(Ljava/beans/PropertyChangeListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public clearModels()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsModelControlViewModel;->mFacade:Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsModelControlViewModel;->mPropertyChangedCallback:Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsModelControlViewModel;->mPropertyChangedCallback:Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/addons/base/common/IObservable;->removeObserver(Ljava/beans/PropertyChangeListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsModelControlViewModel;->mFacade:Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;

    :cond_0
    return-void
.end method

.method public closeCallbacks()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsModelControlViewModel;->mPropertyChangedCallback:Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;

    return-void
.end method

.method public final getMFacade()Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsModelControlViewModel;->mFacade:Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;

    return-object v0
.end method

.method public final getMPropertyChangedCallback()Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsModelControlViewModel;->mPropertyChangedCallback:Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;

    return-object v0
.end method

.method public onPropertyChanged(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public final setMFacade(Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsModelControlViewModel;->mFacade:Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;

    return-void
.end method

.method public final setMPropertyChangedCallback(Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsModelControlViewModel;->mPropertyChangedCallback:Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;

    return-void
.end method
