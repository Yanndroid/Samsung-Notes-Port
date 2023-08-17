.class Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushSliderFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushSliderFactory$SliderType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createSlider(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushSliderFactory$SliderType;Landroid/content/Context;Z)Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;
    .locals 9
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushSliderFactory$1;->$SwitchMap$com$samsung$android$sdk$pen$setting$drawing$SpenBrushSliderFactory$SliderType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    goto/16 :goto_1

    :cond_0
    new-instance p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    sget v4, Lcom/samsung/android/spen/R$layout;->setting_brush_slider_layout:I

    const/4 v5, 0x1

    const/16 v6, 0x64

    sget v7, Lcom/samsung/android/spen/R$string;->pen_string_decrease:I

    sget v8, Lcom/samsung/android/spen/R$string;->pen_string_increase:I

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;-><init>(Landroid/content/Context;ZIIIII)V

    sget p1, Lcom/samsung/android/spen/R$string;->pen_string_softness:I

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    sget v4, Lcom/samsung/android/spen/R$layout;->setting_brush_slider_layout:I

    const/4 v5, 0x1

    const/16 v6, 0x64

    sget v7, Lcom/samsung/android/spen/R$string;->pen_string_opacity_decrease:I

    sget v8, Lcom/samsung/android/spen/R$string;->pen_string_opacity_increase:I

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;-><init>(Landroid/content/Context;ZIIIII)V

    sget p2, Lcom/samsung/android/spen/R$string;->pen_string_opacity:I

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->setAccessibilityPostfix(Ljava/lang/String;)V

    const-string p2, "%d%%"

    invoke-virtual {p0, p2}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->setLabelFormat(Ljava/lang/String;)V

    sget p2, Lcom/samsung/android/spen/R$drawable;->sliider_opacity_bg_drawable:I

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    sget p2, Lcom/samsung/android/spen/R$dimen;->setting_slider_opacity_progress_radius:I

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->setProgressBackgroundDrawable(Landroid/graphics/drawable/Drawable;F)V

    sget p1, Lcom/samsung/android/spen/R$dimen;->setting_slider_opacity_progress_height:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->setTrackMinHeight(I)V

    goto :goto_1

    :cond_2
    new-instance p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    sget v4, Lcom/samsung/android/spen/R$layout;->setting_brush_slider_layout:I

    const/4 v5, 0x1

    const/16 v6, 0x64

    sget v7, Lcom/samsung/android/spen/R$string;->pen_string_decrease:I

    sget v8, Lcom/samsung/android/spen/R$string;->pen_string_increase:I

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;-><init>(Landroid/content/Context;ZIIIII)V

    sget p1, Lcom/samsung/android/spen/R$string;->pen_string_size:I

    :goto_0
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->setAccessibilityPostfix(Ljava/lang/String;)V

    :goto_1
    return-object p0
.end method
