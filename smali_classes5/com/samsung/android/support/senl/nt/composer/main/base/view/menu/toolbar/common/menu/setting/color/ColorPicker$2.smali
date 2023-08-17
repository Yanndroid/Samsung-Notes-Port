.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPicker$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup$ColorPickerChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPicker;->showColorPickerPopup(Landroid/view/View;IIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPicker;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPicker;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPicker$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorChanged(I[F)V
    .locals 0

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPicker$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPicker;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPicker;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPicker;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorContract$IColorPicker;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorContract$IColorPicker;->onColorChangedByPicker(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPicker$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPicker;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPicker;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPicker;Z)V

    return-void
.end method

.method public onViewModeChanged(I)V
    .locals 2

    const-string v0, "color_shared_preferences"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v1, "KEY_RICHTEXT_COLOR_PICKER_VIEW_MODE"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putInt(Ljava/lang/String;I)V

    return-void
.end method
