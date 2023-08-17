.class public Lcom/samsung/android/support/senl/addons/brush/model/color/ColorRecentModel;
.super Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/brush/model/color/ColorRecentModel$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u0014\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0016\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019BK\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007\u0012\u0010\u0010\t\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\n\u0018\u00010\u0007\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0002\u0010\u000eJ\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\u0003H\u0016J\u0008\u0010\u0013\u001a\u00020\u0003H\u0016J\u000e\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017J\u000e\u0010\u0018\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/brush/model/color/ColorRecentModel;",
        "Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;",
        "page",
        "",
        "colorSets",
        "",
        "hsvColorSets",
        "",
        "",
        "nameSets",
        "",
        "positionSets",
        "injector",
        "Lcom/samsung/android/support/senl/addons/brush/model/color/IColorModelInjector;",
        "(I[I[[F[Ljava/lang/String;[ILcom/samsung/android/support/senl/addons/brush/model/color/IColorModelInjector;)V",
        "mColorModelInjector",
        "getColorModel",
        "Lcom/samsung/android/support/senl/addons/brush/model/color/IMenuColorModel;",
        "index",
        "getColorSize",
        "push",
        "",
        "color",
        "Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;",
        "updateSelectPosition",
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
.field public static final Companion:Lcom/samsung/android/support/senl/addons/brush/model/color/ColorRecentModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final OBSV_PROPERTY_RECENT_PUSHED:I = 0x4e84

.field private static final RECENT_LENGTH:I = 0x9


# instance fields
.field private mColorModelInjector:Lcom/samsung/android/support/senl/addons/brush/model/color/IColorModelInjector;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorRecentModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorRecentModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorRecentModel;->Companion:Lcom/samsung/android/support/senl/addons/brush/model/color/ColorRecentModel$Companion;

    return-void
.end method

.method public constructor <init>(I[I[[F[Ljava/lang/String;[ILcom/samsung/android/support/senl/addons/brush/model/color/IColorModelInjector;)V
    .locals 1
    .param p2    # [I
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # [[F
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # [I
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/samsung/android/support/senl/addons/brush/model/color/IColorModelInjector;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "injector"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;-><init>(I[I[[F[Ljava/lang/String;[I)V

    iput-object p6, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorRecentModel;->mColorModelInjector:Lcom/samsung/android/support/senl/addons/brush/model/color/IColorModelInjector;

    return-void
.end method


# virtual methods
.method public getColorModel(I)Lcom/samsung/android/support/senl/addons/brush/model/color/IMenuColorModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    if-le p1, v0, :cond_1

    add-int/lit8 p1, p1, 0x1

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;->getColorModel(I)Lcom/samsung/android/support/senl/addons/brush/model/color/IMenuColorModel;

    move-result-object p1

    return-object p1
.end method

.method public getColorSize()I
    .locals 1

    const/16 v0, 0x9

    return v0
.end method

.method public final push(Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;)V
    .locals 7
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "color"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorRecentModel;->getColorSize()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    move v4, v1

    :goto_0
    if-ge v4, v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;->getMColorTableSet()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/support/senl/addons/brush/model/color/MenuColorModel;

    invoke-virtual {v5, v1}, Lcom/samsung/android/support/senl/addons/brush/model/color/MenuColorModel;->select(Z)Z

    invoke-virtual {v5, p1}, Lcom/samsung/android/support/senl/addons/base/model/color/ColorModel;->isRgbSame(Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v3, v4

    move-object v2, v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    if-nez v2, :cond_2

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;->getMColorTableSet()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/support/senl/addons/brush/model/color/MenuColorModel;

    :cond_2
    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;->getMColorTableSet()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/model/color/IBaseColorModel;->getColor()I

    move-result v0

    const/high16 v3, -0x1000000

    or-int/2addr v0, v3

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;->getHSV()[F

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/samsung/android/support/senl/addons/base/model/color/ColorModel;->setColor(I[F)V

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/model/color/IBaseColorModel;->getPosition()I

    move-result v0

    const/high16 v3, -0x100000

    and-int/2addr v0, v3

    const/high16 v3, 0x400000

    const v5, 0xfff00

    if-ne v0, v3, :cond_3

    const p1, 0x1fffff

    goto :goto_1

    :cond_3
    const/high16 v0, 0x100000

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/model/color/IBaseColorModel;->getPosition()I

    move-result v3

    and-int/2addr v3, v5

    or-int/2addr v0, v3

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/model/color/IBaseColorModel;->getPosition()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    :goto_1
    invoke-virtual {v2, p1}, Lcom/samsung/android/support/senl/addons/base/model/color/AbsBaseColorModel;->setPosition(I)V

    invoke-virtual {v2, v4}, Lcom/samsung/android/support/senl/addons/brush/model/color/MenuColorModel;->setEnabled(Z)V

    and-int v0, p1, v5

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xfff

    and-int/lit16 p1, p1, 0xff

    iget-object v3, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorRecentModel;->mColorModelInjector:Lcom/samsung/android/support/senl/addons/brush/model/color/IColorModelInjector;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/addons/brush/model/color/MenuColorModel;->getColor()I

    move-result v4

    invoke-interface {v3, v4, v0, p1}, Lcom/samsung/android/support/senl/addons/brush/model/color/IColorModelInjector;->getColorName(III)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/samsung/android/support/senl/addons/brush/model/color/MenuColorModel;->setName(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;->getMColorTableSet()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/16 p1, 0x4e84

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->notifyChanged(Ljava/lang/Object;)V

    sget-object p1, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorInfoManager;->Companion:Lcom/samsung/android/support/senl/addons/brush/model/color/ColorInfoManager$Companion;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorInfoManager$Companion;->getInstance()Lcom/samsung/android/support/senl/addons/brush/model/color/ColorInfoManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;->getMColorTableSet()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorInfoManager;->saveRecentColor(Ljava/util/List;)V

    :cond_4
    return-void
.end method

.method public final updateSelectPosition(Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;)V
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "color"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;->getColorIndex(Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;)I

    move-result p1

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;->getMColorTableSet()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;->setMSelectedIndex(I)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;->getMColorTableSet()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/addons/brush/model/color/MenuColorModel;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/addons/brush/model/color/MenuColorModel;->select(Z)Z

    :cond_0
    return-void
.end method
