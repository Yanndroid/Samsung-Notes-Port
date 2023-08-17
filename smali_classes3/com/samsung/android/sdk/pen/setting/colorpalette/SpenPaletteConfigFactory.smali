.class Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfigFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final PALETTE_SDK_V53:I = 0x35

.field public static final PALETTE_SDK_V60:I = 0x3c


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createPaletteConfig(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;Landroid/content/Context;)Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig;
    .locals 1
    .param p0    # Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-interface {p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;->getVersion()I

    move-result p0

    const/16 v0, 0x35

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3c

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPaletteConfig;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPaletteConfig;-><init>(Landroid/content/Context;)V

    return-object p0

    :cond_1
    new-instance p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenCirclePaletteConfig;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenCirclePaletteConfig;-><init>(Landroid/content/Context;)V

    return-object p0
.end method
