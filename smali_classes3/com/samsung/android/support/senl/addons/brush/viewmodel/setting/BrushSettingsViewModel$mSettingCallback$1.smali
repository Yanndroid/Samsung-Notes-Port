.class public final Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/BrushSettingsViewModel$mSettingCallback$1;
.super Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/BrushSettingsViewModel;-><init>(Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;)V
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
        "com/samsung/android/support/senl/addons/brush/viewmodel/setting/BrushSettingsViewModel$mSettingCallback$1",
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
.field public final synthetic $settingsModel:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

.field public final synthetic this$0:Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/BrushSettingsViewModel;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/BrushSettingsViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/BrushSettingsViewModel$mSettingCallback$1;->$settingsModel:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    iput-object p2, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/BrushSettingsViewModel$mSettingCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/BrushSettingsViewModel;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onUpdate(Lcom/samsung/android/support/senl/addons/base/common/IObservable$Info;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Info;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/BrushSettingsViewModel$mSettingCallback$1;->onUpdate(Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Info;)V

    return-void
.end method

.method public onUpdate(Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Info;)V
    .locals 3
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
    const/16 v1, 0x1f9

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_2

    sget-object p1, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/SettingPopupBuilder;->Factory:Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/SettingPopupBuilder$Factory;

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/BrushSettingsViewModel$mSettingCallback$1;->$settingsModel:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->getColorPickerVisibility()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/SettingPopupBuilder$Factory;->createColorPickerPopup(Z)Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/ISettingPopup;

    move-result-object v0

    goto/16 :goto_6

    :cond_2
    :goto_1
    const/16 v1, 0x1f6

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_4

    sget-object p1, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/SettingPopupBuilder;->Factory:Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/SettingPopupBuilder$Factory;

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/BrushSettingsViewModel$mSettingCallback$1;->$settingsModel:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->getEraserSettingVisibility()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/SettingPopupBuilder$Factory;->createErasePopup(Z)Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/ISettingPopup;

    move-result-object v0

    goto/16 :goto_6

    :cond_4
    :goto_2
    const/16 v1, 0x1f5

    if-nez p1, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_6

    sget-object p1, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/SettingPopupBuilder;->Factory:Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/SettingPopupBuilder$Factory;

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/BrushSettingsViewModel$mSettingCallback$1;->$settingsModel:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->getPenSettingVisibility()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/SettingPopupBuilder$Factory;->createPenPopup(Z)Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/ISettingPopup;

    move-result-object v0

    goto :goto_6

    :cond_6
    :goto_3
    const/16 v1, 0x1f8

    if-nez p1, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_8

    sget-object p1, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/SettingPopupBuilder;->Factory:Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/SettingPopupBuilder$Factory;

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/BrushSettingsViewModel$mSettingCallback$1;->$settingsModel:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->getColorGradationVisibility()Z

    move-result v1

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/SettingPopupBuilder$Factory;->createGradationPopup(ZLjava/lang/Object;)Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/ISettingPopup;

    move-result-object v0

    goto :goto_6

    :cond_8
    :goto_4
    const/16 v1, 0x1fa

    if-nez p1, :cond_9

    goto :goto_5

    :cond_9
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_a

    sget-object p1, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/SettingPopupBuilder;->Factory:Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/SettingPopupBuilder$Factory;

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/BrushSettingsViewModel$mSettingCallback$1;->$settingsModel:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->getPaletteSettingVisibility()Z

    move-result v1

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/SettingPopupBuilder$Factory;->createColorPalletPopup(ZLjava/lang/Object;)Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/ISettingPopup;

    move-result-object v0

    goto :goto_6

    :cond_a
    :goto_5
    const/16 v1, 0x1fd

    if-nez p1, :cond_b

    goto :goto_6

    :cond_b
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v1, :cond_c

    invoke-static {}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/BrushSettingsViewModel;->access$getTAG$cp()Ljava/lang/String;

    move-result-object p1

    const-string v0, "generate recreate popup"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/SettingPopupBuilder;->Factory:Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/SettingPopupBuilder$Factory;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/SettingPopupBuilder$Factory;->createRecreatePopup()Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/ISettingPopup;

    move-result-object v0

    :cond_c
    :goto_6
    if-eqz v0, :cond_d

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/BrushSettingsViewModel$mSettingCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/BrushSettingsViewModel;

    invoke-static {p1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/BrushSettingsViewModel;->access$getMSettingPopups$p(Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/BrushSettingsViewModel;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/BrushSettingsViewModel$mSettingCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/BrushSettingsViewModel;

    const-string v0, "popup"

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->notifyChanged(Ljava/lang/Object;)V

    :cond_d
    return-void
.end method
