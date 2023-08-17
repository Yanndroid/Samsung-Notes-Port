.class public final Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer$mColorMenuCallback$1;
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
        "com/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer$mColorMenuCallback$1",
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

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer$mColorMenuCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Observer;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer$mColorMenuCallback$1;->onUpdate$lambda-0(Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;)V

    return-void
.end method

.method private static final onUpdate$lambda-0(Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;)V
    .locals 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x3

    new-array v0, v0, [F

    invoke-static {p0}, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->access$getMColorPickerViewModel$p(Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;)Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/ColorPickerViewModel;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/ColorPickerViewModel;->getPickerColor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ColorCompat;->colorToHSV(I[F)V

    invoke-static {p0}, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->access$getMColorMenuViewModel$p(Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;)Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;

    move-result-object v1

    if-eqz v1, :cond_1

    const/high16 v2, 0x100000

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;->setMainColorAndPosition([FI)V

    :cond_1
    invoke-static {p0}, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->access$getMBrushMenuControl$p(Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;)Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->updateCurrentColorView(Z)V

    :cond_2
    return-void
.end method


# virtual methods
.method public bridge synthetic onUpdate(Lcom/samsung/android/support/senl/addons/base/common/IObservable$Info;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Info;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer$mColorMenuCallback$1;->onUpdate(Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Info;)V

    return-void
.end method

.method public onUpdate(Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Info;)V
    .locals 3
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
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string v1, "recent_palette_item_change"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer$mColorMenuCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;

    invoke-static {p1}, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->access$getMBrushMenuControl$p(Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;)Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer$mColorMenuCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;

    invoke-static {v1}, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->access$getMColorRecentViewModel$p(Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;)Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorRecentViewModel;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorPaletteViewModel;->getColorViewModel(I)Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;->getHSV()[F

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->addRecentColor([F)V

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer$mColorMenuCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;

    invoke-static {p1}, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->access$getMColorRecentViewModel$p(Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;)Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorRecentViewModel;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer$mColorMenuCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;

    invoke-static {v1}, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->access$getMBrushMenuControl$p(Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;)Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->getRecentPalette()Ljava/util/List;

    move-result-object v0

    :cond_4
    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorRecentViewModel;->updateColorRecentViewModel(Ljava/util/List;)V

    goto/16 :goto_2

    :sswitch_1
    const-string v0, "color_gradation_color_select"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_2

    :cond_5
    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer$mColorMenuCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;

    invoke-static {p1}, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->access$getMBrushMenuControl$p(Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;)Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;

    move-result-object p1

    if-eqz p1, :cond_6

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->updateCurrentColorView(Z)V

    :cond_6
    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer$mColorMenuCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;

    invoke-static {p1}, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->access$getMBrushMenuControl$p(Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;)Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->updateCurrentPenView()V

    goto :goto_2

    :sswitch_2
    const-string v0, "color_picker_color_update"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_2

    :cond_7
    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer$mColorMenuCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;

    new-instance v0, Lcom/samsung/android/support/senl/addons/brush/view/menu/b;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/addons/brush/view/menu/b;-><init>(Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :sswitch_3
    const-string v1, "color_picker_color_change"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_2

    :cond_8
    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer$mColorMenuCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;

    invoke-static {p1}, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->access$getMBrushMenuControl$p(Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;)Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer$mColorMenuCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;

    invoke-static {v1}, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->access$getMColorPickerViewModel$p(Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;)Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/ColorPickerViewModel;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/ColorPickerViewModel;->getPickerColor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_9
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->updateCurrentPenView(I)V

    goto :goto_2

    :sswitch_4
    const-string v0, "palette_list_change"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_2

    :cond_a
    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer$mColorMenuCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;

    invoke-static {p1}, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->access$getMBrushMenuControl$p(Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;)Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer$mColorMenuCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->access$getMColorMenuViewModel$p(Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;)Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;->getSelectedIndices()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->updatePaletteList(Ljava/util/List;)V

    :cond_b
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7fc6d953 -> :sswitch_4
        -0x57823ebf -> :sswitch_3
        -0x385919a6 -> :sswitch_2
        0x4dddc58c -> :sswitch_1
        0x79a1b6b4 -> :sswitch_0
    .end sparse-switch
.end method
