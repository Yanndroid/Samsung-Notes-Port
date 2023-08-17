.class public Lcom/samsung/android/support/senl/addons/brush/view/injector/ColorModelInjector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/addons/brush/model/color/IColorModelInjector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/brush/view/injector/ColorModelInjector$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0005\u0008\u0016\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\"\u0010\u000c\u001a\u0004\u0018\u00010\u00082\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000eH\u0016J\u001a\u0010\u0011\u001a\u00020\u00122\u0010\u0010\u0013\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u000b\u0018\u00010\u0014H\u0016J\u0010\u0010\u0015\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u0014H\u0016J\u0018\u0010\u0016\u001a\u00020\u00122\u000e\u0010\u0017\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\nH\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/brush/view/injector/ColorModelInjector;",
        "Lcom/samsung/android/support/senl/addons/brush/model/color/IColorModelInjector;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "mColorSettingUtil",
        "Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteUtil;",
        "mCustomColor",
        "",
        "mDefaultColorPalletList",
        "",
        "Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;",
        "getColorName",
        "color",
        "",
        "page",
        "index",
        "getColorTables",
        "",
        "tables",
        "",
        "getPaletteDatum",
        "loadDefault",
        "paletteList",
        "Companion",
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


# static fields
.field private static final BRUSH_V6:Ljava/lang/String; = "_brush_v6"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final COLOR_SETTINGS:Ljava/lang/String; = "COLOR_SETTINGS"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lcom/samsung/android/support/senl/addons/brush/view/injector/ColorModelInjector$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final mColorSettingUtil:Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteUtil;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mCustomColor:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mDefaultColorPalletList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/addons/brush/view/injector/ColorModelInjector$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/addons/brush/view/injector/ColorModelInjector$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/view/injector/ColorModelInjector;->Companion:Lcom/samsung/android/support/senl/addons/brush/view/injector/ColorModelInjector$Companion;

    const-string v0, "ColorModelInjector"

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->createBrushTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/view/injector/ColorModelInjector;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/injector/ColorModelInjector;->mDefaultColorPalletList:Ljava/util/List;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/addons/R$string;->brush_menu_custom_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "res.getString(R.string.brush_menu_custom_color)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/injector/ColorModelInjector;->mCustomColor:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteUtil;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/injector/ColorModelInjector;->mColorSettingUtil:Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteUtil;

    const-string p1, "_brush_v6"

    const-string v0, "COLOR_SETTINGS"

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/PreferenceUtils;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v2, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    new-instance v0, Lkotlin/text/Regex;

    const-string v3, ":"

    invoke-direct {v0, v3}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v2}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, [Ljava/lang/String;

    array-length v0, p1

    :goto_1
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;

    invoke-direct {v4}, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;-><init>()V

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v4, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;->index:I

    iget-object v3, p0, Lcom/samsung/android/support/senl/addons/brush/view/injector/ColorModelInjector;->mDefaultColorPalletList:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/injector/ColorModelInjector;->mColorSettingUtil:Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteUtil;

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/injector/ColorModelInjector;->mDefaultColorPalletList:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteUtil;->getColorTables(Ljava/util/List;)Z

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/injector/ColorModelInjector;->mDefaultColorPalletList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/injector/ColorModelInjector;->mDefaultColorPalletList:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/addons/brush/view/injector/ColorModelInjector;->loadDefault(Ljava/util/List;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/injector/ColorModelInjector;->mColorSettingUtil:Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteUtil;

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/injector/ColorModelInjector;->mDefaultColorPalletList:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteUtil;->getColorTables(Ljava/util/List;)Z

    :cond_3
    sget-object p1, Lcom/samsung/android/support/senl/addons/brush/view/injector/ColorModelInjector;->TAG:Ljava/lang/String;

    const-string v0, "loadData"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final loadDefault(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/model/color/IColorPaletteModel;->Companion:Lcom/samsung/android/support/senl/addons/brush/model/color/IColorPaletteModel$Companion;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/model/color/IColorPaletteModel$Companion;->getINFO_DEFAULT_LIST()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    new-instance v4, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;

    invoke-direct {v4}, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;-><init>()V

    iput v3, v4, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;->index:I

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getColorName(III)Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;

    invoke-direct {v1}, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;-><init>()V

    iput p2, v1, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/samsung/android/support/senl/addons/brush/view/injector/ColorModelInjector;->mColorSettingUtil:Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteUtil;

    invoke-virtual {p2, v0}, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteUtil;->getColorTables(Ljava/util/List;)Z

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;

    iget-object v1, v1, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;->values:[I

    aget v1, v1, p3

    if-ne v1, p1, :cond_0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;

    iget-object p1, p1, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;->names:[Ljava/lang/String;

    aget-object p1, p1, p3

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/injector/ColorModelInjector;->mCustomColor:Ljava/lang/String;

    :goto_0
    return-object p1
.end method

.method public getColorTables(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/injector/ColorModelInjector;->mColorSettingUtil:Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteUtil;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteUtil;->getColorTables(Ljava/util/List;)Z

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/addons/brush/view/injector/ColorModelInjector;->loadDefault(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public getPaletteDatum()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/injector/ColorModelInjector;->mDefaultColorPalletList:Ljava/util/List;

    return-object v0
.end method
