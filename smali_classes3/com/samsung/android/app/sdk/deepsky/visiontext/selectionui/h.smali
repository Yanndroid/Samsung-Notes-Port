.class public final synthetic Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:F

.field public final synthetic b:Landroid/graphics/Point;


# direct methods
.method public synthetic constructor <init>(FLandroid/graphics/Point;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/h;->a:F

    iput-object p2, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/h;->b:Landroid/graphics/Point;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/h;->a:F

    iget-object v1, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/h;->b:Landroid/graphics/Point;

    check-cast p1, Landroid/graphics/Point;

    invoke-static {v0, v1, p1}, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl;->j(FLandroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object p1

    return-object p1
.end method
