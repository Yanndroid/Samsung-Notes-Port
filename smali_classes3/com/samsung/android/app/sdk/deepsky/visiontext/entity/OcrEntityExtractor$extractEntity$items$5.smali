.class final Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$extractEntity$items$5;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\u0010\u0004\u001a\u00020\u00032\u000e\u0010\u0002\u001a\n \u0001*\u0004\u0018\u00010\u00000\u0000H\n"
    }
    d2 = {
        "Landroid/view/textclassifier/TextLinks$TextLink;",
        "kotlin.jvm.PlatformType",
        "it",
        "",
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
.field public final synthetic $sequence:Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$CharacterSequence;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$CharacterSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$extractEntity$items$5;->$sequence:Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$CharacterSequence;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroid/view/textclassifier/TextLinks$TextLink;)Ljava/lang/Boolean;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$extractEntity$items$5;->$sequence:Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$CharacterSequence;

    invoke-virtual {p1}, Landroid/view/textclassifier/TextLinks$TextLink;->getStart()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/textclassifier/TextLinks$TextLink;->getEnd()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$CharacterSequence;->isStartEndInSameLine(II)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/view/textclassifier/TextLinks$TextLink;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$extractEntity$items$5;->invoke(Landroid/view/textclassifier/TextLinks$TextLink;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
