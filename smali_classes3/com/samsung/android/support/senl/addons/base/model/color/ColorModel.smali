.class public Lcom/samsung/android/support/senl/addons/base/model/color/ColorModel;
.super Lcom/samsung/android/support/senl/addons/base/model/color/AbsBaseColorModel;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/base/model/color/ColorModel$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0014\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0016\u0018\u0000 \u001b2\u00020\u00012\u00020\u0002:\u0001\u001bB\u000f\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005B\u0017\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0007B!\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\nJ\u001c\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\t2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\tH\u0002J\u0018\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J\u0008\u0010\u0014\u001a\u00020\tH\u0016J\u0010\u0010\u0015\u001a\u00020\r2\u0006\u0010\u0016\u001a\u00020\u0002H\u0016J\u0010\u0010\u0017\u001a\u00020\r2\u0006\u0010\u0016\u001a\u00020\u0002H\u0016J\u0010\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u000f\u001a\u00020\u0002H\u0016J\u0012\u0010\u0018\u001a\u00020\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\tH\u0016J\u0010\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0003\u001a\u00020\u0004H\u0016J\u001a\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u001a\u001a\u0004\u0018\u00010\tH\u0016R\u000e\u0010\u000b\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/model/color/ColorModel;",
        "Lcom/samsung/android/support/senl/addons/base/model/color/AbsBaseColorModel;",
        "Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;",
        "color",
        "",
        "(I)V",
        "position",
        "(II)V",
        "hsvColor",
        "",
        "(I[FI)V",
        "mHSV",
        "compareHSV",
        "",
        "dst",
        "src",
        "equalFloatValues",
        "v1",
        "",
        "v2",
        "getHSV",
        "isRgbSame",
        "other",
        "isSame",
        "setColor",
        "",
        "hsv",
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
.field public static final Companion:Lcom/samsung/android/support/senl/addons/base/model/color/ColorModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final mHSV:[F
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/addons/base/model/color/ColorModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/addons/base/model/color/ColorModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/support/senl/addons/base/model/color/ColorModel;->Companion:Lcom/samsung/android/support/senl/addons/base/model/color/ColorModel$Companion;

    const-string v0, "ColorModel"

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/addons/base/model/color/ColorModel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/addons/base/model/color/AbsBaseColorModel;-><init>(I)V

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/color/ColorModel;->mHSV:[F

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ColorCompat;->colorToHSV(I[F)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/addons/base/model/color/AbsBaseColorModel;-><init>(II)V

    const/4 p2, 0x3

    new-array p2, p2, [F

    iput-object p2, p0, Lcom/samsung/android/support/senl/addons/base/model/color/ColorModel;->mHSV:[F

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/ColorCompat;->colorToHSV(I[F)V

    return-void
.end method

.method public constructor <init>(I[FI)V
    .locals 2
    .param p2    # [F
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p3}, Lcom/samsung/android/support/senl/addons/base/model/color/AbsBaseColorModel;-><init>(II)V

    const/4 p3, 0x3

    new-array v0, p3, [F

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/color/ColorModel;->mHSV:[F

    if-eqz p2, :cond_0

    array-length v1, p2

    if-ne v1, p3, :cond_0

    const/4 p1, 0x0

    invoke-static {p2, p1, v0, p1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ColorCompat;->colorToHSV(I[F)V

    :goto_0
    return-void
.end method

.method private final compareHSV([F[F)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    array-length v1, p1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_4

    aget v3, p1, v1

    aget v4, p2, v1

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/support/senl/addons/base/model/color/ColorModel;->equalFloatValues(FF)Z

    move-result v3

    if-nez v3, :cond_3

    return v0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x1

    return p1

    :cond_5
    :goto_1
    return v0
.end method

.method private final equalFloatValues(FF)Z
    .locals 0

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const p2, 0x33d6bf95    # 1.0E-7f

    cmpg-float p1, p1, p2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public getHSV()[F
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/color/ColorModel;->mHSV:[F

    return-object v0
.end method

.method public isRgbSame(Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;)Z
    .locals 2
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/model/color/AbsBaseColorModel;->getColor()I

    move-result v0

    const/high16 v1, -0x1000000

    or-int/2addr v0, v1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/model/color/IBaseColorModel;->getColor()I

    move-result p1

    or-int/2addr p1, v1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isSame(Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;)Z
    .locals 2
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/model/color/AbsBaseColorModel;->getColor()I

    move-result v0

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/model/color/IBaseColorModel;->getColor()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/model/color/ColorModel;->getHSV()[F

    move-result-object v0

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;->getHSV()[F

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/addons/base/model/color/ColorModel;->compareHSV([F[F)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/color/ColorModel;->mHSV:[F

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ColorCompat;->colorToHSV(I[F)V

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/addons/base/model/color/AbsBaseColorModel;->setColor(I)V

    return-void
.end method

.method public setColor(I[F)V
    .locals 2
    .param p2    # [F
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-static {p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/ColorCompat;->HSVToColor([F)I

    move-result v0

    const/high16 v1, -0x1000000

    or-int/2addr v1, p1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/model/color/ColorModel;->TAG:Ljava/lang/String;

    const-string v1, "Color and HSV is not matched - update HSV"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/ColorCompat;->colorToHSV(I[F)V

    :cond_0
    invoke-virtual {p0, p2}, Lcom/samsung/android/support/senl/addons/base/model/color/ColorModel;->setColor([F)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/base/model/color/AbsBaseColorModel;->setMColor(I)V

    return-void
.end method

.method public setColor(Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;)V
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "src"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/model/color/IBaseColorModel;->getColor()I

    move-result v0

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;->getHSV()[F

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/support/senl/addons/base/model/color/ColorModel;->setColor(I[F)V

    return-void
.end method

.method public setColor([F)V
    .locals 3
    .param p1    # [F
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    array-length v1, p1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/base/model/color/ColorModel;->mHSV:[F

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/support/senl/addons/base/model/color/ColorModel;->compareHSV([F[F)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/base/model/color/ColorModel;->mHSV:[F

    array-length v2, p1

    invoke-static {p1, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/ColorCompat;->HSVToColor([F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/base/model/color/AbsBaseColorModel;->setMColor(I)V

    const/16 p1, 0xc9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->notifyChanged(Ljava/lang/Object;)V

    :cond_2
    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "HSV has must 3 fields"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
