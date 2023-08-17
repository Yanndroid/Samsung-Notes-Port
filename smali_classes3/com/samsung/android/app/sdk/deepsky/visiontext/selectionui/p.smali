.class public final synthetic Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/p;->a:Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/p;->a:Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl;

    check-cast p1, [Landroid/graphics/Point;

    invoke-static {v0, p1}, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl;->g(Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl;[Landroid/graphics/Point;)V

    return-void
.end method
