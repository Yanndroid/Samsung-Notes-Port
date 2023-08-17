.class public final Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuLayoutInjector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u000e\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\u0008\"\u0004\u0008\r\u0010\nR\u001a\u0010\u000e\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0008\"\u0004\u0008\u0010\u0010\nR\u001a\u0010\u0011\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0008\"\u0004\u0008\u0013\u0010\n\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuLayoutInjector;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "backgroundColor",
        "",
        "getBackgroundColor",
        "()I",
        "setBackgroundColor",
        "(I)V",
        "radius",
        "getRadius",
        "setRadius",
        "strokeColor",
        "getStrokeColor",
        "setStrokeColor",
        "strokeSize",
        "getStrokeSize",
        "setStrokeSize",
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
.field private backgroundColor:I

.field private radius:I

.field private strokeColor:I

.field private strokeSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {}, Lcom/samsung/android/support/senl/addons/base/utils/TabletUtil;->isTabletUi()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget v0, Lcom/samsung/android/support/senl/addons/R$dimen;->brush_menu_radius_tablet:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuLayoutInjector;->radius:I

    sget v0, Lcom/samsung/android/support/senl/addons/R$color;->brush_menu_bg_color_tablet:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/samsung/android/support/senl/addons/R$dimen;->brush_menu_radius:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuLayoutInjector;->radius:I

    sget v0, Lcom/samsung/android/support/senl/addons/R$color;->brush_menu_bg_color:I

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuLayoutInjector;->backgroundColor:I

    sget v0, Lcom/samsung/android/support/senl/addons/R$dimen;->brush_menu_stroke_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuLayoutInjector;->strokeSize:I

    sget v0, Lcom/samsung/android/support/senl/addons/R$color;->brush_menu_stroke_color:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuLayoutInjector;->strokeColor:I

    return-void
.end method


# virtual methods
.method public final getBackgroundColor()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuLayoutInjector;->backgroundColor:I

    return v0
.end method

.method public final getRadius()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuLayoutInjector;->radius:I

    return v0
.end method

.method public final getStrokeColor()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuLayoutInjector;->strokeColor:I

    return v0
.end method

.method public final getStrokeSize()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuLayoutInjector;->strokeSize:I

    return v0
.end method

.method public final setBackgroundColor(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuLayoutInjector;->backgroundColor:I

    return-void
.end method

.method public final setRadius(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuLayoutInjector;->radius:I

    return-void
.end method

.method public final setStrokeColor(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuLayoutInjector;->strokeColor:I

    return-void
.end method

.method public final setStrokeSize(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuLayoutInjector;->strokeSize:I

    return-void
.end method
