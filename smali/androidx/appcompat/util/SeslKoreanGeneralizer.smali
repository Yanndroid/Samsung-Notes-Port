.class public Landroidx/appcompat/util/SeslKoreanGeneralizer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final HAS_JOSA_PATTERN:Ljava/util/regex/Pattern;

.field private final HAS_JOSA_REGEX:Ljava/lang/String;

.field private JOSA_KOREAN_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final NON_PRONOUNCEABLE_CHARACTERS:Ljava/lang/String;

.field private final PRONOUNCEABLE_SYMBOLS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "()[]<>{};:|`\'\"\\.=!?&\u3002 \u2661\u2665\u2026\u00ab\u00bb\u2018\u2019\u201a\u201b\u201c\u201d\u201e\u201f\u2039\u203a\u275b\u275c\u275d\u275e\u301d\u301e\u301f\uff02\uff07"

    iput-object v0, p0, Landroidx/appcompat/util/SeslKoreanGeneralizer;->NON_PRONOUNCEABLE_CHARACTERS:Ljava/lang/String;

    const-string v0, "(?s)(.*)\\((.+)\\)(.*)"

    iput-object v0, p0, Landroidx/appcompat/util/SeslKoreanGeneralizer;->HAS_JOSA_REGEX:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/util/SeslKoreanGeneralizer;->HAS_JOSA_PATTERN:Ljava/util/regex/Pattern;

    new-instance v0, Landroidx/appcompat/util/SeslKoreanGeneralizer$1;

    invoke-direct {v0, p0}, Landroidx/appcompat/util/SeslKoreanGeneralizer$1;-><init>(Landroidx/appcompat/util/SeslKoreanGeneralizer;)V

    iput-object v0, p0, Landroidx/appcompat/util/SeslKoreanGeneralizer;->JOSA_KOREAN_MAP:Ljava/util/Map;

    new-instance v0, Landroidx/appcompat/util/SeslKoreanGeneralizer$2;

    invoke-direct {v0, p0}, Landroidx/appcompat/util/SeslKoreanGeneralizer$2;-><init>(Landroidx/appcompat/util/SeslKoreanGeneralizer;)V

    iput-object v0, p0, Landroidx/appcompat/util/SeslKoreanGeneralizer;->PRONOUNCEABLE_SYMBOLS:Ljava/util/Map;

    return-void
.end method

.method private checkIfEndsWithKoreanJongSung(ILjava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 2

    const v0, 0xac00

    if-gt v0, p1, :cond_3

    const v1, 0xd7a3

    if-gt p1, v1, :cond_3

    sub-int/2addr p1, v0

    rem-int/lit8 p1, p1, 0x1c

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    const/16 p2, 0x8

    if-ne p1, p2, :cond_1

    :cond_0
    move p1, v0

    :cond_1
    if-lez p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private checkIfEndsWithPronounceableSymbols(CLjava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/util/SeslKoreanGeneralizer;->PRONOUNCEABLE_SYMBOLS:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    if-eqz p1, :cond_1

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    xor-int/lit8 v0, v0, 0x1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private hasJosaInString(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/util/SeslKoreanGeneralizer;->HAS_JOSA_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private naturalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-direct {p0, p1}, Landroidx/appcompat/util/SeslKoreanGeneralizer;->hasJosaInString(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    return-object p1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_b

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v7, p0, Landroidx/appcompat/util/SeslKoreanGeneralizer;->JOSA_KOREAN_MAP:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    move-object v6, v8

    :cond_3
    const/4 v5, 0x1

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, p0, Landroidx/appcompat/util/SeslKoreanGeneralizer;->JOSA_KOREAN_MAP:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    iget-object v7, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v8, p0, Landroidx/appcompat/util/SeslKoreanGeneralizer;->JOSA_KOREAN_MAP:Ljava/util/Map;

    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    const-string v9, "(\uc73c)\ub85c"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    move v9, v5

    goto :goto_1

    :cond_4
    move-object v6, v1

    move-object v7, v6

    move-object v8, v7

    :cond_5
    move v9, v2

    :goto_1
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_7

    :cond_6
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_7
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-direct {p0, v4, v11}, Landroidx/appcompat/util/SeslKoreanGeneralizer;->checkIfEndsWithKoreanJongSung(ILjava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v11

    if-nez v11, :cond_8

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-direct {p0, v4, v9}, Landroidx/appcompat/util/SeslKoreanGeneralizer;->checkIfEndsWithPronounceableSymbols(CLjava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v11

    :cond_8
    if-eqz v11, :cond_6

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_9

    goto :goto_2

    :cond_9
    move-object v7, v8

    :goto_2
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v5

    add-int/2addr v3, v6

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v5

    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    move-result v10

    :goto_3
    const-string v6, "()[]<>{};:|`\'\"\\.=!?&\u3002 \u2661\u2665\u2026\u00ab\u00bb\u2018\u2019\u201a\u201b\u201c\u201d\u201e\u201f\u2039\u203a\u275b\u275c\u275d\u275e\u301d\u301e\u301f\uff02\uff07"

    invoke-virtual {v6, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-gez v6, :cond_a

    move v4, v10

    :cond_a
    add-int/2addr v3, v5

    goto/16 :goto_0

    :cond_b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public naturalizeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-direct {p0, p1}, Landroidx/appcompat/util/SeslKoreanGeneralizer;->naturalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
