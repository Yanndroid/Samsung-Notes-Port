.class public Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;
.super Lcom/samsung/android/support/senl/addons/base/model/common/AbsBaseModel;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/addons/brush/model/color/IColorPaletteModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel$Companion;,
        Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel$OnSelectedListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0014\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0008\u0016\u0018\u0000 42\u00020\u00012\u00020\u0002:\u000245B;\u0008\u0010\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0010\u0010\u0007\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\t\u0018\u00010\u0008\u0012\u0006\u0010\n\u001a\u00020\u0004\u0012\u0006\u0010\u000b\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u000cBE\u0008\u0010\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u000e\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u0008\u0012\u0010\u0010\u0007\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\t\u0018\u00010\u0008\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0010J\u000e\u0010\"\u001a\u00020\u00042\u0006\u0010#\u001a\u00020$J\u0012\u0010%\u001a\u0004\u0018\u00010&2\u0006\u0010\'\u001a\u00020\u0004H\u0016J\u000e\u0010(\u001a\u00020\u00042\u0006\u0010#\u001a\u00020\u0004J\u0008\u0010)\u001a\u00020\u0004H\u0016J\u0018\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020\u00042\u0006\u0010#\u001a\u00020$H\u0002J\u0006\u0010-\u001a\u00020+J\u001e\u0010.\u001a\u00020/2\u0006\u0010#\u001a\u00020$2\u0006\u0010,\u001a\u00020\u00042\u0006\u00100\u001a\u00020/J\u0010\u00101\u001a\u00020+2\u0008\u00102\u001a\u0004\u0018\u00010!J\u000e\u00103\u001a\u00020+2\u0006\u0010\'\u001a\u00020\u0004R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R \u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u000e\u0010\u001a\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u001b\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\u0010\u0010 \u001a\u0004\u0018\u00010!X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00066"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;",
        "Lcom/samsung/android/support/senl/addons/base/model/common/AbsBaseModel;",
        "Lcom/samsung/android/support/senl/addons/brush/model/color/IColorPaletteModel;",
        "page",
        "",
        "colorSets",
        "",
        "nameSets",
        "",
        "",
        "mode",
        "selectPage",
        "(I[I[Ljava/lang/String;II)V",
        "hsvColorSets",
        "",
        "positionSets",
        "(I[I[[F[Ljava/lang/String;[I)V",
        "mColorSelectionListener",
        "Lcom/samsung/android/support/senl/addons/brush/model/color/MenuColorModel$OnSelectionListener;",
        "mColorTableSet",
        "",
        "Lcom/samsung/android/support/senl/addons/brush/model/color/MenuColorModel;",
        "getMColorTableSet",
        "()Ljava/util/List;",
        "setMColorTableSet",
        "(Ljava/util/List;)V",
        "mPage",
        "mSelectedIndex",
        "getMSelectedIndex",
        "()I",
        "setMSelectedIndex",
        "(I)V",
        "mSelectionListener",
        "Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel$OnSelectedListener;",
        "getColorIndex",
        "color",
        "Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;",
        "getColorModel",
        "Lcom/samsung/android/support/senl/addons/brush/model/color/IMenuColorModel;",
        "index",
        "getColorPosition",
        "getColorSize",
        "onSelected",
        "",
        "position",
        "releaseSelectedColor",
        "selectColorPosition",
        "",
        "isSkip",
        "setSelectionListener",
        "listener",
        "updateSelectedIndex",
        "Companion",
        "OnSelectedListener",
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
.field public static final Companion:Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PALETTE_LENGTH:I = 0x8


# instance fields
.field private final mColorSelectionListener:Lcom/samsung/android/support/senl/addons/brush/model/color/MenuColorModel$OnSelectionListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mColorTableSet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/addons/brush/model/color/MenuColorModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mPage:I

.field private mSelectedIndex:I

.field private mSelectionListener:Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel$OnSelectedListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;->Companion:Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel$Companion;

    return-void
.end method

.method public constructor <init>(I[I[Ljava/lang/String;II)V
    .locals 8
    .param p2    # [I
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/model/common/AbsBaseModel;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;->mColorTableSet:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;->mSelectedIndex:I

    new-instance v0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel$mColorSelectionListener$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel$mColorSelectionListener$1;-><init>(Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;->mColorSelectionListener:Lcom/samsung/android/support/senl/addons/brush/model/color/MenuColorModel$OnSelectionListener;

    shl-int/lit8 p4, p4, 0x14

    const/high16 v0, -0x100000

    and-int/2addr p4, v0

    shl-int/lit8 p5, p5, 0x8

    const v0, 0xfff00

    and-int/2addr p5, v0

    or-int/2addr p4, p5

    const/4 p5, 0x0

    if-eqz p2, :cond_0

    array-length v0, p2

    goto :goto_0

    :cond_0
    move v0, p5

    :goto_0
    if-eqz p3, :cond_1

    array-length v1, p3

    goto :goto_1

    :cond_1
    move v1, p5

    :goto_1
    iput p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;->mPage:I

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;->getColorSize()I

    move-result p1

    move v2, p5

    :goto_2
    if-ge v2, p1, :cond_4

    if-ge v2, v0, :cond_2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget v3, p2, v2

    const/4 v4, 0x1

    goto :goto_3

    :cond_2
    move v3, p5

    move v4, v3

    :goto_3
    if-ge v2, v1, :cond_3

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget-object v5, p3, v2

    goto :goto_4

    :cond_3
    const/4 v5, 0x0

    :goto_4
    and-int/lit16 v6, v2, 0xff

    or-int/2addr v6, p4

    new-instance v7, Lcom/samsung/android/support/senl/addons/brush/model/color/MenuColorModel;

    invoke-direct {v7, v3, v5, v6}, Lcom/samsung/android/support/senl/addons/brush/model/color/MenuColorModel;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v7, v4}, Lcom/samsung/android/support/senl/addons/brush/model/color/MenuColorModel;->setEnabled(Z)V

    iget-object v3, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;->mColorSelectionListener:Lcom/samsung/android/support/senl/addons/brush/model/color/MenuColorModel$OnSelectionListener;

    invoke-virtual {v7, v3}, Lcom/samsung/android/support/senl/addons/brush/model/color/MenuColorModel;->setSelectionListener(Lcom/samsung/android/support/senl/addons/brush/model/color/MenuColorModel$OnSelectionListener;)V

    iget-object v3, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;->mColorTableSet:Ljava/util/List;

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public constructor <init>(I[I[[F[Ljava/lang/String;[I)V
    .locals 16
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

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/senl/addons/base/model/common/AbsBaseModel;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;->mColorTableSet:Ljava/util/List;

    const/4 v4, -0x1

    iput v4, v0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;->mSelectedIndex:I

    new-instance v4, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel$mColorSelectionListener$1;

    invoke-direct {v4, v0}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel$mColorSelectionListener$1;-><init>(Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;)V

    iput-object v4, v0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;->mColorSelectionListener:Lcom/samsung/android/support/senl/addons/brush/model/color/MenuColorModel$OnSelectionListener;

    move/from16 v4, p1

    iput v4, v0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;->mPage:I

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    array-length v5, v1

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    if-eqz v2, :cond_1

    array-length v6, v2

    goto :goto_1

    :cond_1
    move v6, v4

    :goto_1
    if-eqz v3, :cond_2

    array-length v7, v3

    goto :goto_2

    :cond_2
    move v7, v4

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;->getColorSize()I

    move-result v8

    const/4 v9, 0x3

    new-array v9, v9, [F

    move v10, v4

    :goto_3
    if-ge v10, v8, :cond_9

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-ge v10, v5, :cond_6

    invoke-static/range {p2 .. p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget v14, v1, v10

    if-eqz p3, :cond_3

    aget-object v15, p3, v10

    if-eqz v15, :cond_3

    aget v15, v15, v4

    goto :goto_4

    :cond_3
    move v15, v13

    :goto_4
    aput v15, v9, v4

    if-eqz p3, :cond_4

    aget-object v15, p3, v10

    if-eqz v15, :cond_4

    aget v15, v15, v12

    goto :goto_5

    :cond_4
    move v15, v13

    :goto_5
    aput v15, v9, v12

    if-eqz p3, :cond_5

    aget-object v15, p3, v10

    if-eqz v15, :cond_5

    aget v13, v15, v11

    :cond_5
    aput v13, v9, v11

    goto :goto_6

    :cond_6
    aput v13, v9, v4

    aput v13, v9, v12

    aput v13, v9, v11

    move v12, v4

    move v14, v12

    :goto_6
    if-ge v10, v6, :cond_7

    invoke-static/range {p4 .. p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget-object v11, v2, v10

    goto :goto_7

    :cond_7
    const/4 v11, 0x0

    :goto_7
    if-ge v10, v7, :cond_8

    invoke-static/range {p5 .. p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget v13, v3, v10

    const v15, 0xfff00

    and-int/2addr v13, v15

    const/high16 v15, 0x100000

    or-int/2addr v13, v15

    aget v15, v3, v10

    and-int/lit16 v15, v15, 0xff

    or-int/2addr v13, v15

    goto :goto_8

    :cond_8
    const v13, 0x1fffff

    :goto_8
    new-instance v15, Lcom/samsung/android/support/senl/addons/brush/model/color/MenuColorModel;

    invoke-direct {v15, v14, v9, v11, v13}, Lcom/samsung/android/support/senl/addons/brush/model/color/MenuColorModel;-><init>(I[FLjava/lang/String;I)V

    invoke-virtual {v15, v12}, Lcom/samsung/android/support/senl/addons/brush/model/color/MenuColorModel;->setEnabled(Z)V

    iget-object v11, v0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;->mColorSelectionListener:Lcom/samsung/android/support/senl/addons/brush/model/color/MenuColorModel$OnSelectionListener;

    invoke-virtual {v15, v11}, Lcom/samsung/android/support/senl/addons/brush/model/color/MenuColorModel;->setSelectionListener(Lcom/samsung/android/support/senl/addons/brush/model/color/MenuColorModel$OnSelectionListener;)V

    iget-object v11, v0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;->mColorTableSet:Ljava/util/List;

    invoke-interface {v11, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_9
    return-void
.end method

.method public static final synthetic access$onSelected(Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;ILcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;->onSelected(ILcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;)V

    return-void
.end method

.method private final onSelected(ILcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;)V
    .locals 2

    const/high16 v0, -0x100000

    and-int/2addr v0, p1

    const/high16 v1, 0x100000

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p2}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;->getColorIndex(Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;)I

    move-result v0

    iget v1, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;->mSelectedIndex:I

    if-eq v1, v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;->releaseSelectedColor()V

    iput v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;->mSelectedIndex:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;->mSelectedIndex:I

    and-int/lit16 v1, p1, 0xff

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;->releaseSelectedColor()V

    iput v1, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;->mSelectedIndex:I

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;->mSelectionListener:Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel$OnSelectedListener;

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;->mPage:I

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel$OnSelectedListener;->onSelected(IILcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final getColorIndex(Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;)I
    .locals 3
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "color"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;->mColorTableSet:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;->mColorTableSet:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/addons/brush/model/color/MenuColorModel;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/addons/brush/model/color/MenuColorModel;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;->mColorTableSet:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/addons/brush/model/color/MenuColorModel;

    invoke-virtual {v2, p1}, Lcom/samsung/android/support/senl/addons/base/model/color/ColorModel;->isRgbSame(Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public getColorModel(I)Lcom/samsung/android/support/senl/addons/brush/model/color/IMenuColorModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;->mColorTableSet:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/addons/brush/model/color/IMenuColorModel;

    return-object p1
.end method

.method public final getColorPosition(I)I
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;->mColorTableSet:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/addons/brush/model/color/MenuColorModel;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/addons/brush/model/color/MenuColorModel;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/addons/brush/model/color/MenuColorModel;->getColor()I

    move-result v2

    const/high16 v3, -0x1000000

    or-int/2addr v2, v3

    or-int/2addr v3, p1

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/addons/base/model/color/AbsBaseColorModel;->getPosition()I

    move-result p1

    return p1

    :cond_1
    const/high16 p1, 0x400000

    return p1
.end method

.method public getColorSize()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public final getMColorTableSet()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/addons/brush/model/color/MenuColorModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;->mColorTableSet:Ljava/util/List;

    return-object v0
.end method

.method public final getMSelectedIndex()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;->mSelectedIndex:I

    return v0
.end method

.method public final releaseSelectedColor()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;->mSelectedIndex:I

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;->mColorTableSet:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;->mColorTableSet:Ljava/util/List;

    iget v1, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;->mSelectedIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/addons/brush/model/color/MenuColorModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/addons/brush/model/color/MenuColorModel;->select(Z)Z

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;->mSelectedIndex:I

    return-void
.end method

.method public final selectColorPosition(Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;IZ)Z
    .locals 4
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "color"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v0, -0x100000

    and-int/2addr v0, p2

    const/4 v1, 0x0

    const/high16 v2, 0x400000

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;->mColorTableSet:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    iget-object v3, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;->mColorTableSet:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/senl/addons/brush/model/color/MenuColorModel;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/addons/brush/model/color/MenuColorModel;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;->mColorTableSet:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/senl/addons/brush/model/color/MenuColorModel;

    invoke-virtual {v3, p1}, Lcom/samsung/android/support/senl/addons/base/model/color/ColorModel;->isRgbSame(Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez p3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;->mColorTableSet:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/senl/addons/brush/model/color/MenuColorModel;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/addons/base/model/color/AbsBaseColorModel;->getPosition()I

    move-result v3

    if-ne v3, p2, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;->mColorTableSet:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/addons/brush/model/color/MenuColorModel;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/addons/brush/model/color/MenuColorModel;->select(Z)Z

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;->updateSelectedIndex(I)V

    return p2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public final setMColorTableSet(Ljava/util/List;)V
    .locals 1
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

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;->mColorTableSet:Ljava/util/List;

    return-void
.end method

.method public final setMSelectedIndex(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;->mSelectedIndex:I

    return-void
.end method

.method public final setSelectionListener(Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel$OnSelectedListener;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel$OnSelectedListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;->mSelectionListener:Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel$OnSelectedListener;

    return-void
.end method

.method public final updateSelectedIndex(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;->mSelectedIndex:I

    return-void
.end method
