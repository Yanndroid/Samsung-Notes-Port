.class public final Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup$mColorPickerCallback$1;
.super Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Observer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;-><init>(Landroid/content/Context;)V
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
        "com/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup$mColorPickerCallback$1",
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
.field public final synthetic this$0:Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup$mColorPickerCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Observer;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onUpdate(Lcom/samsung/android/support/senl/addons/base/common/IObservable$Info;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Info;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup$mColorPickerCallback$1;->onUpdate(Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Info;)V

    return-void
.end method

.method public onUpdate(Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Info;)V
    .locals 2
    .param p1    # Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Info;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/common/IObservable$InfoData;->getId()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    const-string v1, "color_picker_color_change"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup$mColorPickerCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;

    invoke-static {p1}, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->access$getMPopupViewMap$p(Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;)Ljava/util/HashMap;

    move-result-object p1

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/addons/brush/view/popup/IBrushSettingPopupView;

    instance-of v1, p1, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorSpuitPopupView;

    if-eqz v1, :cond_2

    check-cast p1, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorSpuitPopupView;

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup$mColorPickerCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;

    invoke-static {v1}, Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;->access$getMColorPickerViewModel$p(Lcom/samsung/android/support/senl/addons/brush/view/popup/BrushSettingPopup;)Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/ColorPickerViewModel;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/ColorPickerViewModel;->getPickerColor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_1
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->setColorSpoidColor(I)V

    :cond_2
    return-void
.end method
