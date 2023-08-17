.class public Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/document/SpenPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Segment"
.end annotation


# static fields
.field public static final TYPE_ADDOVAL:I = 0x7

.field public static final TYPE_ARCTO:I = 0x5

.field public static final TYPE_CLOSE:I = 0x6

.field public static final TYPE_CUBICTO:I = 0x4

.field public static final TYPE_LINETO:I = 0x2

.field public static final TYPE_MOVETO:I = 0x1

.field public static final TYPE_QUADTO:I = 0x3


# instance fields
.field public type:I

.field public x:F

.field public x1:F

.field public x2:F

.field public y:F

.field public y1:F

.field public y2:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
