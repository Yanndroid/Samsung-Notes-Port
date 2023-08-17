.class Lcom/samsung/android/sdk/pen/text/SpenTextUtils$DuplicateSpanVerifier;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/text/SpenTextUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DuplicateSpanVerifier"
.end annotation


# instance fields
.field public spanCount:I

.field public spanType:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/sdk/pen/text/SpenTextUtils$DuplicateSpanVerifier;->spanType:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/sdk/pen/text/SpenTextUtils$DuplicateSpanVerifier;->spanCount:I

    return-void
.end method


# virtual methods
.method public findSpan()V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/text/SpenTextUtils$DuplicateSpanVerifier;->spanCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/sdk/pen/text/SpenTextUtils$DuplicateSpanVerifier;->spanCount:I

    return-void
.end method

.method public hasDuplicates()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/text/SpenTextUtils$DuplicateSpanVerifier;->spanCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
