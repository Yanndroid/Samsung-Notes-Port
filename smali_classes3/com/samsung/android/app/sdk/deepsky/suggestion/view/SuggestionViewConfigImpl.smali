.class public final Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfigImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u000e\n\u0002\u0010\u0000\n\u0002\u0008\n\n\u0002\u0010\u000e\n\u0000\u0008\u0080\u0008\u0018\u00002\u00020\u0001B]\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\u0010\u0008\u0002\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\r\u0012\u0010\u0008\u0002\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\r\u0012\u0006\u0010\u000f\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0010J\t\u0010\u0011\u001a\u00020\u0003H\u00c2\u0003J\t\u0010\u0012\u001a\u00020\u0005H\u00c2\u0003J\t\u0010\u0013\u001a\u00020\u0007H\u00c2\u0003J\t\u0010\u0014\u001a\u00020\tH\u00c2\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u000bH\u00c2\u0003J\u0011\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\rH\u00c2\u0003J\u0011\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\rH\u00c2\u0003J\t\u0010\u0018\u001a\u00020\u0007H\u00c2\u0003Jk\u0010\u0019\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0010\u0008\u0002\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\r2\u0010\u0008\u0002\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\r2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010\u001a\u001a\u00020\t2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u00d6\u0003J\u0008\u0010\u001d\u001a\u00020\tH\u0016J\u000e\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u00070\rH\u0016J\n\u0010\u001f\u001a\u0004\u0018\u00010\u000bH\u0016J\u000e\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u00070\rH\u0016J\u0008\u0010!\u001a\u00020\u0003H\u0016J\u0008\u0010\"\u001a\u00020\u0007H\u0016J\u0008\u0010#\u001a\u00020\u0007H\u0016J\u0008\u0010$\u001a\u00020\u0005H\u0016J\t\u0010%\u001a\u00020\u0007H\u00d6\u0001J\t\u0010&\u001a\u00020\'H\u00d6\u0001R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006("
    }
    d2 = {
        "Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfigImpl;",
        "Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig;",
        "itemParam",
        "Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionItem;",
        "viewSpecParam",
        "Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SuggestionViewSpec;",
        "maxSuggestionCountParam",
        "",
        "enableLocalOnlyParam",
        "",
        "extrasParam",
        "Landroid/os/Bundle;",
        "includedIdParam",
        "",
        "excludedIdParam",
        "listMinHeightParam",
        "(Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionItem;Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SuggestionViewSpec;IZLandroid/os/Bundle;Ljava/util/List;Ljava/util/List;I)V",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "copy",
        "equals",
        "other",
        "",
        "getEnableLocalOnly",
        "getExcludedDataId",
        "getExtras",
        "getIncludedDataId",
        "getItem",
        "getListMinHeight",
        "getMaxSuggestionCount",
        "getViewSpec",
        "hashCode",
        "toString",
        "",
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


# instance fields
.field private final enableLocalOnlyParam:Z

.field private final excludedIdParam:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final extrasParam:Landroid/os/Bundle;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final includedIdParam:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final itemParam:Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionItem;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final listMinHeightParam:I

.field private final maxSuggestionCountParam:I

.field private final viewSpecParam:Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SuggestionViewSpec;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionItem;Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SuggestionViewSpec;IZLandroid/os/Bundle;Ljava/util/List;Ljava/util/List;I)V
    .locals 1
    .param p1    # Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SuggestionViewSpec;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionItem;",
            "Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SuggestionViewSpec;",
            "IZ",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "itemParam"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "viewSpecParam"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfigImpl;->itemParam:Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionItem;

    iput-object p2, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfigImpl;->viewSpecParam:Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SuggestionViewSpec;

    iput p3, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfigImpl;->maxSuggestionCountParam:I

    iput-boolean p4, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfigImpl;->enableLocalOnlyParam:Z

    iput-object p5, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfigImpl;->extrasParam:Landroid/os/Bundle;

    iput-object p6, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfigImpl;->includedIdParam:Ljava/util/List;

    iput-object p7, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfigImpl;->excludedIdParam:Ljava/util/List;

    iput p8, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfigImpl;->listMinHeightParam:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionItem;Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SuggestionViewSpec;IZLandroid/os/Bundle;Ljava/util/List;Ljava/util/List;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 11

    and-int/lit8 v0, p9, 0x10

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v7, v1

    goto :goto_0

    :cond_0
    move-object/from16 v7, p5

    :goto_0
    and-int/lit8 v0, p9, 0x20

    if-eqz v0, :cond_1

    move-object v8, v1

    goto :goto_1

    :cond_1
    move-object/from16 v8, p6

    :goto_1
    and-int/lit8 v0, p9, 0x40

    if-eqz v0, :cond_2

    move-object v9, v1

    goto :goto_2

    :cond_2
    move-object/from16 v9, p7

    :goto_2
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move/from16 v10, p8

    invoke-direct/range {v2 .. v10}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfigImpl;-><init>(Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionItem;Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SuggestionViewSpec;IZLandroid/os/Bundle;Ljava/util/List;Ljava/util/List;I)V

    return-void
.end method

.method private final component1()Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionItem;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfigImpl;->itemParam:Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionItem;

    return-object v0
.end method

.method private final component2()Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SuggestionViewSpec;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfigImpl;->viewSpecParam:Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SuggestionViewSpec;

    return-object v0
.end method

.method private final component3()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfigImpl;->maxSuggestionCountParam:I

    return v0
.end method

.method private final component4()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfigImpl;->enableLocalOnlyParam:Z

    return v0
.end method

.method private final component5()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfigImpl;->extrasParam:Landroid/os/Bundle;

    return-object v0
.end method

.method private final component6()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfigImpl;->includedIdParam:Ljava/util/List;

    return-object v0
.end method

.method private final component7()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfigImpl;->excludedIdParam:Ljava/util/List;

    return-object v0
.end method

.method private final component8()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfigImpl;->listMinHeightParam:I

    return v0
.end method

.method public static synthetic copy$default(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfigImpl;Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionItem;Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SuggestionViewSpec;IZLandroid/os/Bundle;Ljava/util/List;Ljava/util/List;IILjava/lang/Object;)Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfigImpl;
    .locals 9

    move-object v0, p0

    move/from16 v1, p9

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfigImpl;->itemParam:Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionItem;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfigImpl;->viewSpecParam:Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SuggestionViewSpec;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget v4, v0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfigImpl;->maxSuggestionCountParam:I

    goto :goto_2

    :cond_2
    move v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-boolean v5, v0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfigImpl;->enableLocalOnlyParam:Z

    goto :goto_3

    :cond_3
    move v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfigImpl;->extrasParam:Landroid/os/Bundle;

    goto :goto_4

    :cond_4
    move-object v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfigImpl;->includedIdParam:Ljava/util/List;

    goto :goto_5

    :cond_5
    move-object v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfigImpl;->excludedIdParam:Ljava/util/List;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    iget v1, v0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfigImpl;->listMinHeightParam:I

    goto :goto_7

    :cond_7
    move/from16 v1, p8

    :goto_7
    move-object p1, v2

    move-object p2, v3

    move p3, v4

    move p4, v5

    move-object p5, v6

    move-object p6, v7

    move-object/from16 p7, v8

    move/from16 p8, v1

    invoke-virtual/range {p0 .. p8}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfigImpl;->copy(Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionItem;Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SuggestionViewSpec;IZLandroid/os/Bundle;Ljava/util/List;Ljava/util/List;I)Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfigImpl;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final copy(Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionItem;Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SuggestionViewSpec;IZLandroid/os/Bundle;Ljava/util/List;Ljava/util/List;I)Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfigImpl;
    .locals 10
    .param p1    # Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SuggestionViewSpec;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionItem;",
            "Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SuggestionViewSpec;",
            "IZ",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)",
            "Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfigImpl;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "itemParam"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "viewSpecParam"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfigImpl;

    move-object v1, v0

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfigImpl;-><init>(Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionItem;Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SuggestionViewSpec;IZLandroid/os/Bundle;Ljava/util/List;Ljava/util/List;I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfigImpl;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfigImpl;

    iget-object v1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfigImpl;->itemParam:Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionItem;

    iget-object v3, p1, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfigImpl;->itemParam:Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionItem;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfigImpl;->viewSpecParam:Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SuggestionViewSpec;

    iget-object v3, p1, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfigImpl;->viewSpecParam:Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SuggestionViewSpec;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfigImpl;->maxSuggestionCountParam:I

    iget v3, p1, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfigImpl;->maxSuggestionCountParam:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfigImpl;->enableLocalOnlyParam:Z

    iget-boolean v3, p1, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfigImpl;->enableLocalOnlyParam:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfigImpl;->extrasParam:Landroid/os/Bundle;

    iget-object v3, p1, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfigImpl;->extrasParam:Landroid/os/Bundle;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfigImpl;->includedIdParam:Ljava/util/List;

    iget-object v3, p1, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfigImpl;->includedIdParam:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfigImpl;->excludedIdParam:Ljava/util/List;

    iget-object v3, p1, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfigImpl;->excludedIdParam:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget v1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfigImpl;->listMinHeightParam:I

    iget p1, p1, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfigImpl;->listMinHeightParam:I

    if-eq v1, p1, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public getEnableLocalOnly()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfigImpl;->enableLocalOnlyParam:Z

    return v0
.end method

.method public getExcludedDataId()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfigImpl;->excludedIdParam:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfigImpl;->extrasParam:Landroid/os/Bundle;

    return-object v0
.end method

.method public getIncludedDataId()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfigImpl;->includedIdParam:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getItem()Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionItem;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfigImpl;->itemParam:Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionItem;

    return-object v0
.end method

.method public getListMinHeight()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfigImpl;->listMinHeightParam:I

    return v0
.end method

.method public getMaxSuggestionCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfigImpl;->maxSuggestionCountParam:I

    return v0
.end method

.method public getViewSpec()Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SuggestionViewSpec;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfigImpl;->viewSpecParam:Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SuggestionViewSpec;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfigImpl;->itemParam:Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionItem;

    invoke-virtual {v0}, Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionItem;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfigImpl;->viewSpecParam:Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SuggestionViewSpec;

    invoke-virtual {v1}, Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SuggestionViewSpec;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfigImpl;->maxSuggestionCountParam:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfigImpl;->enableLocalOnlyParam:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfigImpl;->extrasParam:Landroid/os/Bundle;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/os/Bundle;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfigImpl;->includedIdParam:Ljava/util/List;

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfigImpl;->excludedIdParam:Ljava/util/List;

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfigImpl;->listMinHeightParam:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SuggestionViewConfigImpl(itemParam="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfigImpl;->itemParam:Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionItem;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", viewSpecParam="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfigImpl;->viewSpecParam:Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SuggestionViewSpec;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", maxSuggestionCountParam="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfigImpl;->maxSuggestionCountParam:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", enableLocalOnlyParam="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfigImpl;->enableLocalOnlyParam:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", extrasParam="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfigImpl;->extrasParam:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", includedIdParam="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfigImpl;->includedIdParam:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", excludedIdParam="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfigImpl;->excludedIdParam:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", listMinHeightParam="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfigImpl;->listMinHeightParam:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
