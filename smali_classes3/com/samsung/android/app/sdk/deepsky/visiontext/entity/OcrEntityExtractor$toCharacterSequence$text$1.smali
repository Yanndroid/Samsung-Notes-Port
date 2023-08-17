.class final Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$toCharacterSequence$text$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor;->toCharacterSequence$deepsky_sdk_2_2_9_release(Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult;)Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$CharacterSequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$Character;",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n"
    }
    d2 = {
        "Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$Character;",
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


# static fields
.field public static final INSTANCE:Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$toCharacterSequence$text$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$toCharacterSequence$text$1;

    invoke-direct {v0}, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$toCharacterSequence$text$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$toCharacterSequence$text$1;->INSTANCE:Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$toCharacterSequence$text$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$Character;)Ljava/lang/CharSequence;
    .locals 1
    .param p1    # Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$Character;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$Character;->getCharText()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$Character;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$toCharacterSequence$text$1;->invoke(Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor$Character;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
