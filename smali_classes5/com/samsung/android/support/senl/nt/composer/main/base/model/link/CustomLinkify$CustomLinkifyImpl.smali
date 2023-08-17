.class Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify$CustomLinkifyImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomLinkifyImpl"
.end annotation


# instance fields
.field private final sCalculatorFormulaMatchFilter:Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify$MatchFilter;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify$CustomLinkifyImpl$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify$CustomLinkifyImpl$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify$CustomLinkifyImpl;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify$CustomLinkifyImpl;->sCalculatorFormulaMatchFilter:Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify$MatchFilter;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify$CustomLinkifyImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public addLinks(Ljava/util/ArrayList;Ljava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    and-int/lit8 p3, p3, 0x20

    if-eqz p3, :cond_0

    sget-object v3, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/Patterns;->CALCULATOR_FORMULA:Ljava/util/regex/Pattern;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify$CustomLinkifyImpl;->sCalculatorFormulaMatchFilter:Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify$MatchFilter;

    const/4 v5, 0x7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify$CustomLinkifyImpl;->gatherLinks(Ljava/util/List;Ljava/lang/String;Ljava/util/regex/Pattern;Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify$MatchFilter;I)V

    :cond_0
    return-void
.end method

.method public gatherLinks(Ljava/util/List;Ljava/lang/String;Ljava/util/regex/Pattern;Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify$MatchFilter;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify$MatchFilter;",
            "I)V"
        }
    .end annotation

    invoke-virtual {p3, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p3

    :goto_0
    if-eqz p4, :cond_2

    :cond_0
    invoke-virtual {p3}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p3}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    invoke-virtual {p3}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    invoke-interface {p4, p2, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify$MatchFilter;->acceptMatch(Ljava/lang/CharSequence;II)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_2
    invoke-virtual {p3}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    invoke-virtual {p3}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    invoke-virtual {p3}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    :goto_1
    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;

    invoke-direct {v2, p5, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;-><init>(III)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
