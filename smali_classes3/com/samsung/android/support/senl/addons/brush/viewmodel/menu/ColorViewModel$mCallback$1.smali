.class public final Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel$mCallback$1;
.super Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;-><init>(Lcom/samsung/android/support/senl/addons/brush/model/color/IMenuColorModel;Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;)V
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
        "com/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel$mCallback$1",
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
.field public final synthetic this$0:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel$mCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onUpdate(Lcom/samsung/android/support/senl/addons/base/common/IObservable$Info;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Info;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel$mCallback$1;->onUpdate(Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Info;)V

    return-void
.end method

.method public onUpdate(Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Info;)V
    .locals 3
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Info;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/common/IObservable$InfoData;->getId()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x4e21

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel$mCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;

    invoke-static {p1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;->access$getMModel$p(Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;)Lcom/samsung/android/support/senl/addons/brush/model/color/IMenuColorModel;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/brush/model/color/IMenuColorModel;->isSelected()Z

    move-result v0

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/AbsSelectionViewModel;->select(Z)V

    :cond_2
    return-void
.end method
