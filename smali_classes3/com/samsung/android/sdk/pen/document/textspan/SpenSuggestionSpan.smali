.class public final Lcom/samsung/android/sdk/pen/document/textspan/SpenSuggestionSpan;
.super Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;
.source "SourceFile"


# static fields
.field public static final TYPE_AUTO_CORRECTION:I = 0x4

.field public static final TYPE_EASY_CORRECT:I = 0x1

.field public static final TYPE_GRAMMAR_SUGGESTION:I = 0x1000

.field public static final TYPE_MISSPELLED:I = 0x2

.field public static final TYPE_NONE:I = 0x0

.field public static final TYPE_TYPO_SUGGESTION:I = 0x2000


# instance fields
.field private mSuggestionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSuggestionType:I

.field private mUnderlineColor:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x15

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;-><init>(I)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenSuggestionSpan;->mSuggestionType:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenSuggestionSpan;->mUnderlineColor:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenSuggestionSpan;->mSuggestionList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(IIIIILjava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIII",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0x15

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;-><init>(IIII)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenSuggestionSpan;->mSuggestionType:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenSuggestionSpan;->mUnderlineColor:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenSuggestionSpan;->mSuggestionList:Ljava/util/ArrayList;

    iput p4, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenSuggestionSpan;->mSuggestionType:I

    iput p5, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenSuggestionSpan;->mUnderlineColor:I

    invoke-virtual {p0, p6}, Lcom/samsung/android/sdk/pen/document/textspan/SpenSuggestionSpan;->setSuggestions(Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public getSuggestionType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenSuggestionSpan;->mSuggestionType:I

    return v0
.end method

.method public getSuggestions()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenSuggestionSpan;->mSuggestionList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getUnderlineColor()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenSuggestionSpan;->mUnderlineColor:I

    return v0
.end method

.method public setSuggestionType(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenSuggestionSpan;->mSuggestionType:I

    return-void
.end method

.method public setSuggestions(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenSuggestionSpan;->mSuggestionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenSuggestionSpan;->mSuggestionList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public setUnderlineColor(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenSuggestionSpan;->mUnderlineColor:I

    return-void
.end method
