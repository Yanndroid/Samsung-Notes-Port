.class public abstract Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsScrollableViewModel;
.super Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsModelControlViewModel;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0008&\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0014\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsScrollableViewModel;",
        "Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsModelControlViewModel;",
        "facade",
        "Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;",
        "(Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;)V",
        "onPropertyChanged",
        "",
        "propertyId",
        "",
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


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;)V
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "facade"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsModelControlViewModel;-><init>(Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;)V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(I)V
    .locals 2

    const/16 v0, 0x2bc0

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsModelControlViewModel;->getMFacade()Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;->getView()Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;

    move-result-object p1

    instance-of v0, p1, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IScrollableView;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "View is not IScrollableView "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method
