.class public final Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/SettingPopupHiderViewModel$mCallback$1;
.super Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/SettingPopupHiderViewModel;-><init>(Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;)V
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
        "com/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/SettingPopupHiderViewModel$mCallback$1",
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
.field public final synthetic this$0:Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/SettingPopupHiderViewModel;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/SettingPopupHiderViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/SettingPopupHiderViewModel$mCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/SettingPopupHiderViewModel;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onUpdate(Lcom/samsung/android/support/senl/addons/base/common/IObservable$Info;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Info;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/SettingPopupHiderViewModel$mCallback$1;->onUpdate(Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Info;)V

    return-void
.end method

.method public onUpdate(Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Info;)V
    .locals 4
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

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/SettingPopupHiderViewModel$mCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/SettingPopupHiderViewModel;

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/SettingPopupHiderViewModel;->access$getMIsActived$p(Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/SettingPopupHiderViewModel;)Z

    move-result v0

    const/16 v1, 0x1f5

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p1, v1, :cond_4

    const/16 v1, 0x1f6

    if-eq p1, v1, :cond_3

    const/16 v1, 0x1f8

    if-eq p1, v1, :cond_2

    const/16 v1, 0x1fa

    if-eq p1, v1, :cond_1

    goto :goto_2

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/SettingPopupHiderViewModel$mCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/SettingPopupHiderViewModel;

    invoke-static {p1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/SettingPopupHiderViewModel;->access$getMModel$p(Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/SettingPopupHiderViewModel;)Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->getPaletteSettingVisibility()Z

    move-result v1

    if-ne v1, v2, :cond_5

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/SettingPopupHiderViewModel$mCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/SettingPopupHiderViewModel;

    invoke-static {p1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/SettingPopupHiderViewModel;->access$getMModel$p(Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/SettingPopupHiderViewModel;)Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->getColorGradationVisibility()Z

    move-result v1

    if-ne v1, v2, :cond_5

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/SettingPopupHiderViewModel$mCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/SettingPopupHiderViewModel;

    invoke-static {p1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/SettingPopupHiderViewModel;->access$getMModel$p(Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/SettingPopupHiderViewModel;)Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->getEraserSettingVisibility()Z

    move-result v1

    if-ne v1, v2, :cond_5

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/SettingPopupHiderViewModel$mCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/SettingPopupHiderViewModel;

    invoke-static {p1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/SettingPopupHiderViewModel;->access$getMModel$p(Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/SettingPopupHiderViewModel;)Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->getPenSettingVisibility()Z

    move-result v1

    if-ne v1, v2, :cond_5

    goto :goto_1

    :cond_5
    move v2, v3

    :goto_1
    invoke-static {p1, v2}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/SettingPopupHiderViewModel;->access$setMIsActived$p(Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/SettingPopupHiderViewModel;Z)V

    :goto_2
    if-eqz v0, :cond_6

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/SettingPopupHiderViewModel$mCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/SettingPopupHiderViewModel;

    invoke-static {p1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/SettingPopupHiderViewModel;->access$getMIsActived$p(Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/SettingPopupHiderViewModel;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/SettingPopupHiderViewModel$mCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/SettingPopupHiderViewModel;

    const-string v0, "isHide"

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->notifyChanged(Ljava/lang/Object;)V

    :cond_6
    return-void
.end method
