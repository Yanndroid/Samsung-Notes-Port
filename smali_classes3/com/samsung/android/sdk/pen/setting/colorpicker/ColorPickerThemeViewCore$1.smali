.class Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerThemeViewCore$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerDataChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerThemeViewCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerThemeViewCore;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerThemeViewCore;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerThemeViewCore$1;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerThemeViewCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorChanged(I[F)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerThemeViewCore$1;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerThemeViewCore;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerThemeViewCore;->access$000(Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerThemeViewCore;)Lcom/samsung/android/sdk/pen/util/color/SpenColorThemeUtil;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerThemeViewCore$1;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerThemeViewCore;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerThemeViewCore;->access$100(Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerThemeViewCore;)Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerDataChangedListener;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerThemeViewCore$1;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerThemeViewCore;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerThemeViewCore;->access$000(Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerThemeViewCore;)Lcom/samsung/android/sdk/pen/util/color/SpenColorThemeUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/util/color/SpenColorThemeUtil;->getColorTheme()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerThemeViewCore$1;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerThemeViewCore;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerThemeViewCore;->access$100(Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerThemeViewCore;)Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerDataChangedListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerDataChangedListener;->onColorChanged(I[F)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerThemeViewCore$1;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerThemeViewCore;

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerThemeViewCore;->access$200(Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerThemeViewCore;[F)[F

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerThemeViewCore$1;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerThemeViewCore;

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerThemeViewCore;->access$100(Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerThemeViewCore;)Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerDataChangedListener;

    move-result-object p2

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->HSVToColor([F)I

    move-result v0

    invoke-interface {p2, v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerDataChangedListener;->onColorChanged(I[F)V

    :cond_2
    :goto_0
    return-void
.end method
