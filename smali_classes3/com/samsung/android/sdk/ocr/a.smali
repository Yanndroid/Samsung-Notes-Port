.class public final synthetic Lcom/samsung/android/sdk/ocr/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/ToDoubleFunction;


# static fields
.field public static final synthetic a:Lcom/samsung/android/sdk/ocr/a;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/ocr/a;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ocr/a;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/ocr/a;->a:Lcom/samsung/android/sdk/ocr/a;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsDouble(Ljava/lang/Object;)D
    .locals 2

    check-cast p1, Landroid/graphics/Point;

    invoke-static {p1}, Lcom/samsung/android/sdk/ocr/OCRResultUtils;->a(Landroid/graphics/Point;)D

    move-result-wide v0

    return-wide v0
.end method
