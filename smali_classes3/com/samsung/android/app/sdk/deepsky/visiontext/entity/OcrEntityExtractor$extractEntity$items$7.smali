.class final Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$extractEntity$items$7;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor;->extractEntity(Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult;Ljava/util/List;Landroid/graphics/Rect;)Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/EntityExtractionResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/view/textclassifier/TextLinks$TextLink;",
        "Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/EntityItem;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u000e\u0010\u0002\u001a\n \u0001*\u0004\u0018\u00010\u00000\u0000H\n"
    }
    d2 = {
        "Landroid/view/textclassifier/TextLinks$TextLink;",
        "kotlin.jvm.PlatformType",
        "link",
        "Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/EntityItem;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field public final synthetic $labelGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic $scoreGenerator:Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/EntityScoreGenerator;

.field public final synthetic $sequence:Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$CharacterSequence;

.field public final synthetic $validRect:Landroid/graphics/Rect;

.field public final synthetic this$0:Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$CharacterSequence;Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/EntityScoreGenerator;Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$extractEntity$items$7;->$sequence:Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$CharacterSequence;

    iput-object p2, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$extractEntity$items$7;->this$0:Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor;

    iput-object p3, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$extractEntity$items$7;->$labelGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p4, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$extractEntity$items$7;->$scoreGenerator:Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/EntityScoreGenerator;

    iput-object p5, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$extractEntity$items$7;->$validRect:Landroid/graphics/Rect;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroid/view/textclassifier/TextLinks$TextLink;)Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/EntityItem;
    .locals 11
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object v0, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/EntityType;->Companion:Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/EntityType$Companion;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/textclassifier/TextLinks$TextLink;->getEntity(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "link.getEntity(0)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/EntityType$Companion;->toEntityType(Ljava/lang/String;)Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/EntityType;

    move-result-object v4

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$extractEntity$items$7;->$sequence:Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$CharacterSequence;

    invoke-virtual {v0}, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$CharacterSequence;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/textclassifier/TextLinks$TextLink;->getStart()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/textclassifier/TextLinks$TextLink;->getEnd()I

    move-result v2

    const-string v3, "null cannot be cast to non-null type java.lang.String"

    invoke-static {v0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v0, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$extractEntity$items$7;->this$0:Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor;

    iget-object v1, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$extractEntity$items$7;->$sequence:Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$CharacterSequence;

    invoke-virtual {p1}, Landroid/view/textclassifier/TextLinks$TextLink;->getStart()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/textclassifier/TextLinks$TextLink;->getEnd()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor;->access$findRectOrNull(Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor;Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$CharacterSequence;II)Landroid/graphics/Rect;

    move-result-object v6

    const/4 v0, 0x0

    if-nez v6, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$extractEntity$items$7;->this$0:Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor;

    iget-object v2, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$extractEntity$items$7;->$sequence:Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$CharacterSequence;

    invoke-virtual {p1}, Landroid/view/textclassifier/TextLinks$TextLink;->getStart()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/textclassifier/TextLinks$TextLink;->getEnd()I

    move-result v7

    invoke-static {v1, v2, v3, v7}, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor;->access$findPolyOrNull(Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor;Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$CharacterSequence;II)Ljava/util/List;

    move-result-object v7

    if-nez v7, :cond_1

    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$extractEntity$items$7;->this$0:Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor;

    iget-object v2, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$extractEntity$items$7;->$sequence:Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$CharacterSequence;

    invoke-virtual {p1}, Landroid/view/textclassifier/TextLinks$TextLink;->getStart()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/textclassifier/TextLinks$TextLink;->getEnd()I

    move-result v8

    invoke-static {v1, v2, v3, v8}, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor;->access$toUnderLineOrNull(Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor;Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$CharacterSequence;II)Ljava/util/List;

    move-result-object v8

    if-nez v8, :cond_2

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$extractEntity$items$7;->$labelGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v9

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$extractEntity$items$7;->this$0:Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor;

    iget-object v1, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$extractEntity$items$7;->$sequence:Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$CharacterSequence;

    invoke-virtual {p1}, Landroid/view/textclassifier/TextLinks$TextLink;->getStart()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/textclassifier/TextLinks$TextLink;->getEnd()I

    move-result p1

    invoke-static {v0, v1, v2, p1, v9}, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor;->access$assignLabelToWordInfo(Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor;Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$CharacterSequence;III)V

    iget-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$extractEntity$items$7;->$scoreGenerator:Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/EntityScoreGenerator;

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$extractEntity$items$7;->$validRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v5, v4, v6, v0}, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/EntityScoreGenerator;->measureEntityScore(Ljava/lang/String;Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/EntityType;Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result v10

    new-instance p1, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/EntityItem;

    move-object v3, p1

    invoke-direct/range {v3 .. v10}, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/EntityItem;-><init>(Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/EntityType;Ljava/lang/String;Landroid/graphics/Rect;Ljava/util/List;Ljava/util/List;IF)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/view/textclassifier/TextLinks$TextLink;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$extractEntity$items$7;->invoke(Landroid/view/textclassifier/TextLinks$TextLink;)Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/EntityItem;

    move-result-object p1

    return-object p1
.end method
