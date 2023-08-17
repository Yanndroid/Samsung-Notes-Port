.class public abstract enum Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "BorderRegion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;

.field public static final enum ALL:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;

.field public static final enum BOTTOM:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;

.field public static final enum LEFT:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;

.field public static final enum RIGHT:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;

.field public static final enum TOP:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;


# instance fields
.field private final bottom:F

.field private left:F

.field private right:F

.field private final top:F


# direct methods
.method public static constructor <clinit>()V
    .locals 25

    new-instance v8, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion$1;

    const-string v1, "LEFT"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x3e19999a    # 0.15f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion$1;-><init>(Ljava/lang/String;IFFFFLcom/samsung/android/support/senl/nt/base/winset/view/floater/b;)V

    sput-object v8, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;->LEFT:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion$2;

    const-string v10, "RIGHT"

    const/4 v11, 0x1

    const v12, 0x3f59999a    # 0.85f

    const/4 v13, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion$2;-><init>(Ljava/lang/String;IFFFFLcom/samsung/android/support/senl/nt/base/winset/view/floater/c;)V

    sput-object v0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;->RIGHT:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;

    new-instance v1, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion$3;

    const-string v18, "TOP"

    const/16 v19, 0x2

    const v20, 0x3e19999a    # 0.15f

    const/16 v21, 0x0

    const v22, 0x3f59999a    # 0.85f

    const/high16 v23, 0x3f000000    # 0.5f

    const/16 v24, 0x0

    move-object/from16 v17, v1

    invoke-direct/range {v17 .. v24}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion$3;-><init>(Ljava/lang/String;IFFFFLcom/samsung/android/support/senl/nt/base/winset/view/floater/d;)V

    sput-object v1, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;->TOP:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;

    new-instance v2, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion$4;

    const-string v10, "BOTTOM"

    const/4 v11, 0x3

    const v12, 0x3e19999a    # 0.15f

    const/high16 v13, 0x3f000000    # 0.5f

    const v14, 0x3f59999a    # 0.85f

    move-object v9, v2

    invoke-direct/range {v9 .. v16}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion$4;-><init>(Ljava/lang/String;IFFFFLcom/samsung/android/support/senl/nt/base/winset/view/floater/e;)V

    sput-object v2, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;->BOTTOM:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;

    new-instance v3, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion$5;

    const-string v18, "ALL"

    const/16 v19, 0x4

    const/16 v20, 0x0

    const/high16 v22, 0x3f800000    # 1.0f

    const/high16 v23, 0x3f800000    # 1.0f

    move-object/from16 v17, v3

    invoke-direct/range {v17 .. v24}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion$5;-><init>(Ljava/lang/String;IFFFFLcom/samsung/android/support/senl/nt/base/winset/view/floater/f;)V

    sput-object v3, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;->ALL:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;

    const/4 v4, 0x5

    new-array v4, v4, [Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;

    const/4 v5, 0x0

    aput-object v8, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const/4 v0, 0x2

    aput-object v1, v4, v0

    const/4 v0, 0x3

    aput-object v2, v4, v0

    const/4 v0, 0x4

    aput-object v3, v4, v0

    sput-object v4, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;->$VALUES:[Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IFFFF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFF)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;->left:F

    iput p4, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;->top:F

    iput p5, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;->right:F

    iput p6, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;->bottom:F

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IFFFFLcom/samsung/android/support/senl/nt/base/winset/view/floater/g;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;-><init>(Ljava/lang/String;IFFFF)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;
    .locals 1

    const-class v0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;->$VALUES:[Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;

    invoke-virtual {v0}, [Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;

    return-object v0
.end method


# virtual methods
.method public abstract getDifference(Landroid/graphics/Rect;Landroid/graphics/Rect;)I
.end method

.method public getIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4

    invoke-virtual {p0, p2}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;->getRegion(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p2

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2, v0, v2, v1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p2
.end method

.method public getIntersectRatio(Landroid/graphics/Rect;Landroid/graphics/Rect;)F
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;->getIntersectSize(Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    mul-int/2addr v0, p1

    int-to-float p1, v0

    div-float/2addr p2, p1

    return p2
.end method

.method public getIntersectSize(Landroid/graphics/Rect;Landroid/graphics/Rect;)F
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;->getIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    mul-int/2addr p2, p1

    int-to-float p1, p2

    return p1
.end method

.method public getRegion(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 6

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;->left:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;->top:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;->right:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    iget v4, p1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    iget v5, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;->bottom:F

    mul-float/2addr p1, v5

    add-float/2addr v4, p1

    float-to-int p1, v4

    invoke-direct {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public getScaledRegion(Landroid/graphics/Rect;F)Landroid/graphics/Rect;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;->getRegion(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    float-to-int p2, v1

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->right:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p2

    iput v0, p1, Landroid/graphics/Rect;->top:I

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p2

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    return-object p1
.end method

.method public isIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;->getRegion(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public setMaxRight(F)V
    .locals 1

    const v0, 0x3f59999a    # 0.85f

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;->right:F

    return-void
.end method

.method public setMinLeft(F)V
    .locals 1

    const v0, 0x3e19999a    # 0.15f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;->left:F

    return-void
.end method
