.class public abstract enum Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "Area"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;

.field public static final enum BOTTOM:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;

.field public static final enum LEFT:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;

.field public static final enum RIGHT:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;

.field public static final enum TOP:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;


# instance fields
.field public anchorMargin:I

.field public anchorRect:Landroid/graphics/Rect;

.field public borderRect:Landroid/graphics/Rect;

.field public childRect:Landroid/graphics/Rect;

.field private emptySpace:I

.field private inside:I

.field public final isHorizon:Z

.field private outside:I

.field public parentRect:Landroid/graphics/Rect;

.field private score:F


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area$1;

    const-string v1, "LEFT"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area$1;-><init>(Ljava/lang/String;IZLcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/a;)V

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;->LEFT:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area$2;

    const-string v5, "RIGHT"

    invoke-direct {v1, v5, v3, v3, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area$2;-><init>(Ljava/lang/String;IZLcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/b;)V

    sput-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;->RIGHT:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;

    new-instance v5, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area$3;

    const-string v6, "TOP"

    const/4 v7, 0x2

    invoke-direct {v5, v6, v7, v2, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area$3;-><init>(Ljava/lang/String;IZLcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/c;)V

    sput-object v5, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;->TOP:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;

    new-instance v6, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area$4;

    const-string v8, "BOTTOM"

    const/4 v9, 0x3

    invoke-direct {v6, v8, v9, v2, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area$4;-><init>(Ljava/lang/String;IZLcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/d;)V

    sput-object v6, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;->BOTTOM:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;

    const/4 v4, 0x4

    new-array v4, v4, [Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;

    aput-object v0, v4, v2

    aput-object v1, v4, v3

    aput-object v5, v4, v7

    aput-object v6, v4, v9

    sput-object v4, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;->$VALUES:[Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;->isHorizon:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IZLcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/e;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;-><init>(Ljava/lang/String;IZ)V

    return-void
.end method

.method public static calculateScore()V
    .locals 10

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;->getInsideMin()I

    move-result v0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;->getInsideMax()I

    move-result v1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;->getEmptySpaceMax()I

    move-result v2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;->values()[Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_5

    aget-object v6, v3, v5

    const/4 v7, 0x0

    iput v7, v6, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;->score:F

    iget-boolean v7, v6, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;->isHorizon:Z

    if-eqz v7, :cond_0

    iget-object v7, v6, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;->anchorRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    goto :goto_1

    :cond_0
    iget-object v7, v6, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;->anchorRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    :goto_1
    iget v8, v6, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;->anchorMargin:I

    add-int/2addr v7, v8

    iget v8, v6, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;->outside:I

    if-le v8, v7, :cond_1

    iget v7, v6, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;->score:F

    const v8, 0x3e99999a    # 0.3f

    add-float/2addr v7, v8

    iput v7, v6, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;->score:F

    :cond_1
    iget v7, v6, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;->inside:I

    add-int/lit8 v8, v0, 0xf

    const v9, 0x3dcccccd    # 0.1f

    if-ge v7, v8, :cond_2

    iget v7, v6, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;->score:F

    const v8, 0x3e4ccccd    # 0.2f

    add-float/2addr v7, v8

    :goto_2
    iput v7, v6, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;->score:F

    goto :goto_3

    :cond_2
    if-ge v7, v1, :cond_3

    iget v7, v6, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;->score:F

    add-float/2addr v7, v9

    goto :goto_2

    :cond_3
    :goto_3
    iget v7, v6, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;->emptySpace:I

    if-ne v7, v2, :cond_4

    iget v7, v6, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;->score:F

    add-float/2addr v7, v9

    iput v7, v6, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;->score:F

    :cond_4
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil;->a()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "area "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " score : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v6, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;->score:F

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public static getCandidateArea(Z)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;
    .locals 8

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;->LEFT:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;->values()[Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, v1, v3

    invoke-virtual {v0, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_2

    :cond_0
    iget v5, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;->score:F

    iget v6, v4, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;->score:F

    cmpg-float v7, v5, v6

    if-gez v7, :cond_1

    goto :goto_1

    :cond_1
    cmpl-float v5, v5, v6

    if-nez v5, :cond_3

    if-eqz p0, :cond_2

    iget v5, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;->inside:I

    iget v6, v4, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;->inside:I

    if-le v5, v6, :cond_2

    goto :goto_1

    :cond_2
    if-nez p0, :cond_3

    iget v5, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;->outside:I

    iget v6, v4, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;->outside:I

    if-ge v5, v6, :cond_3

    :goto_1
    move-object v0, v4

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "candidate area "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " priority inside "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getEmptySpaceMax()I
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;->LEFT:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;

    iget v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;->emptySpace:I

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;->RIGHT:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;

    iget v1, v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;->emptySpace:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;->TOP:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;

    iget v1, v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;->emptySpace:I

    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;->BOTTOM:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;

    iget v2, v2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;->emptySpace:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private static getInsideMax()I
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;->LEFT:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;

    iget v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;->inside:I

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;->RIGHT:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;

    iget v1, v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;->inside:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;->TOP:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;

    iget v1, v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;->inside:I

    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;->BOTTOM:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;

    iget v2, v2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;->inside:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private static getInsideMin()I
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;->LEFT:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;

    iget v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;->inside:I

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;->RIGHT:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;

    iget v1, v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;->inside:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;->TOP:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;

    iget v1, v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;->inside:I

    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;->BOTTOM:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;

    iget v2, v2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;->inside:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public static setRectInfo(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 9

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;->values()[Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;->setRect(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;
    .locals 1

    const-class v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;->$VALUES:[Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;

    invoke-virtual {v0}, [Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;

    return-object v0
.end method


# virtual methods
.method public adjustOutBorder(II)Landroid/graphics/Rect;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;->anchorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;->anchorRect:Landroid/graphics/Rect;

    iget p2, p1, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;->borderRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    if-le p2, v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;->anchorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int/2addr p2, v0

    iput p2, p1, Landroid/graphics/Rect;->left:I

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;->anchorRect:Landroid/graphics/Rect;

    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;->borderRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    if-le p2, v1, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;->anchorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    sub-int/2addr p2, v0

    iput p2, p1, Landroid/graphics/Rect;->top:I

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;->anchorRect:Landroid/graphics/Rect;

    iget p2, p1, Landroid/graphics/Rect;->left:I

    const/4 v0, 0x0

    if-gez p2, :cond_2

    iput v0, p1, Landroid/graphics/Rect;->left:I

    :cond_2
    iget p2, p1, Landroid/graphics/Rect;->top:I

    if-gez p2, :cond_3

    iput v0, p1, Landroid/graphics/Rect;->top:I

    :cond_3
    return-object p1
.end method

.method public abstract getAnchorCenterPosition()Landroid/graphics/Rect;
.end method

.method public abstract getAnchorPosition()Landroid/graphics/Rect;
.end method

.method public getHorizontalCenter()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;->borderRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;->anchorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    return v0
.end method

.method public abstract getPivot()Landroid/graphics/PointF;
.end method

.method public getVerticalCenter()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;->borderRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;->anchorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    return v0
.end method

.method public setEmptySpace(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;->emptySpace:I

    return-void
.end method

.method public setInside(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;->inside:I

    return-void
.end method

.method public setOutside(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;->outside:I

    return-void
.end method

.method public setRect(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;->childRect:Landroid/graphics/Rect;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;->parentRect:Landroid/graphics/Rect;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;->borderRect:Landroid/graphics/Rect;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;->anchorRect:Landroid/graphics/Rect;

    iput p5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;->anchorMargin:I

    return-void
.end method
