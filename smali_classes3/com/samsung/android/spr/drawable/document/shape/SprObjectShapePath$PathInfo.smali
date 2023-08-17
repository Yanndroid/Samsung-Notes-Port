.class public Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PathInfo"
.end annotation


# instance fields
.field public type:B

.field public x:F

.field public x1:F

.field public x2:F

.field public y:F

.field public y1:F

.field public y2:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;->type:B

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;->x:F

    iput v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;->x1:F

    iput v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;->x2:F

    iput v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;->y:F

    iput v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;->y1:F

    iput v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;->y2:F

    return-void
.end method


# virtual methods
.method public clone()Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;->clone()Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;

    move-result-object v0

    return-object v0
.end method
