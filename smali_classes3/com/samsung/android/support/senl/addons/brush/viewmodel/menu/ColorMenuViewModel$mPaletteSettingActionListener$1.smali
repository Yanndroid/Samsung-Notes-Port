.class public final Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel$mPaletteSettingActionListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/listeners/IPaletteSettingActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;-><init>(Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0016\u0010\u0002\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u0016J\u0008\u0010\u0007\u001a\u00020\u0003H\u0016J\u0010\u0010\u0008\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\nH\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel$mPaletteSettingActionListener$1",
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/listeners/IPaletteSettingActionListener;",
        "onChangeSelected",
        "",
        "list",
        "",
        "",
        "onCloseButtonClick",
        "onNotifyToastText",
        "text",
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
.field public final synthetic this$0:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel$mPaletteSettingActionListener$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeSelected(Ljava/util/List;)V
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onChangeSelected. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel$mPaletteSettingActionListener$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;->access$getMColorManager$p(Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;)Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->changeSelectedPalette(Ljava/util/List;)V

    return-void
.end method

.method public onCloseButtonClick()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel$mPaletteSettingActionListener$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;->access$getMSettingsModel$p(Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;)Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->setPaletteSettingVisibility(Z)V

    return-void
.end method

.method public onNotifyToastText(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/support/senl/addons/brush/util/BrushToastHandler;->showShort(Ljava/lang/String;)V

    return-void
.end method
