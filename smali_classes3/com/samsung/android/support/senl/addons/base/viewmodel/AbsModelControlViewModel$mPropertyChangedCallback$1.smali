.class public final Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsModelControlViewModel$mPropertyChangedCallback$1;
.super Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsModelControlViewModel;-><init>(Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/samsung/android/support/senl/addons/base/viewmodel/AbsModelControlViewModel$mPropertyChangedCallback$1",
        "Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;",
        "onUpdate",
        "",
        "info",
        "Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Info;",
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
.field public final synthetic this$0:Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsModelControlViewModel;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsModelControlViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsModelControlViewModel$mPropertyChangedCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsModelControlViewModel;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onUpdate(Lcom/samsung/android/support/senl/addons/base/common/IObservable$Info;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Info;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsModelControlViewModel$mPropertyChangedCallback$1;->onUpdate(Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Info;)V

    return-void
.end method

.method public onUpdate(Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Info;)V
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Info;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsModelControlViewModel$mPropertyChangedCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsModelControlViewModel;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/common/IObservable$InfoData;->getId()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsModelControlViewModel;->onPropertyChanged(Ljava/lang/Integer;)V

    return-void
.end method
