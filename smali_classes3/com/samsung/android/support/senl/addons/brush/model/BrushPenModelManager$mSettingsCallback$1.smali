.class public final Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager$mSettingsCallback$1;
.super Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;-><init>(Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasScreenModel;Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;Lcom/samsung/android/support/senl/addons/brush/model/color/IColorModelInjector;)V
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
        "com/samsung/android/support/senl/addons/brush/model/BrushPenModelManager$mSettingsCallback$1",
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
.field public final synthetic this$0:Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager$mSettingsCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onUpdate(Lcom/samsung/android/support/senl/addons/base/common/IObservable$Info;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Info;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager$mSettingsCallback$1;->onUpdate(Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Info;)V

    return-void
.end method

.method public onUpdate(Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Info;)V
    .locals 4
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Info;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/common/IObservable$InfoData;->getId()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v1, 0x192

    if-eq p1, v1, :cond_6

    const/16 v1, 0x1f9

    if-eq p1, v1, :cond_1

    goto/16 :goto_4

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager$mSettingsCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;

    invoke-static {p1}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->access$getMSettingsModel$p(Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;)Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->getColorPickerVisibility()Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager$mSettingsCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;

    new-instance v1, Lcom/samsung/android/support/senl/addons/base/model/color/ColorModel;

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager$mSettingsCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->getMBrushPenModel()Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/samsung/android/support/senl/addons/base/model/color/IBaseColorModel;->getColor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v2, v0

    :goto_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager$mSettingsCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->getMBrushPenModel()Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {v3}, Lcom/samsung/android/support/senl/addons/base/model/color/IBaseColorModel;->getPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_3
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v1, v2, v0}, Lcom/samsung/android/support/senl/addons/base/model/color/ColorModel;-><init>(II)V

    invoke-static {p1, v1}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->access$setMRecentModel$p(Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;Lcom/samsung/android/support/senl/addons/base/model/color/ColorModel;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager$mSettingsCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;

    invoke-static {p1}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->access$addRecent(Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager$mSettingsCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;

    invoke-static {p1}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->access$getMRecentModel$p(Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;)Lcom/samsung/android/support/senl/addons/base/model/color/ColorModel;

    move-result-object p1

    if-nez p1, :cond_4

    return-void

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager$mSettingsCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->getMColorModelsManager()Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager$mSettingsCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->access$getMRecentModel$p(Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;)Lcom/samsung/android/support/senl/addons/base/model/color/ColorModel;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->updateSelectPosition(Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;)V

    goto/16 :goto_4

    :cond_5
    return-void

    :cond_6
    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager$mSettingsCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;

    invoke-static {p1}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->access$getMSettingsModel$p(Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;)Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->getCurrentMode()I

    move-result p1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_7

    move p1, v0

    goto :goto_2

    :cond_7
    move p1, v1

    :goto_2
    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager$mSettingsCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->getMBrushPenModel()Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager$mSettingsCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->getMBrushPenModel()Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;->setSelected(Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager$mSettingsCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->getMBrushPenModel()Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;->setEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager$mSettingsCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->getMBrushPenModel()Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->access$updatePenInfo(Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;)V

    goto :goto_4

    :cond_8
    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager$mSettingsCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;

    invoke-static {p1}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->access$getMSettingsModel$p(Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;)Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->getCurrentMode()I

    move-result p1

    const/4 v2, 0x4

    if-ne p1, v2, :cond_9

    goto :goto_3

    :cond_9
    move v0, v1

    :goto_3
    if-eqz v0, :cond_b

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager$mSettingsCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->getMPenModelList()Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;

    move-result-object p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager$mSettingsCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->getMPenModelList()Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;->getEraserPenModel()Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModel;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->access$updatePenInfo(Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;)V

    :cond_a
    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager$mSettingsCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->getMBrushPenModel()Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-interface {p1, v1}, Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;->setEnabled(Z)V

    :cond_b
    :goto_4
    return-void
.end method
