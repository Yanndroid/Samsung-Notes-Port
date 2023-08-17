.class public final Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList$mEraserCallback$1;
.super Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Observer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;-><init>(Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModelFactory;Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;)V
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
        "com/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList$mEraserCallback$1",
        "Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Observer;",
        "onUpdate",
        "",
        "info",
        "Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Info;",
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
.field public final synthetic this$0:Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList$mEraserCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Observer;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onUpdate(Lcom/samsung/android/support/senl/addons/base/common/IObservable$Info;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Info;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList$mEraserCallback$1;->onUpdate(Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Info;)V

    return-void
.end method

.method public onUpdate(Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Info;)V
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Info;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/common/IObservable$InfoData;->getId()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModel;->Companion:Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModel$Companion;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModel$Companion;->getOBSV_VM_PEN_CHANGED()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList$mEraserCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModelList;->Companion:Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModelList$Companion;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModelList$Companion;->getOBSV_VIEW_PEN_SELECTED_CHANGE()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->notifyChanged(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
