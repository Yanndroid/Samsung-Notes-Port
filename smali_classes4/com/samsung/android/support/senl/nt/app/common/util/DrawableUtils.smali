.class public Lcom/samsung/android/support/senl/nt/app/common/util/DrawableUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getColorStyle(Landroid/content/Context;I)I
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$array;->folder_mark_color:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    aget v1, p0, v0

    if-ne p1, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget p0, Lcom/samsung/android/support/senl/nt/app/R$style;->FolderColorLightBrown:I

    return p0

    :pswitch_1
    sget p0, Lcom/samsung/android/support/senl/nt/app/R$style;->FolderColorBlue:I

    return p0

    :pswitch_2
    sget p0, Lcom/samsung/android/support/senl/nt/app/R$style;->FolderColorSkyBlue:I

    return p0

    :pswitch_3
    sget p0, Lcom/samsung/android/support/senl/nt/app/R$style;->FolderColorViolet:I

    return p0

    :pswitch_4
    sget p0, Lcom/samsung/android/support/senl/nt/app/R$style;->FolderColorPink:I

    return p0

    :pswitch_5
    sget p0, Lcom/samsung/android/support/senl/nt/app/R$style;->FolderColorLightBlue:I

    return p0

    :pswitch_6
    sget p0, Lcom/samsung/android/support/senl/nt/app/R$style;->FolderColorGreen:I

    return p0

    :pswitch_7
    sget p0, Lcom/samsung/android/support/senl/nt/app/R$style;->FolderColorLightGreen:I

    return p0

    :pswitch_8
    sget p0, Lcom/samsung/android/support/senl/nt/app/R$style;->FolderColorYellow:I

    return p0

    :pswitch_9
    sget p0, Lcom/samsung/android/support/senl/nt/app/R$style;->FolderColorOrange:I

    return p0

    :pswitch_a
    sget p0, Lcom/samsung/android/support/senl/nt/app/R$style;->FolderColorRed:I

    return p0

    :pswitch_b
    sget p0, Lcom/samsung/android/support/senl/nt/app/R$style;->DefaultFolderColorGrey:I

    return p0

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget p0, Lcom/samsung/android/support/senl/nt/app/R$style;->DefaultFolderColorGrey:I

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getRippleDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;
    .locals 6

    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [I

    const v3, 0x10100a1

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-static {v3, p2, v5}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {v0, v2, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array p2, v1, [I

    const v2, 0x101009e

    aput v2, p2, v4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-static {v2, p1, v3}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, p2, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array p2, v1, [I

    const v1, 0x10100a7

    aput v1, p2, v4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-static {v1, p1, p0}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p2, p0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public static setCircularRippleSelected(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$drawable;->view_circular_ripple_pressed:I

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$drawable;->view_circular_ripple_selected:I

    invoke-static {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/util/DrawableUtils;->getRippleDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static setRippleSelected(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$drawable;->view_ripple_pressed:I

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$drawable;->view_ripple_selected:I

    invoke-static {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/util/DrawableUtils;->getRippleDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static setRoundedRectangleRippleSelected(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$drawable;->view_rounded_rantangle_ripple_pressed:I

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$drawable;->view_rounded_rantangle_ripple_selected:I

    invoke-static {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/util/DrawableUtils;->getRippleDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method
