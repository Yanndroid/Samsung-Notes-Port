.class public Lcom/fasterxml/jackson/core/format/DataFormatDetector;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_MAX_INPUT_LOOKAHEAD:I = 0x40


# instance fields
.field public final _detectors:[Lcom/fasterxml/jackson/core/JsonFactory;

.field public final _maxInputLookahead:I

.field public final _minimalMatch:Lcom/fasterxml/jackson/core/format/MatchStrength;

.field public final _optimalMatch:Lcom/fasterxml/jackson/core/format/MatchStrength;


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/fasterxml/jackson/core/JsonFactory;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/format/DataFormatDetector;-><init>([Lcom/fasterxml/jackson/core/JsonFactory;)V

    return-void
.end method

.method public varargs constructor <init>([Lcom/fasterxml/jackson/core/JsonFactory;)V
    .locals 3

    sget-object v0, Lcom/fasterxml/jackson/core/format/MatchStrength;->SOLID_MATCH:Lcom/fasterxml/jackson/core/format/MatchStrength;

    sget-object v1, Lcom/fasterxml/jackson/core/format/MatchStrength;->WEAK_MATCH:Lcom/fasterxml/jackson/core/format/MatchStrength;

    const/16 v2, 0x40

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/fasterxml/jackson/core/format/DataFormatDetector;-><init>([Lcom/fasterxml/jackson/core/JsonFactory;Lcom/fasterxml/jackson/core/format/MatchStrength;Lcom/fasterxml/jackson/core/format/MatchStrength;I)V

    return-void
.end method

.method private constructor <init>([Lcom/fasterxml/jackson/core/JsonFactory;Lcom/fasterxml/jackson/core/format/MatchStrength;Lcom/fasterxml/jackson/core/format/MatchStrength;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/core/format/DataFormatDetector;->_detectors:[Lcom/fasterxml/jackson/core/JsonFactory;

    iput-object p2, p0, Lcom/fasterxml/jackson/core/format/DataFormatDetector;->_optimalMatch:Lcom/fasterxml/jackson/core/format/MatchStrength;

    iput-object p3, p0, Lcom/fasterxml/jackson/core/format/DataFormatDetector;->_minimalMatch:Lcom/fasterxml/jackson/core/format/MatchStrength;

    iput p4, p0, Lcom/fasterxml/jackson/core/format/DataFormatDetector;->_maxInputLookahead:I

    return-void
.end method

.method private _findFormat(Lcom/fasterxml/jackson/core/format/InputAccessor$Std;)Lcom/fasterxml/jackson/core/format/DataFormatMatcher;
    .locals 9

    iget-object v0, p0, Lcom/fasterxml/jackson/core/format/DataFormatDetector;->_detectors:[Lcom/fasterxml/jackson/core/JsonFactory;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v3

    move-object v3, v2

    :goto_0
    if-ge v4, v1, :cond_4

    aget-object v5, v0, v4

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/format/InputAccessor$Std;->reset()V

    invoke-virtual {v5, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->hasFormat(Lcom/fasterxml/jackson/core/format/InputAccessor;)Lcom/fasterxml/jackson/core/format/MatchStrength;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    iget-object v8, p0, Lcom/fasterxml/jackson/core/format/DataFormatDetector;->_minimalMatch:Lcom/fasterxml/jackson/core/format/MatchStrength;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    if-ge v7, v8, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    if-lt v7, v8, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    iget-object v3, p0, Lcom/fasterxml/jackson/core/format/DataFormatDetector;->_optimalMatch:Lcom/fasterxml/jackson/core/format/MatchStrength;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-lt v2, v3, :cond_2

    move-object v2, v5

    move-object v3, v6

    goto :goto_2

    :cond_2
    move-object v2, v5

    move-object v3, v6

    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    invoke-virtual {p1, v2, v3}, Lcom/fasterxml/jackson/core/format/InputAccessor$Std;->createMatcher(Lcom/fasterxml/jackson/core/JsonFactory;Lcom/fasterxml/jackson/core/format/MatchStrength;)Lcom/fasterxml/jackson/core/format/DataFormatMatcher;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public findFormat(Ljava/io/InputStream;)Lcom/fasterxml/jackson/core/format/DataFormatMatcher;
    .locals 2

    new-instance v0, Lcom/fasterxml/jackson/core/format/InputAccessor$Std;

    iget v1, p0, Lcom/fasterxml/jackson/core/format/DataFormatDetector;->_maxInputLookahead:I

    new-array v1, v1, [B

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/core/format/InputAccessor$Std;-><init>(Ljava/io/InputStream;[B)V

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/format/DataFormatDetector;->_findFormat(Lcom/fasterxml/jackson/core/format/InputAccessor$Std;)Lcom/fasterxml/jackson/core/format/DataFormatMatcher;

    move-result-object p1

    return-object p1
.end method

.method public findFormat([B)Lcom/fasterxml/jackson/core/format/DataFormatMatcher;
    .locals 1

    new-instance v0, Lcom/fasterxml/jackson/core/format/InputAccessor$Std;

    invoke-direct {v0, p1}, Lcom/fasterxml/jackson/core/format/InputAccessor$Std;-><init>([B)V

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/format/DataFormatDetector;->_findFormat(Lcom/fasterxml/jackson/core/format/InputAccessor$Std;)Lcom/fasterxml/jackson/core/format/DataFormatMatcher;

    move-result-object p1

    return-object p1
.end method

.method public findFormat([BII)Lcom/fasterxml/jackson/core/format/DataFormatMatcher;
    .locals 1

    new-instance v0, Lcom/fasterxml/jackson/core/format/InputAccessor$Std;

    invoke-direct {v0, p1, p2, p3}, Lcom/fasterxml/jackson/core/format/InputAccessor$Std;-><init>([BII)V

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/format/DataFormatDetector;->_findFormat(Lcom/fasterxml/jackson/core/format/InputAccessor$Std;)Lcom/fasterxml/jackson/core/format/DataFormatMatcher;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/format/DataFormatDetector;->_detectors:[Lcom/fasterxml/jackson/core/JsonFactory;

    array-length v2, v1

    if-lez v2, :cond_0

    const/4 v3, 0x0

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonFactory;->getFormatName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    :goto_0
    if-ge v1, v2, :cond_0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/fasterxml/jackson/core/format/DataFormatDetector;->_detectors:[Lcom/fasterxml/jackson/core/JsonFactory;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/JsonFactory;->getFormatName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withMaxInputLookahead(I)Lcom/fasterxml/jackson/core/format/DataFormatDetector;
    .locals 4

    iget v0, p0, Lcom/fasterxml/jackson/core/format/DataFormatDetector;->_maxInputLookahead:I

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/core/format/DataFormatDetector;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/format/DataFormatDetector;->_detectors:[Lcom/fasterxml/jackson/core/JsonFactory;

    iget-object v2, p0, Lcom/fasterxml/jackson/core/format/DataFormatDetector;->_optimalMatch:Lcom/fasterxml/jackson/core/format/MatchStrength;

    iget-object v3, p0, Lcom/fasterxml/jackson/core/format/DataFormatDetector;->_minimalMatch:Lcom/fasterxml/jackson/core/format/MatchStrength;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/fasterxml/jackson/core/format/DataFormatDetector;-><init>([Lcom/fasterxml/jackson/core/JsonFactory;Lcom/fasterxml/jackson/core/format/MatchStrength;Lcom/fasterxml/jackson/core/format/MatchStrength;I)V

    return-object v0
.end method

.method public withMinimalMatch(Lcom/fasterxml/jackson/core/format/MatchStrength;)Lcom/fasterxml/jackson/core/format/DataFormatDetector;
    .locals 4

    iget-object v0, p0, Lcom/fasterxml/jackson/core/format/DataFormatDetector;->_minimalMatch:Lcom/fasterxml/jackson/core/format/MatchStrength;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/core/format/DataFormatDetector;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/format/DataFormatDetector;->_detectors:[Lcom/fasterxml/jackson/core/JsonFactory;

    iget-object v2, p0, Lcom/fasterxml/jackson/core/format/DataFormatDetector;->_optimalMatch:Lcom/fasterxml/jackson/core/format/MatchStrength;

    iget v3, p0, Lcom/fasterxml/jackson/core/format/DataFormatDetector;->_maxInputLookahead:I

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/fasterxml/jackson/core/format/DataFormatDetector;-><init>([Lcom/fasterxml/jackson/core/JsonFactory;Lcom/fasterxml/jackson/core/format/MatchStrength;Lcom/fasterxml/jackson/core/format/MatchStrength;I)V

    return-object v0
.end method

.method public withOptimalMatch(Lcom/fasterxml/jackson/core/format/MatchStrength;)Lcom/fasterxml/jackson/core/format/DataFormatDetector;
    .locals 4

    iget-object v0, p0, Lcom/fasterxml/jackson/core/format/DataFormatDetector;->_optimalMatch:Lcom/fasterxml/jackson/core/format/MatchStrength;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/core/format/DataFormatDetector;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/format/DataFormatDetector;->_detectors:[Lcom/fasterxml/jackson/core/JsonFactory;

    iget-object v2, p0, Lcom/fasterxml/jackson/core/format/DataFormatDetector;->_minimalMatch:Lcom/fasterxml/jackson/core/format/MatchStrength;

    iget v3, p0, Lcom/fasterxml/jackson/core/format/DataFormatDetector;->_maxInputLookahead:I

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/fasterxml/jackson/core/format/DataFormatDetector;-><init>([Lcom/fasterxml/jackson/core/JsonFactory;Lcom/fasterxml/jackson/core/format/MatchStrength;Lcom/fasterxml/jackson/core/format/MatchStrength;I)V

    return-object v0
.end method
