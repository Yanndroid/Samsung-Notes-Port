.class public final Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$SequenceBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SequenceBuilder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J$\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nJ&\u0010\u000c\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00082\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nH\u0002J.\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00082\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u0012\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u0015*\u00020\u0017H\u0002\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$SequenceBuilder;",
        "",
        "()V",
        "buildBlock",
        "",
        "blockInfo",
        "Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult$BlockInfo;",
        "isLastBlockInResult",
        "",
        "seq",
        "",
        "Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$Character;",
        "buildLine",
        "lineInfo",
        "Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult$LineInfo;",
        "isLastLineInBlock",
        "buildWord",
        "wordInfo",
        "Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult$WordInfo;",
        "isLastWordInLine",
        "polyToList",
        "",
        "Landroid/graphics/Point;",
        "Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult$CharInfo;",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final buildLine(Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult$LineInfo;ZLjava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult$LineInfo;",
            "Z",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$Character;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p3

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult$LineInfo;->getWordInfo()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult$LineInfo;->getWordInfo()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    if-gez v4, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    check-cast v5, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult$WordInfo;

    if-ne v4, v1, :cond_1

    const/4 v4, 0x1

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    goto :goto_1

    :cond_1
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move v4, v3

    :goto_1
    invoke-direct {v7, v5, v4, v0, v8}, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$SequenceBuilder;->buildWord(Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult$WordInfo;ZLjava/util/List;Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult$LineInfo;)V

    move v4, v6

    goto :goto_0

    :cond_2
    move-object/from16 v7, p0

    if-nez p2, :cond_3

    new-instance v1, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$Character;

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x30

    const/16 v16, 0x0

    const-string v9, "\n"

    const-string/jumbo v11, "whitespace line"

    move-object v8, v1

    invoke-direct/range {v8 .. v16}, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$Character;-><init>(Ljava/lang/String;Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult$WordInfo;Ljava/lang/String;Ljava/util/List;Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult$LineInfo;Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$WordMetaData;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method private final buildWord(Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult$WordInfo;ZLjava/util/List;Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult$LineInfo;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult$WordInfo;",
            "Z",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$Character;",
            ">;",
            "Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult$LineInfo;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p3

    new-instance v8, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$WordMetaData;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult$WordInfo;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$WordMetaData;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult$WordInfo;->getCharInfo()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult$CharInfo;

    invoke-virtual {v1}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult$CharInfo;->getString()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move-object/from16 v11, p0

    goto :goto_0

    :cond_0
    new-instance v10, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$Character;

    move-object/from16 v11, p0

    invoke-direct {v11, v1}, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$SequenceBuilder;->polyToList(Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult$CharInfo;)Ljava/util/List;

    move-result-object v5

    const-string v4, ""

    move-object v1, v10

    move-object/from16 v3, p1

    move-object/from16 v6, p4

    move-object v7, v8

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$Character;-><init>(Ljava/lang/String;Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult$WordInfo;Ljava/lang/String;Ljava/util/List;Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult$LineInfo;Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$WordMetaData;)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object/from16 v11, p0

    if-nez p2, :cond_2

    new-instance v1, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$Character;

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x30

    const/16 v20, 0x0

    const-string v13, " "

    const-string/jumbo v15, "whitespace word"

    move-object v12, v1

    invoke-direct/range {v12 .. v20}, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$Character;-><init>(Ljava/lang/String;Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult$WordInfo;Ljava/lang/String;Ljava/util/List;Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult$LineInfo;Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$WordMetaData;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method private final polyToList(Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult$CharInfo;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult$CharInfo;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult$CharInfo;->getPoly()[Landroid/graphics/Point;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Landroid/graphics/Point;

    :cond_0
    invoke-static {p1}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final buildBlock(Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult$BlockInfo;ZLjava/util/List;)V
    .locals 17
    .param p1    # Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult$BlockInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult$BlockInfo;",
            "Z",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$Character;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p3

    const-string v1, "blockInfo"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "seq"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult$BlockInfo;->getLineInfo()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult$BlockInfo;->getLineInfo()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    if-gez v4, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    check-cast v5, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult$LineInfo;

    if-ne v4, v1, :cond_1

    const/4 v4, 0x1

    move-object/from16 v7, p0

    goto :goto_1

    :cond_1
    move-object/from16 v7, p0

    move v4, v3

    :goto_1
    invoke-direct {v7, v5, v4, v0}, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$SequenceBuilder;->buildLine(Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult$LineInfo;ZLjava/util/List;)V

    move v4, v6

    goto :goto_0

    :cond_2
    move-object/from16 v7, p0

    if-nez p2, :cond_3

    new-instance v1, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$Character;

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x30

    const/16 v16, 0x0

    const-string v9, "\n"

    const-string/jumbo v11, "whitespace block"

    move-object v8, v1

    invoke-direct/range {v8 .. v16}, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$Character;-><init>(Ljava/lang/String;Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult$WordInfo;Ljava/lang/String;Ljava/util/List;Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult$LineInfo;Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$WordMetaData;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method
