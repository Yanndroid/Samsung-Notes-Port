.class final Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMainViewModel$SettingViewChangeListener;
.super Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/SimpleChangeListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMainViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SettingViewChangeListener"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016J \u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0016J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\rH\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMainViewModel$SettingViewChangeListener;",
        "Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/SimpleChangeListener;",
        "(Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMainViewModel;)V",
        "onClearAll",
        "",
        "onColorPicked",
        "color",
        "",
        "x",
        "",
        "y",
        "onSpuitVisibilityChanged",
        "visible",
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


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMainViewModel;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMainViewModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMainViewModel$SettingViewChangeListener;->this$0:Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMainViewModel;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/SimpleChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClearAll()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMainViewModel;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onClearAll"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMainViewModel$SettingViewChangeListener;->this$0:Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMainViewModel;

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMainViewModel;->access$getMFacade(Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMainViewModel;)Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;->clearAll()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMainViewModel$SettingViewChangeListener;->this$0:Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMainViewModel;

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMainViewModel;->access$getMModel$p(Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMainViewModel;)Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->getSettingsModel()Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->setMode(I)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMainViewModel$SettingViewChangeListener;->this$0:Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMainViewModel;

    const-string v1, "erase_all_button_click"

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->notifyChanged(Ljava/lang/Object;)V

    return-void
.end method

.method public onColorPicked(IFF)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMainViewModel;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onColorPicked. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p1, 0x78

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSpuitVisibilityChanged(Z)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMainViewModel;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSpuitVisibilityChanged. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
