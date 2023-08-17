.class public final Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorGradationViewModel$mCloseGradationListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/listeners/IGradationActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorGradationViewModel;-><init>(Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0014\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0018\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0006H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorGradationViewModel$mCloseGradationListener$1",
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/listeners/IGradationActionListener;",
        "onCloseButtonClick",
        "",
        "onColorChanged",
        "color",
        "",
        "hsvColor",
        "",
        "onViewModeChanged",
        "mode",
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
.field public final synthetic this$0:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorGradationViewModel;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorGradationViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorGradationViewModel$mCloseGradationListener$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorGradationViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCloseButtonClick()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorGradationViewModel;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCloseButtonClick"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorGradationViewModel$mCloseGradationListener$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorGradationViewModel;

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorGradationViewModel;->access$getMSettingsModel$p(Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorGradationViewModel;)Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;->INSTANCE:Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;->onColorGradationClose()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorGradationViewModel$mCloseGradationListener$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorGradationViewModel;

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorGradationViewModel;->access$getMSettingsModel$p(Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorGradationViewModel;)Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->setColorGradationVisibility(Z)V

    :cond_0
    return-void
.end method

.method public onColorChanged(I[F)V
    .locals 2
    .param p2    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "hsvColor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorGradationViewModel$mCloseGradationListener$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorGradationViewModel;

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorGradationViewModel;->access$getMColorModelsManager$p(Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorGradationViewModel;)Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorGradationViewModel$mCloseGradationListener$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorGradationViewModel;

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorGradationViewModel;->access$getMColorModelsManager$p(Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorGradationViewModel;)Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->getColorGradationPosition()I

    move-result v0

    new-instance v1, Lcom/samsung/android/support/senl/addons/base/model/color/ColorModel;

    invoke-direct {v1, p1, p2, v0}, Lcom/samsung/android/support/senl/addons/base/model/color/ColorModel;-><init>(I[FI)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorGradationViewModel$mCloseGradationListener$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorGradationViewModel;

    invoke-static {p1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorGradationViewModel;->access$getMColorModelsManager$p(Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorGradationViewModel;)Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->updateColorAndPosition(Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;I)V

    :cond_0
    return-void
.end method

.method public onViewModeChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorGradationViewModel$mCloseGradationListener$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorGradationViewModel;

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorGradationViewModel;->access$getMColorModelsManager$p(Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorGradationViewModel;)Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorGradationViewModel$mCloseGradationListener$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorGradationViewModel;

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorGradationViewModel;->access$getMColorModelsManager$p(Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorGradationViewModel;)Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->setColorPickerViewMode(I)V

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;->INSTANCE:Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;->onColorGradationViewModeChange(I)V

    :cond_0
    return-void
.end method
