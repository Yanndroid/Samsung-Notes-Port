.class final Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$containsInEntity$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor;->containsInEntity(Landroid/view/textclassifier/TextLinks$TextLink;Ljava/util/List;Ljava/lang/String;)Z
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n"
    }
    d2 = {
        "Landroid/view/textclassifier/TextLinks$TextLink;",
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
.field public final synthetic $this_containsInEntity:Landroid/view/textclassifier/TextLinks$TextLink;


# direct methods
.method public constructor <init>(Landroid/view/textclassifier/TextLinks$TextLink;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$containsInEntity$1;->$this_containsInEntity:Landroid/view/textclassifier/TextLinks$TextLink;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroid/view/textclassifier/TextLinks$TextLink;)Ljava/lang/Boolean;
    .locals 1
    .param p1    # Landroid/view/textclassifier/TextLinks$TextLink;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$containsInEntity$1;->$this_containsInEntity:Landroid/view/textclassifier/TextLinks$TextLink;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/view/textclassifier/TextLinks$TextLink;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$containsInEntity$1;->invoke(Landroid/view/textclassifier/TextLinks$TextLink;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
