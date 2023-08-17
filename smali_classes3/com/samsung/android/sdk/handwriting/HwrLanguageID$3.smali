.class Lcom/samsung/android/sdk/handwriting/HwrLanguageID$3;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/handwriting/HwrLanguageID;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/util/List<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    new-instance v0, Lcom/samsung/android/sdk/handwriting/HwrLanguageID$3$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID$3$1;-><init>(Lcom/samsung/android/sdk/handwriting/HwrLanguageID$3;)V

    const-string v1, "en"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/samsung/android/sdk/handwriting/HwrLanguageID$3$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID$3$2;-><init>(Lcom/samsung/android/sdk/handwriting/HwrLanguageID$3;)V

    const-string v1, "fr"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/samsung/android/sdk/handwriting/HwrLanguageID$3$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID$3$3;-><init>(Lcom/samsung/android/sdk/handwriting/HwrLanguageID$3;)V

    const-string v1, "de"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/samsung/android/sdk/handwriting/HwrLanguageID$3$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID$3$4;-><init>(Lcom/samsung/android/sdk/handwriting/HwrLanguageID$3;)V

    const-string v1, "es"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/samsung/android/sdk/handwriting/HwrLanguageID$3$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID$3$5;-><init>(Lcom/samsung/android/sdk/handwriting/HwrLanguageID$3;)V

    const-string v1, "pt"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/samsung/android/sdk/handwriting/HwrLanguageID$3$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID$3$6;-><init>(Lcom/samsung/android/sdk/handwriting/HwrLanguageID$3;)V

    const-string v1, "nl"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/samsung/android/sdk/handwriting/HwrLanguageID$3$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID$3$7;-><init>(Lcom/samsung/android/sdk/handwriting/HwrLanguageID$3;)V

    const-string/jumbo v1, "zh"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
