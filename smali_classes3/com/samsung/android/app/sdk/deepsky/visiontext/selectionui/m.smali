.class public final synthetic Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Landroid/graphics/Canvas;

.field public final synthetic b:Landroid/graphics/Paint;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/m;->a:Landroid/graphics/Canvas;

    iput-object p2, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/m;->b:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/m;->a:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/m;->b:Landroid/graphics/Paint;

    check-cast p1, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$UnderLineDrawInfo;

    invoke-static {v0, v1, p1}, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl;->e(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$UnderLineDrawInfo;)V

    return-void
.end method
