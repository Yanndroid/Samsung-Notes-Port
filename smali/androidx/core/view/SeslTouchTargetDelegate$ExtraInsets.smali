.class public Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/SeslTouchTargetDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExtraInsets"
.end annotation


# static fields
.field public static final NONE:Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# instance fields
.field public bottom:I

.field public left:I

.field public right:I

.field public top:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;-><init>(IIII)V

    sput-object v0, Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;->NONE:Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;

    return-void
.end method

.method private constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;->left:I

    iput p2, p0, Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;->top:I

    iput p3, p0, Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;->right:I

    iput p4, p0, Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;->bottom:I

    return-void
.end method

.method public static of(II)Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    sget-object p0, Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;->NONE:Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;

    return-object p0

    :cond_0
    new-instance v0, Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;

    invoke-direct {v0, p0, p1, p0, p1}, Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;-><init>(IIII)V

    return-object v0
.end method

.method public static of(IIII)Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    sget-object p0, Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;->NONE:Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;

    return-object p0

    :cond_0
    new-instance v0, Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;

    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;-><init>(IIII)V

    return-object v0
.end method

.method public static of(Landroid/graphics/Rect;)Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;
    .locals 3
    .param p0    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-nez p0, :cond_0

    sget-object p0, Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;->NONE:Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/graphics/Rect;->right:I

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v1, v2, p0}, Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;->of(IIII)Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;

    iget v2, p0, Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;->bottom:I

    iget v3, p1, Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;->bottom:I

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget v2, p0, Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;->left:I

    iget v3, p1, Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;->left:I

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget v2, p0, Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;->right:I

    iget v3, p1, Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;->right:I

    if-eq v2, v3, :cond_4

    return v1

    :cond_4
    iget v2, p0, Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;->top:I

    iget p1, p1, Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;->top:I

    if-eq v2, p1, :cond_5

    return v1

    :cond_5
    return v0

    :cond_6
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;->left:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;->top:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;->right:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;->bottom:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toRect()Landroid/graphics/Rect;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;->left:I

    iget v2, p0, Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;->top:I

    iget v3, p0, Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;->right:I

    iget v4, p0, Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;->bottom:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ExtraInsets{left="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", top="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;->top:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", right="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;->right:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;->bottom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
