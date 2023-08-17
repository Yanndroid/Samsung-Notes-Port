.class public final Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer$mMainCallback$1;
.super Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Observer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;-><init>(Landroid/content/Context;)V
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
        "com/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer$mMainCallback$1",
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
.field public final synthetic this$0:Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer$mMainCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Observer;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onUpdate(Lcom/samsung/android/support/senl/addons/base/common/IObservable$Info;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Info;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer$mMainCallback$1;->onUpdate(Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Info;)V

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
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v1, "ble_single_press"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer$mMainCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;

    invoke-static {p1}, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->access$getMColorRecentViewModel$p(Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;)Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorRecentViewModel;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorRecentViewModel;->getNextRecentColor()[F

    move-result-object v0

    :cond_2
    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->access$applyRecentColor(Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;[F)V

    goto :goto_1

    :sswitch_1
    const-string v0, "ble_double_press"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :sswitch_2
    const-string v0, "erase_all_button_click"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer$mMainCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;

    invoke-static {p1}, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->access$getMBrushMenuControl$p(Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;)Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->updateCurrentPenView()V

    goto :goto_1

    :sswitch_3
    const-string v1, "ble_single_press_type_2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer$mMainCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;

    invoke-static {p1}, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->access$getMColorRecentViewModel$p(Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;)Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorRecentViewModel;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorRecentViewModel;->getPrevRecentColor()[F

    move-result-object v0

    :cond_5
    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->access$applyRecentColor(Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;[F)V

    :cond_6
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x35c4ca64 -> :sswitch_3
        -0x33834f6e -> :sswitch_2
        0x34295ab9 -> :sswitch_1
        0x6189edf0 -> :sswitch_0
    .end sparse-switch
.end method
