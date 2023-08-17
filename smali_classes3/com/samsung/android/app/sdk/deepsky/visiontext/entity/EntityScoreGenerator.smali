.class public final Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/EntityScoreGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/EntityScoreGenerator$Companion;,
        Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/EntityScoreGenerator$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J(\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010\r\u001a\u0004\u0018\u00010\u0006J\u0018\u0010\u000e\u001a\u00020\u00082\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0010H\u0002J\u0014\u0010\u0012\u001a\u00020\u0010*\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0013H\u0002J\u000c\u0010\u0015\u001a\u00020\u0010*\u00020\u0006H\u0002\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/EntityScoreGenerator;",
        "",
        "()V",
        "checkRect",
        "",
        "rect",
        "Landroid/graphics/Rect;",
        "measureEntityScore",
        "",
        "text",
        "",
        "entityType",
        "Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/EntityType;",
        "imageRect",
        "normalize",
        "value",
        "",
        "maxValue",
        "distance",
        "Landroid/graphics/Point;",
        "to",
        "maxDistance",
        "Companion",
        "deepsky-sdk-2.2.9_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/EntityScoreGenerator$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final DISTANCE_SCORE_IGNORED:F = 0.0f

.field private static final ENTITY_SCORE_CENTER_OF_IMAGE:F = 1.0f

.field private static final ENTITY_SCORE_LOW:F = 0.7f

.field private static final ENTITY_SCORE_NORMAL:F = 0.8f

.field private static final RATIO_SCORE_DISTANCE:F = 0.1f

.field private static final RATIO_SCORE_ENTITY:F = 0.9f


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/EntityScoreGenerator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/EntityScoreGenerator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/EntityScoreGenerator;->Companion:Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/EntityScoreGenerator$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final checkRect(Landroid/graphics/Rect;)V
    .locals 2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lt v0, v1, :cond_2

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    if-gt v0, v1, :cond_1

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    if-gt v0, p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "top > bottom"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "left > right"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "height < 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "width < 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final distance(Landroid/graphics/Point;Landroid/graphics/Point;)D
    .locals 6

    iget v0, p1, Landroid/graphics/Point;->x:I

    int-to-double v0, v0

    iget v2, p2, Landroid/graphics/Point;->x:I

    int-to-double v2, v2

    sub-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-double v4, p1

    iget p1, p2, Landroid/graphics/Point;->y:I

    int-to-double p1, p1

    sub-double/2addr v4, p1

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    add-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    return-wide p1
.end method

.method private final maxDistance(Landroid/graphics/Rect;)D
    .locals 4

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method private final normalize(DD)F
    .locals 0

    sub-double p1, p3, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    div-double/2addr p1, p3

    double-to-float p1, p1

    return p1
.end method


# virtual methods
.method public final measureEntityScore(Ljava/lang/String;Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/EntityType;Landroid/graphics/Rect;Landroid/graphics/Rect;)F
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/EntityType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string/jumbo v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entityType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rect"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p4, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-direct {p0, p4}, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/EntityScoreGenerator;->checkRect(Landroid/graphics/Rect;)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    :cond_1
    check-cast v1, Lkotlin/Unit;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p4}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    invoke-virtual {p4}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_3

    const/high16 p1, 0x3f800000    # 1.0f

    return p1

    :cond_3
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p4}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    invoke-virtual {p4}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerY()I

    move-result p3

    invoke-direct {v1, v2, p3}, Landroid/graphics/Point;-><init>(II)V

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/EntityScoreGenerator;->distance(Landroid/graphics/Point;Landroid/graphics/Point;)D

    move-result-wide v0

    invoke-direct {p0, p4}, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/EntityScoreGenerator;->maxDistance(Landroid/graphics/Rect;)D

    move-result-wide p3

    invoke-direct {p0, v0, v1, p3, p4}, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/EntityScoreGenerator;->normalize(DD)F

    move-result p3

    move v0, p3

    :goto_1
    sget-object p3, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/EntityScoreGenerator$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, p3, p2

    const/4 p3, 0x1

    const p4, 0x3f4ccccd    # 0.8f

    if-eq p2, p3, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 p2, 0x4

    if-gt p1, p2, :cond_5

    const p4, 0x3f333333    # 0.7f

    :cond_5
    :goto_2
    const p1, 0x3f666666    # 0.9f

    mul-float/2addr p4, p1

    const p1, 0x3dcccccd    # 0.1f

    mul-float/2addr v0, p1

    add-float/2addr p4, v0

    return p4
.end method
