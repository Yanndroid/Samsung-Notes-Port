.class public final Lcom/samsung/android/support/senl/addons/brush/model/color/ColorInfoManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/brush/model/color/ColorInfoManager$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \u001f2\u00020\u0001:\u0001\u001fB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004JI\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r2\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00102\u000e\u0010\u0011\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u0010\u00a2\u0006\u0002\u0010\u0013J\u0006\u0010\u0014\u001a\u00020\u000bJ\u0006\u0010\u0015\u001a\u00020\u000bJ\u0014\u0010\u0016\u001a\u00020\u00072\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0004J\u0014\u0010\u0018\u001a\u00020\u00072\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004J\u0014\u0010\u001a\u001a\u00020\u00072\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u0004J\u000e\u0010\u001d\u001a\u00020\u00072\u0006\u0010\u001e\u001a\u00020\u000b\u00a8\u0006 "
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/brush/model/color/ColorInfoManager;",
        "",
        "()V",
        "loadColorPickerRecentColor",
        "",
        "",
        "loadRecentColor",
        "",
        "injector",
        "Lcom/samsung/android/support/senl/addons/brush/model/color/IColorModelInjector;",
        "size",
        "",
        "recentColor",
        "",
        "recentPosition",
        "recentHsvColor",
        "",
        "recentName",
        "",
        "(Lcom/samsung/android/support/senl/addons/brush/model/color/IColorModelInjector;I[I[I[[F[Ljava/lang/String;)V",
        "loadRecentColorSize",
        "loadViewMode",
        "saveColorPalettes",
        "list",
        "saveColorPickerRecentColor",
        "hsvColors",
        "saveRecentColor",
        "colorTableSet",
        "Lcom/samsung/android/support/senl/addons/brush/model/color/MenuColorModel;",
        "saveViewMode",
        "viewMode",
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

.field private static final COLOR_PICKER_RECENT_COLOR:Ljava/lang/String; = "COLOR_PICKER_RECENT_COLOR_"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final COLOR_PICKER_RECENT_COLOR_NUM:Ljava/lang/String; = "COLOR_PICKER_RECENT_COLOR_NUM"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final COLOR_PICKER_VIEW_MODE:Ljava/lang/String; = "COLOR_PICKER_VIEW_MODE"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final COLOR_SETTINGS:Ljava/lang/String; = "COLOR_SETTINGS"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lcom/samsung/android/support/senl/addons/brush/model/color/ColorInfoManager$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final RECENT_COLOR:Ljava/lang/String; = "RECENT_COLOR_"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final RECENT_COLOR_NUM:Ljava/lang/String; = "RECENT_COLOR_NUM"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final RECENT_POSITION:Ljava/lang/String; = "RECENT_COLOR_POSITION_"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorInfoManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorInfoManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorInfoManager;->Companion:Lcom/samsung/android/support/senl/addons/brush/model/color/ColorInfoManager$Companion;

    const-string v0, "ColorInfoManager"

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->createBrushTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorInfoManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorInfoManager;-><init>()V

    return-void
.end method


# virtual methods
.method public final loadColorPickerRecentColor()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[F>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "_brush_v6"

    const-string v1, "COLOR_PICKER_RECENT_COLOR_NUM"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/addons/base/utils/PreferenceUtils;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v4, v2

    :goto_0
    if-ge v4, v1, :cond_0

    const/4 v5, 0x3

    new-array v5, v5, [F

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "COLOR_PICKER_RECENT_COLOR_H_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/high16 v7, -0x40800000    # -1.0f

    invoke-static {v0, v6, v7}, Lcom/samsung/android/support/senl/addons/base/utils/PreferenceUtils;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v6

    aput v6, v5, v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "COLOR_PICKER_RECENT_COLOR_S_"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6, v7}, Lcom/samsung/android/support/senl/addons/base/utils/PreferenceUtils;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v6

    const/4 v8, 0x1

    aput v6, v5, v8

    const/4 v6, 0x2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "COLOR_PICKER_RECENT_COLOR_V_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8, v7}, Lcom/samsung/android/support/senl/addons/base/utils/PreferenceUtils;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v7

    aput v7, v5, v6

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method public final loadRecentColor(Lcom/samsung/android/support/senl/addons/brush/model/color/IColorModelInjector;I[I[I[[F[Ljava/lang/String;)V
    .locals 8
    .param p1    # Lcom/samsung/android/support/senl/addons/brush/model/color/IColorModelInjector;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # [[F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "injector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recentColor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recentPosition"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recentHsvColor"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recentName"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RECENT_COLOR_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v3, -0x19191a

    const-string v4, "_brush_v6"

    invoke-static {v4, v2, v3}, Lcom/samsung/android/support/senl/addons/base/utils/PreferenceUtils;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    aput v2, p3, v1

    aget-object v2, p5, v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RECENT_COLOR_H_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/high16 v5, -0x40800000    # -1.0f

    invoke-static {v4, v3, v5}, Lcom/samsung/android/support/senl/addons/base/utils/PreferenceUtils;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v3

    aput v3, v2, v0

    aget-object v2, p5, v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RECENT_COLOR_S_"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3, v5}, Lcom/samsung/android/support/senl/addons/base/utils/PreferenceUtils;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v3

    const/4 v6, 0x1

    aput v3, v2, v6

    aget-object v2, p5, v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RECENT_COLOR_V_"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3, v5}, Lcom/samsung/android/support/senl/addons/base/utils/PreferenceUtils;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v3

    const/4 v5, 0x2

    aput v3, v2, v5

    aget-object v2, p5, v1

    aget v2, v2, v0

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_0

    aget-object v2, p5, v1

    aget v2, v2, v6

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_0

    aget-object v2, p5, v1

    aget v2, v2, v5

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    :cond_0
    aget v2, p3, v1

    aget-object v3, p5, v1

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/ColorCompat;->colorToHSV(I[F)V

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RECENT_COLOR_POSITION_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v3, 0x1fffff

    invoke-static {v4, v2, v3}, Lcom/samsung/android/support/senl/addons/base/utils/PreferenceUtils;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    aput v2, p4, v1

    aget v2, p4, v1

    const v3, 0xfff00

    and-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xfff

    aget v3, p4, v1

    and-int/lit16 v3, v3, 0xff

    aget v4, p3, v1

    invoke-interface {p1, v4, v2, v3}, Lcom/samsung/android/support/senl/addons/brush/model/color/IColorModelInjector;->getColorName(III)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p6, v1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method public final loadRecentColorSize()I
    .locals 4

    const-string v0, "_brush_v6"

    const-string v1, "RECENT_COLOR_NUM"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/addons/base/utils/PreferenceUtils;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    sget-object v1, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorInfoManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load Recent color: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public final loadViewMode()I
    .locals 4

    const-string v0, "_brush_v6"

    const-string v1, "COLOR_PICKER_VIEW_MODE"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/addons/base/utils/PreferenceUtils;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    sget-object v1, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorInfoManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load view mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public final saveColorPalettes(Ljava/util/List;)V
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

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3a

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "_brush_v6"

    const-string v1, "COLOR_SETTINGS"

    invoke-static {v0, v1, p1}, Lcom/samsung/android/support/senl/addons/base/utils/PreferenceUtils;->putString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final saveColorPickerRecentColor(Ljava/util/List;)V
    .locals 7
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[F>;)V"
        }
    .end annotation

    const-string v0, "hsvColors"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const-string v3, "_brush_v6"

    if-ge v2, v0, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "COLOR_PICKER_RECENT_COLOR_H_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [F

    aget v5, v5, v1

    invoke-static {v3, v4, v5}, Lcom/samsung/android/support/senl/addons/base/utils/PreferenceUtils;->putFloat(Ljava/lang/String;Ljava/lang/String;F)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "COLOR_PICKER_RECENT_COLOR_S_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [F

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-static {v3, v4, v5}, Lcom/samsung/android/support/senl/addons/base/utils/PreferenceUtils;->putFloat(Ljava/lang/String;Ljava/lang/String;F)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "COLOR_PICKER_RECENT_COLOR_V_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [F

    const/4 v6, 0x2

    aget v5, v5, v6

    invoke-static {v3, v4, v5}, Lcom/samsung/android/support/senl/addons/base/utils/PreferenceUtils;->putFloat(Ljava/lang/String;Ljava/lang/String;F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const-string v0, "COLOR_PICKER_RECENT_COLOR_NUM"

    invoke-static {v3, v0, p1}, Lcom/samsung/android/support/senl/addons/base/utils/PreferenceUtils;->putInt(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public final saveRecentColor(Ljava/util/List;)V
    .locals 8
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/addons/brush/model/color/MenuColorModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "colorTableSet"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    const-string v4, "_brush_v6"

    if-ge v2, v0, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/support/senl/addons/brush/model/color/MenuColorModel;

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/addons/brush/model/color/MenuColorModel;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RECENT_COLOR_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/support/senl/addons/brush/model/color/MenuColorModel;

    invoke-virtual {v6}, Lcom/samsung/android/support/senl/addons/brush/model/color/MenuColorModel;->getColor()I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/samsung/android/support/senl/addons/base/utils/PreferenceUtils;->putInt(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RECENT_COLOR_H_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/support/senl/addons/brush/model/color/MenuColorModel;

    invoke-virtual {v6}, Lcom/samsung/android/support/senl/addons/base/model/color/ColorModel;->getHSV()[F

    move-result-object v6

    aget v6, v6, v1

    invoke-static {v4, v5, v6}, Lcom/samsung/android/support/senl/addons/base/utils/PreferenceUtils;->putFloat(Ljava/lang/String;Ljava/lang/String;F)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RECENT_COLOR_S_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/support/senl/addons/brush/model/color/MenuColorModel;

    invoke-virtual {v6}, Lcom/samsung/android/support/senl/addons/base/model/color/ColorModel;->getHSV()[F

    move-result-object v6

    const/4 v7, 0x1

    aget v6, v6, v7

    invoke-static {v4, v5, v6}, Lcom/samsung/android/support/senl/addons/base/utils/PreferenceUtils;->putFloat(Ljava/lang/String;Ljava/lang/String;F)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RECENT_COLOR_V_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/support/senl/addons/brush/model/color/MenuColorModel;

    invoke-virtual {v6}, Lcom/samsung/android/support/senl/addons/base/model/color/ColorModel;->getHSV()[F

    move-result-object v6

    const/4 v7, 0x2

    aget v6, v6, v7

    invoke-static {v4, v5, v6}, Lcom/samsung/android/support/senl/addons/base/utils/PreferenceUtils;->putFloat(Ljava/lang/String;Ljava/lang/String;F)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RECENT_COLOR_POSITION_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/support/senl/addons/brush/model/color/MenuColorModel;

    invoke-virtual {v6}, Lcom/samsung/android/support/senl/addons/base/model/color/AbsBaseColorModel;->getPosition()I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/samsung/android/support/senl/addons/base/utils/PreferenceUtils;->putInt(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_1
    const-string p1, "RECENT_COLOR_NUM"

    invoke-static {v4, p1, v3}, Lcom/samsung/android/support/senl/addons/base/utils/PreferenceUtils;->putInt(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object p1, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorInfoManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "save Recent Color: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final saveViewMode(I)V
    .locals 3

    const-string v0, "_brush_v6"

    const-string v1, "COLOR_PICKER_VIEW_MODE"

    invoke-static {v0, v1, p1}, Lcom/samsung/android/support/senl/addons/base/utils/PreferenceUtils;->putInt(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorInfoManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "save view mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
