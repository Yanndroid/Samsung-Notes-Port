.class Lcom/samsung/android/sdk/handwriting/HwrLanguageID$3$4;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/handwriting/HwrLanguageID$3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/handwriting/HwrLanguageID$3;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/handwriting/HwrLanguageID$3;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/HwrLanguageID$3$4;->this$0:Lcom/samsung/android/sdk/handwriting/HwrLanguageID$3;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string p1, "es_ES"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "es_US"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "es_MX"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method