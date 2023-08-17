.class public Lcom/samsung/android/support/senl/docscan/model/DocScanData$Vertex;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/docscan/model/DocScanData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Vertex"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/support/senl/docscan/model/DocScanData$Vertex;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public x:F

.field public y:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/docscan/model/DocScanData$Vertex$1;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/docscan/model/DocScanData$Vertex$1;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/docscan/model/DocScanData$Vertex;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/PointF;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Landroid/graphics/PointF;->x:F

    iput v0, p0, Lcom/samsung/android/support/senl/docscan/model/DocScanData$Vertex;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iput p1, p0, Lcom/samsung/android/support/senl/docscan/model/DocScanData$Vertex;->y:F

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/docscan/model/DocScanData$Vertex;->x:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/samsung/android/support/senl/docscan/model/DocScanData$Vertex;->y:F

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public set(Landroid/graphics/PointF;)V
    .locals 1

    iget v0, p1, Landroid/graphics/PointF;->x:F

    iput v0, p0, Lcom/samsung/android/support/senl/docscan/model/DocScanData$Vertex;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iput p1, p0, Lcom/samsung/android/support/senl/docscan/model/DocScanData$Vertex;->y:F

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/samsung/android/support/senl/docscan/model/DocScanData$Vertex;->x:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lcom/samsung/android/support/senl/docscan/model/DocScanData$Vertex;->y:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
