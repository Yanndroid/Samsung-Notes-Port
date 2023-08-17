.class public final Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$CharacterSequence;,
        Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$WordMetaData;,
        Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$Character;,
        Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$SequenceBuilder;,
        Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0008\u0000\u0018\u0000 -2\u00020\u0001:\u0005+,-./B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J(\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\nH\u0002J&\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00122\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015J(\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u00122\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0002J\"\u0010\u0018\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0018\u0010\u0019\u001a\u00020\u00152\u0006\u0010\u001a\u001a\u00020\u00152\u0006\u0010\u001b\u001a\u00020\u0015H\u0002J*\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u00122\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u00122\u000c\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u0012H\u0002J\u0015\u0010\u001e\u001a\u00020\u00082\u0006\u0010\u000f\u001a\u00020\u0010H\u0001\u00a2\u0006\u0002\u0008\u001fJ(\u0010 \u001a\n\u0012\u0004\u0012\u00020!\u0018\u00010\u00122\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u001a\u0010\"\u001a\u00020#*\u00020$2\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0012H\u0002J\"\u0010%\u001a\u00020#*\u00020$2\u000c\u0010&\u001a\u0008\u0012\u0004\u0012\u00020$0\u00122\u0006\u0010\'\u001a\u00020(H\u0002J\u000c\u0010)\u001a\u00020#*\u00020\u0015H\u0002J\u000c\u0010*\u001a\u00020\u0006*\u00020\u0010H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00060"
    }
    d2 = {
        "Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "assignLabelToWordInfo",
        "",
        "seq",
        "Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$CharacterSequence;",
        "start",
        "",
        "end",
        "label",
        "extractEntity",
        "Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/EntityExtractionResult;",
        "ocrResult",
        "Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult;",
        "entityTypes",
        "",
        "Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/EntityType;",
        "validRect",
        "Landroid/graphics/Rect;",
        "findPolyOrNull",
        "Landroid/graphics/Point;",
        "findRectOrNull",
        "sum",
        "r1",
        "r2",
        "p1",
        "p2",
        "toCharacterSequence",
        "toCharacterSequence$deepsky_sdk_2_2_9_release",
        "toUnderLineOrNull",
        "Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/Underline;",
        "containsEntityType",
        "",
        "Landroid/view/textclassifier/TextLinks$TextLink;",
        "containsInEntity",
        "urlTypeLinks",
        "type",
        "",
        "isValidRect",
        "resetWordLabel",
        "Character",
        "CharacterSequence",
        "Companion",
        "SequenceBuilder",
        "WordMetaData",
        "deepsky-sdk-2.2.9_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final EXTRA_KEY_LANGUAGE_TAG:Ljava/lang/String; = "languageTags"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final EXTRA_KEY_TEXT_SOURCE_TYPE_ID:Ljava/lang/String; = "text_source_type_id"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final EXTRA_VALUE_TEXT_SOURCE_TYPE_ID_IMAGE:Ljava/lang/String; = "image"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "OcrEntityExtractor"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor;->Companion:Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor;->context:Landroid/content/Context;

    return-void
.end method

.method public static final synthetic access$assignLabelToWordInfo(Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor;Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$CharacterSequence;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor;->assignLabelToWordInfo(Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$CharacterSequence;III)V

    return-void
.end method

.method public static final synthetic access$containsEntityType(Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor;Landroid/view/textclassifier/TextLinks$TextLink;Ljava/util/List;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor;->containsEntityType(Landroid/view/textclassifier/TextLinks$TextLink;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$containsInEntity(Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor;Landroid/view/textclassifier/TextLinks$TextLink;Ljava/util/List;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor;->containsInEntity(Landroid/view/textclassifier/TextLinks$TextLink;Ljava/util/List;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$findPolyOrNull(Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor;Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$CharacterSequence;II)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor;->findPolyOrNull(Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$CharacterSequence;II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$findRectOrNull(Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor;Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$CharacterSequence;II)Landroid/graphics/Rect;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor;->findRectOrNull(Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$CharacterSequence;II)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$toUnderLineOrNull(Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor;Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$CharacterSequence;II)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor;->toUnderLineOrNull(Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$CharacterSequence;II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final assignLabelToWordInfo(Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$CharacterSequence;III)V
    .locals 1

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$CharacterSequence;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$Character;

    invoke-virtual {p2}, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$Character;->getWord()Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult$WordInfo;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult$WordInfo;->setLabel(Ljava/lang/Integer;)V

    goto :goto_0

    :cond_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_1
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string p2, "OcrEntityExtractor"

    const-string p3, "assignLabelToWordInfo"

    invoke-static {p2, p3, p1}, Lcom/samsung/android/app/sdk/deepsky/logger/LibLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-void
.end method

.method private final containsEntityType(Landroid/view/textclassifier/TextLinks$TextLink;Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/textclassifier/TextLinks$TextLink;",
            "Ljava/util/List<",
            "+",
            "Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/EntityType;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/textclassifier/TextLinks$TextLink;->getEntityCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {p2, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/EntityType;

    invoke-virtual {v4}, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/EntityType;->getTypeId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p2

    invoke-virtual {p1}, Landroid/view/textclassifier/TextLinks$TextLink;->getEntityCount()I

    move-result v0

    invoke-static {v1, v0}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v0

    check-cast v3, Lkotlin/collections/IntIterator;

    invoke-virtual {v3}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/textclassifier/TextLinks$TextLink;->getEntity(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/collections/CollectionsKt;->intersect(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    return p1
.end method

.method private final containsInEntity(Landroid/view/textclassifier/TextLinks$TextLink;Ljava/util/List;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/textclassifier/TextLinks$TextLink;",
            "Ljava/util/List<",
            "Landroid/view/textclassifier/TextLinks$TextLink;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object p2

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$containsInEntity$1;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$containsInEntity$1;-><init>(Landroid/view/textclassifier/TextLinks$TextLink;)V

    invoke-static {p2, v0}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p2

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$containsInEntity$2;

    invoke-direct {v0, p3}, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$containsInEntity$2;-><init>(Ljava/lang/String;)V

    invoke-static {p2, v0}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p2

    new-instance p3, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$containsInEntity$3;

    invoke-direct {p3, p1}, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$containsInEntity$3;-><init>(Landroid/view/textclassifier/TextLinks$TextLink;)V

    invoke-static {p2, p3}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p1

    invoke-static {p1}, Lkotlin/sequences/SequencesKt;->count(Lkotlin/sequences/Sequence;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final findPolyOrNull(Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$CharacterSequence;II)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$CharacterSequence;",
            "II)",
            "Ljava/util/List<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$CharacterSequence;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$Character;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$Character;

    invoke-virtual {p2}, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$Character;->getPoly()Ljava/util/List;

    move-result-object p2

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$Character;->getPoly()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    invoke-direct {p0, p2, p1}, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor;->sum(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_2

    const-string p3, "OcrEntityExtractor"

    const-string v1, "findPolyOrNull"

    invoke-static {p3, v1, p2}, Lcom/samsung/android/app/sdk/deepsky/logger/LibLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    move-object v0, p1

    :goto_0
    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private final findRectOrNull(Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$CharacterSequence;II)Landroid/graphics/Rect;
    .locals 3

    const-string v0, "OcrEntityExtractor"

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$CharacterSequence;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$Character;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$Character;

    invoke-virtual {p2}, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$Character;->getRect()Landroid/graphics/Rect;

    move-result-object p2

    if-nez p2, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$Character;->getRect()Landroid/graphics/Rect;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    :cond_1
    invoke-direct {p0, p2, p1}, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor;->sum(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor;->isValidRect(Landroid/graphics/Rect;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "findRectOrNull, invalid rect: "

    invoke-virtual {p1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/sdk/deepsky/logger/LibLogger;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :cond_2
    return-object p1

    :catchall_0
    move-exception p1

    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_3

    const-string p3, "findRectOrNull"

    invoke-static {v0, p3, p2}, Lcom/samsung/android/app/sdk/deepsky/logger/LibLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_0

    :cond_4
    move-object v1, p1

    :goto_0
    check-cast v1, Landroid/graphics/Rect;

    return-object v1
.end method

.method private final isValidRect(Landroid/graphics/Rect;)Z
    .locals 4

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gt v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    if-gt v1, p1, :cond_1

    move p1, v2

    goto :goto_1

    :cond_1
    move p1, v3

    :goto_1
    and-int/2addr p1, v0

    if-eqz p1, :cond_2

    return v2

    :cond_2
    return v3
.end method

.method private final resetWordLabel(Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult;)V
    .locals 2

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult;->getWordInfoList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult$WordInfo;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult$WordInfo;->setLabel(Ljava/lang/Integer;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final sum(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 5

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->left:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p2, Landroid/graphics/Rect;->right:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-direct {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method private final sum(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/graphics/Point;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Landroid/graphics/Point;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/Point;

    new-instance v1, Landroid/graphics/Point;

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-direct {v1, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/Point;

    const/4 v2, 0x1

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-direct {v1, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/Point;

    const/4 v2, 0x2

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-direct {v1, v3, p2}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v2

    new-instance p2, Landroid/graphics/Point;

    const/4 v1, 0x3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-direct {p2, v2, p1}, Landroid/graphics/Point;-><init>(II)V

    aput-object p2, v0, v1

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private final toUnderLineOrNull(Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$CharacterSequence;II)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$CharacterSequence;",
            "II)",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/Underline;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$CharacterSequence;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$Character;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$Character;

    invoke-virtual {p2}, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$Character;->getLeftBottomPointOrNull()Landroid/graphics/Point;

    move-result-object p2

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$Character;->getRightBottomPointOrNull()Landroid/graphics/Point;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    new-instance p3, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/Underline;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, p2}, Landroid/graphics/PointF;-><init>(Landroid/graphics/Point;)V

    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2, p1}, Landroid/graphics/PointF;-><init>(Landroid/graphics/Point;)V

    invoke-direct {p3, v1, p2}, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/Underline;-><init>(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_2

    const-string p3, "OcrEntityExtractor"

    const-string/jumbo v1, "toUnderLineOrNull"

    invoke-static {p3, v1, p2}, Lcom/samsung/android/app/sdk/deepsky/logger/LibLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    move-object v0, p1

    :goto_0
    check-cast v0, Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final extractEntity(Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult;Ljava/util/List;Landroid/graphics/Rect;)Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/EntityExtractionResult;
    .locals 19
    .param p1    # Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult;",
            "Ljava/util/List<",
            "+",
            "Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/EntityType;",
            ">;",
            "Landroid/graphics/Rect;",
            ")",
            "Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/EntityExtractionResult;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v0, p2

    const-string v1, "ocrResult"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "entityTypes"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SSS|"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x7c

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v8, ","

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x3e

    const/4 v15, 0x0

    move-object/from16 v7, p2

    invoke-static/range {v7 .. v15}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v1, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/EntityExtractionResult;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    const-string v8, ""

    invoke-direct {v1, v7, v3, v8}, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/EntityExtractionResult;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-ge v3, v4, :cond_0

    return-object v1

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult;->getBlockInfoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v1

    :cond_1
    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor;->toCharacterSequence$deepsky_sdk_2_2_9_release(Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult;)Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$CharacterSequence;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$CharacterSequence;->getText()Ljava/lang/String;

    move-result-object v4

    const-string v5, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-static {v4, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/4 v9, 0x0

    if-nez v4, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    move v4, v9

    :goto_0
    if-eqz v4, :cond_3

    return-object v1

    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    const/16 v10, 0xa

    invoke-static {v0, v10}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v4, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/EntityType;

    invoke-virtual {v11}, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/EntityType;->getTypeId()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v4

    const-string/jumbo v10, "url"

    invoke-interface {v4, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v11, "address"

    invoke-interface {v4, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v12, Landroid/view/textclassifier/TextLinks$Request$Builder;

    invoke-virtual {v3}, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$CharacterSequence;->getText()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Landroid/view/textclassifier/TextLinks$Request$Builder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v13, Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;

    invoke-direct {v13}, Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;-><init>()V

    invoke-virtual {v13, v9}, Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;->includeTypesFromTextClassifier(Z)Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;

    move-result-object v13

    invoke-virtual {v13, v4}, Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;->setIncludedTypes(Ljava/util/Collection;)Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;->build()Landroid/view/textclassifier/TextClassifier$EntityConfig;

    move-result-object v4

    invoke-virtual {v12, v4}, Landroid/view/textclassifier/TextLinks$Request$Builder;->setEntityConfig(Landroid/view/textclassifier/TextClassifier$EntityConfig;)Landroid/view/textclassifier/TextLinks$Request$Builder;

    move-result-object v4

    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v13, "text_source_type_id"

    const-string v14, "image"

    invoke-virtual {v12, v13, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v13, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v4, v12}, Landroid/view/textclassifier/TextLinks$Request$Builder;->setExtras(Landroid/os/Bundle;)Landroid/view/textclassifier/TextLinks$Request$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/textclassifier/TextLinks$Request$Builder;->build()Landroid/view/textclassifier/TextLinks$Request;

    move-result-object v4

    const-string v12, "Builder(sequence.text)\n \u2026  })\n            .build()"

    invoke-static {v4, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v12, v6, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor;->context:Landroid/content/Context;

    const-class v13, Landroid/view/textclassifier/TextClassificationManager;

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/textclassifier/TextClassificationManager;

    invoke-virtual {v12}, Landroid/view/textclassifier/TextClassificationManager;->getTextClassifier()Landroid/view/textclassifier/TextClassifier;

    move-result-object v12

    invoke-interface {v12, v4}, Landroid/view/textclassifier/TextClassifier;->generateLinks(Landroid/view/textclassifier/TextLinks$Request;)Landroid/view/textclassifier/TextLinks;

    move-result-object v12

    const-string v4, "context.getSystemService\u2026er.generateLinks(request)"

    invoke-static {v12, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v12}, Landroid/view/textclassifier/TextLinks;->getLinks()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    const-string v13, "languageTag"

    const-string v14, "OcrEntityExtractor"

    const-string v15, "languageTags"

    if-eqz v4, :cond_5

    invoke-virtual {v12}, Landroid/view/textclassifier/TextLinks;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v15, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "extractEntity, links empty case. languageTag: "

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/samsung/android/app/sdk/deepsky/logger/LibLogger;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static {v3, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x3

    const/4 v7, 0x0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v4

    move v4, v5

    move-object v5, v7

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/EntityExtractionResult;->copy$default(Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/EntityExtractionResult;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/EntityExtractionResult;

    move-result-object v0

    return-object v0

    :cond_5
    invoke-virtual {v3, v12}, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$CharacterSequence;->addEntityTypeIdToMetaData(Landroid/view/textclassifier/TextLinks;)V

    invoke-virtual {v12}, Landroid/view/textclassifier/TextLinks;->getLinks()Ljava/util/Collection;

    move-result-object v1

    const-string/jumbo v4, "textLinks.links"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v17, v1

    move-object v1, v9

    check-cast v1, Landroid/view/textclassifier/TextLinks$TextLink;

    invoke-virtual {v1}, Landroid/view/textclassifier/TextLinks$TextLink;->getEntityCount()I

    move-result v18

    const/4 v2, 0x0

    if-lez v18, :cond_6

    const/16 v18, 0x1

    goto :goto_3

    :cond_6
    const/16 v18, 0x0

    :goto_3
    invoke-virtual {v1, v2}, Landroid/view/textclassifier/TextLinks$TextLink;->getEntity(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    and-int v1, v18, v1

    if-eqz v1, :cond_7

    invoke-interface {v5, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_7
    move-object/from16 v2, p1

    move-object/from16 v1, v17

    const/4 v9, 0x0

    goto :goto_2

    :cond_8
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v12}, Landroid/view/textclassifier/TextLinks;->getLinks()Ljava/util/Collection;

    move-result-object v2

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Landroid/view/textclassifier/TextLinks$TextLink;

    invoke-virtual {v10}, Landroid/view/textclassifier/TextLinks$TextLink;->getEntityCount()I

    move-result v17

    if-lez v17, :cond_9

    move-object/from16 v17, v2

    const/4 v2, 0x0

    const/16 v16, 0x1

    goto :goto_5

    :cond_9
    move-object/from16 v17, v2

    const/4 v2, 0x0

    const/16 v16, 0x0

    :goto_5
    invoke-virtual {v10, v2}, Landroid/view/textclassifier/TextLinks$TextLink;->getEntity(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    and-int v10, v16, v10

    if-eqz v10, :cond_a

    invoke-interface {v5, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_a
    move-object/from16 v2, v17

    goto :goto_4

    :cond_b
    const/4 v2, 0x0

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v5

    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor;->resetWordLabel(Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult;)V

    new-instance v9, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v9, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    new-instance v10, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/EntityScoreGenerator;

    invoke-direct {v10}, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/EntityScoreGenerator;-><init>()V

    invoke-virtual {v12}, Landroid/view/textclassifier/TextLinks;->getLinks()Ljava/util/Collection;

    move-result-object v2

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$extractEntity$items$1;->INSTANCE:Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$extractEntity$items$1;

    invoke-static {v2, v4}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v2

    new-instance v4, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$extractEntity$items$2;

    invoke-direct {v4, v6, v0}, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$extractEntity$items$2;-><init>(Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor;Ljava/util/List;)V

    invoke-static {v2, v4}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$extractEntity$items$3;

    invoke-direct {v2, v6, v1}, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$extractEntity$items$3;-><init>(Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor;Ljava/util/List;)V

    invoke-static {v0, v2}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$extractEntity$items$4;

    invoke-direct {v1, v6, v5}, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$extractEntity$items$4;-><init>(Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor;Ljava/util/List;)V

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$extractEntity$items$5;

    invoke-direct {v1, v3}, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$extractEntity$items$5;-><init>(Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$CharacterSequence;)V

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$extractEntity$items$6;

    invoke-direct {v1, v3}, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$extractEntity$items$6;-><init>(Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$CharacterSequence;)V

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v11

    new-instance v5, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$extractEntity$items$7;

    move-object v0, v5

    move-object v1, v3

    move-object/from16 v2, p0

    move-object v3, v9

    move-object v4, v10

    move-object v9, v5

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$extractEntity$items$7;-><init>(Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$CharacterSequence;Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/EntityScoreGenerator;Landroid/graphics/Rect;)V

    invoke-static {v11, v9}, Lkotlin/sequences/SequencesKt;->mapNotNull(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v12}, Landroid/view/textclassifier/TextLinks;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v15, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "extractEntity, links.size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Landroid/view/textclassifier/TextLinks;->getLinks()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " items.size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", languageTag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Lcom/samsung/android/app/sdk/deepsky/logger/LibLogger;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/EntityExtractionResult;

    invoke-static {v1, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v7, v0, v1}, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/EntityExtractionResult;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-object v2
.end method

.method public final toCharacterSequence$deepsky_sdk_2_2_9_release(Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult;)Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$CharacterSequence;
    .locals 10
    .param p1    # Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "ocrResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult;->getBlockInfoList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    if-gez v3, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    check-cast v4, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult$BlockInfo;

    new-instance v6, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$SequenceBuilder;

    invoke-direct {v6}, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$SequenceBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult;->getBlockInfoList()Ljava/util/List;

    move-result-object v7

    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v7

    if-ne v3, v7, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    invoke-virtual {v6, v4, v3, v0}, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$SequenceBuilder;->buildBlock(Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult$BlockInfo;ZLjava/util/List;)V

    move v3, v5

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v7, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$toCharacterSequence$text$1;->INSTANCE:Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$toCharacterSequence$text$1;

    const/16 v8, 0x1e

    const/4 v9, 0x0

    const-string v2, ""

    move-object v1, v0

    invoke-static/range {v1 .. v9}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$CharacterSequence;

    invoke-direct {v1, p1, v0}, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$CharacterSequence;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v1
.end method
