.class public final synthetic Lcom/samsung/android/sdk/pen/ocr/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Landroid/graphics/Point;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/Point;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/ocr/a;->a:Landroid/graphics/Point;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/ocr/a;->a:Landroid/graphics/Point;

    check-cast p1, Landroid/graphics/Point;

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrPageData;->b(Landroid/graphics/Point;Landroid/graphics/Point;)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method
