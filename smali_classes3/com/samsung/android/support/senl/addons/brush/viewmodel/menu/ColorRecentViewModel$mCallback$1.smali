.class public final Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorRecentViewModel$mCallback$1;
.super Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorRecentViewModel;-><init>(Lcom/samsung/android/support/senl/addons/brush/model/color/ColorRecentModel;Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;)V
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
        "com/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorRecentViewModel$mCallback$1",
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
.field public final synthetic this$0:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorRecentViewModel;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorRecentViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorRecentViewModel$mCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorRecentViewModel;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onUpdate(Lcom/samsung/android/support/senl/addons/base/common/IObservable$Info;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Info;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorRecentViewModel$mCallback$1;->onUpdate(Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Info;)V

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

    const/16 v0, 0x4e84

    if-ne p1, v0, :cond_2

    invoke-static {}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorRecentViewModel;->access$getTAG$cp()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RECENT PUSHED"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorRecentViewModel$mCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorRecentViewModel;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorPaletteViewModel;->getMColorVMSet()[Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    array-length p1, p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorRecentViewModel$mCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorRecentViewModel;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorPaletteViewModel;->getMColorVMSet()[Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget-object v1, v1, v0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorRecentViewModel$mCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorRecentViewModel;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorPaletteViewModel;->getMModel()Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;->getColorModel(I)Lcom/samsung/android/support/senl/addons/brush/model/color/IMenuColorModel;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;->setModel(Lcom/samsung/android/support/senl/addons/brush/model/color/IMenuColorModel;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorRecentViewModel$mCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorRecentViewModel;

    const-string v0, "recent_palette_item_change"

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->notifyChanged(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
