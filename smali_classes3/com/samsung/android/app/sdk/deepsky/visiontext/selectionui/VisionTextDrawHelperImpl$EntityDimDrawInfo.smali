.class Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$EntityDimDrawInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EntityDimDrawInfo"
.end annotation


# instance fields
.field public final entityLabel:I

.field public final entityType:Ljava/lang/String;

.field public points:[Landroid/graphics/Point;


# direct methods
.method public constructor <init>(ILjava/lang/String;[Landroid/graphics/Point;)V
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$EntityDimDrawInfo;->entityLabel:I

    iput-object p2, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$EntityDimDrawInfo;->entityType:Ljava/lang/String;

    array-length p1, p3

    new-array p1, p1, [Landroid/graphics/Point;

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$EntityDimDrawInfo;->points:[Landroid/graphics/Point;

    const/4 p1, 0x0

    :goto_0
    array-length p2, p3

    if-ge p1, p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$EntityDimDrawInfo;->points:[Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    aget-object v1, p3, p1

    invoke-direct {v0, v1}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    aput-object v0, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
