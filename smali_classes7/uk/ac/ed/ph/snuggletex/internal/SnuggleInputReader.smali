.class public final Luk/ac/ed/ph/snuggletex/internal/SnuggleInputReader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$SourceContext;


# instance fields
.field private final input:Luk/ac/ed/ph/snuggletex/SnuggleInput;

.field private inputLength:I

.field private newlineIndices:[I

.field private resultingDocument:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

.field private final sessionContext:Luk/ac/ed/ph/snuggletex/internal/SessionContext;


# direct methods
.method public constructor <init>(Luk/ac/ed/ph/snuggletex/internal/SessionContext;Luk/ac/ed/ph/snuggletex/SnuggleInput;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/SnuggleInputReader;->newlineIndices:[I

    iput-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/SnuggleInputReader;->resultingDocument:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/internal/SnuggleInputReader;->sessionContext:Luk/ac/ed/ph/snuggletex/internal/SessionContext;

    iput-object p2, p0, Luk/ac/ed/ph/snuggletex/internal/SnuggleInputReader;->input:Luk/ac/ed/ph/snuggletex/SnuggleInput;

    return-void
.end method

.method private calculateNewlineIndicesAndCheckCodePoints(Ljava/lang/StringBuilder;)[I
    .locals 12

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v3, v1, :cond_5

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    const/16 v7, 0xa

    if-ne v6, v7, :cond_0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {v4}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-static {v6}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-static {v4, v6}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v4

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v3, -0x1

    invoke-direct {p0, p1, v5, v4}, Luk/ac/ed/ph/snuggletex/internal/SnuggleInputReader;->recordSurrogateError(Ljava/lang/StringBuilder;IC)V

    goto :goto_2

    :cond_2
    invoke-static {v6}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-direct {p0, p1, v3, v6}, Luk/ac/ed/ph/snuggletex/internal/SnuggleInputReader;->recordSurrogateError(Ljava/lang/StringBuilder;IC)V

    goto :goto_2

    :cond_3
    move v4, v6

    :goto_1
    invoke-static {v4}, Ljava/lang/Character;->isISOControl(I)Z

    move-result v8

    if-eqz v8, :cond_4

    const/16 v8, 0xd

    if-eq v4, v8, :cond_4

    if-eq v4, v7, :cond_4

    const/16 v7, 0x9

    if-eq v4, v7, :cond_4

    iget-object v7, p0, Luk/ac/ed/ph/snuggletex/internal/SnuggleInputReader;->sessionContext:Luk/ac/ed/ph/snuggletex/internal/SessionContext;

    new-instance v8, Luk/ac/ed/ph/snuggletex/InputError;

    sget-object v9, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;->TTEG02:Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;

    const/4 v10, 0x0

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v11, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v11, v5

    invoke-direct {v8, v9, v10, v11}, Luk/ac/ed/ph/snuggletex/InputError;-><init>(Luk/ac/ed/ph/snuggletex/ErrorCode;Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;[Ljava/lang/Object;)V

    invoke-interface {v7, v8}, Luk/ac/ed/ph/snuggletex/internal/SessionContext;->registerError(Luk/ac/ed/ph/snuggletex/InputError;)V

    const/16 v4, 0x20

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    move v4, v6

    goto :goto_0

    :cond_5
    invoke-static {v4}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v5

    invoke-direct {p0, p1, v1, v4}, Luk/ac/ed/ph/snuggletex/internal/SnuggleInputReader;->recordSurrogateError(Ljava/lang/StringBuilder;IC)V

    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array v1, p1, [I

    :goto_3
    if-ge v2, p1, :cond_7

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    return-object v1
.end method

.method private createReader(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/Reader;
    .locals 1

    new-instance v0, Ljava/io/InputStreamReader;

    if-eqz p2, :cond_0

    invoke-direct {v0, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    :goto_0
    return-object v0
.end method

.method private readCharacterStream(Ljava/io/Reader;)Ljava/lang/StringBuilder;
    .locals 2

    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    return-object p1
.end method

.method private readInputData()Ljava/lang/StringBuilder;
    .locals 3

    sget-object v0, Luk/ac/ed/ph/snuggletex/internal/SnuggleInputReader$1;->$SwitchMap$uk$ac$ed$ph$snuggletex$SnuggleInput$InputType:[I

    iget-object v1, p0, Luk/ac/ed/ph/snuggletex/internal/SnuggleInputReader;->input:Luk/ac/ed/ph/snuggletex/SnuggleInput;

    invoke-virtual {v1}, Luk/ac/ed/ph/snuggletex/SnuggleInput;->getType()Luk/ac/ed/ph/snuggletex/SnuggleInput$InputType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/SnuggleInputReader;->input:Luk/ac/ed/ph/snuggletex/SnuggleInput;

    invoke-virtual {v0}, Luk/ac/ed/ph/snuggletex/SnuggleInput;->getReader()Ljava/io/Reader;

    move-result-object v0

    invoke-direct {p0, v0}, Luk/ac/ed/ph/snuggletex/internal/SnuggleInputReader;->readCharacterStream(Ljava/io/Reader;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Luk/ac/ed/ph/snuggletex/SnuggleLogicException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected switch case: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Luk/ac/ed/ph/snuggletex/internal/SnuggleInputReader;->input:Luk/ac/ed/ph/snuggletex/SnuggleInput;

    invoke-virtual {v2}, Luk/ac/ed/ph/snuggletex/SnuggleInput;->getType()Luk/ac/ed/ph/snuggletex/SnuggleInput$InputType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Luk/ac/ed/ph/snuggletex/SnuggleLogicException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/SnuggleInputReader;->input:Luk/ac/ed/ph/snuggletex/SnuggleInput;

    invoke-virtual {v0}, Luk/ac/ed/ph/snuggletex/SnuggleInput;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iget-object v1, p0, Luk/ac/ed/ph/snuggletex/internal/SnuggleInputReader;->input:Luk/ac/ed/ph/snuggletex/SnuggleInput;

    invoke-virtual {v1}, Luk/ac/ed/ph/snuggletex/SnuggleInput;->getEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Luk/ac/ed/ph/snuggletex/internal/SnuggleInputReader;->createReader(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v0

    invoke-direct {p0, v0}, Luk/ac/ed/ph/snuggletex/internal/SnuggleInputReader;->readCharacterStream(Ljava/io/Reader;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Luk/ac/ed/ph/snuggletex/internal/SnuggleInputReader;->input:Luk/ac/ed/ph/snuggletex/SnuggleInput;

    invoke-virtual {v1}, Luk/ac/ed/ph/snuggletex/SnuggleInput;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iget-object v1, p0, Luk/ac/ed/ph/snuggletex/internal/SnuggleInputReader;->input:Luk/ac/ed/ph/snuggletex/SnuggleInput;

    invoke-virtual {v1}, Luk/ac/ed/ph/snuggletex/SnuggleInput;->getEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Luk/ac/ed/ph/snuggletex/internal/SnuggleInputReader;->createReader(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v0

    invoke-direct {p0, v0}, Luk/ac/ed/ph/snuggletex/internal/SnuggleInputReader;->readCharacterStream(Ljava/io/Reader;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Luk/ac/ed/ph/snuggletex/internal/SnuggleInputReader;->input:Luk/ac/ed/ph/snuggletex/SnuggleInput;

    invoke-virtual {v1}, Luk/ac/ed/ph/snuggletex/SnuggleInput;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private recordSurrogateError(Ljava/lang/StringBuilder;IC)V
    .locals 5

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/SnuggleInputReader;->sessionContext:Luk/ac/ed/ph/snuggletex/internal/SessionContext;

    new-instance v1, Luk/ac/ed/ph/snuggletex/InputError;

    sget-object v2, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;->TTEG05:Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    const/4 v4, 0x0

    aput-object p3, v3, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v4, 0x1

    aput-object p3, v3, v4

    const/4 p3, 0x0

    invoke-direct {v1, v2, p3, v3}, Luk/ac/ed/ph/snuggletex/InputError;-><init>(Luk/ac/ed/ph/snuggletex/ErrorCode;Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;[Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Luk/ac/ed/ph/snuggletex/internal/SessionContext;->registerError(Luk/ac/ed/ph/snuggletex/InputError;)V

    const/16 p3, 0x20

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    return-void
.end method


# virtual methods
.method public createWorkingDocument()Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;
    .locals 2

    invoke-direct {p0}, Luk/ac/ed/ph/snuggletex/internal/SnuggleInputReader;->readInputData()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    iput v1, p0, Luk/ac/ed/ph/snuggletex/internal/SnuggleInputReader;->inputLength:I

    invoke-direct {p0, v0}, Luk/ac/ed/ph/snuggletex/internal/SnuggleInputReader;->calculateNewlineIndicesAndCheckCodePoints(Ljava/lang/StringBuilder;)[I

    move-result-object v1

    iput-object v1, p0, Luk/ac/ed/ph/snuggletex/internal/SnuggleInputReader;->newlineIndices:[I

    new-instance v1, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    invoke-direct {v1, v0, p0}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;-><init>(Ljava/lang/CharSequence;Luk/ac/ed/ph/snuggletex/internal/SnuggleInputReader;)V

    iput-object v1, p0, Luk/ac/ed/ph/snuggletex/internal/SnuggleInputReader;->resultingDocument:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    return-object v1
.end method

.method public getInput()Luk/ac/ed/ph/snuggletex/SnuggleInput;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/SnuggleInputReader;->input:Luk/ac/ed/ph/snuggletex/SnuggleInput;

    return-object v0
.end method

.method public getLineAndColumn(I)[I
    .locals 4

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/SnuggleInputReader;->newlineIndices:[I

    if-eqz v0, :cond_2

    if-ltz p1, :cond_1

    iget v0, p0, Luk/ac/ed/ph/snuggletex/internal/SnuggleInputReader;->inputLength:I

    if-gt p1, v0, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Luk/ac/ed/ph/snuggletex/internal/SnuggleInputReader;->newlineIndices:[I

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget v3, v2, v1

    if-ge v3, p1, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v1, -0x1

    aget v2, v2, v3

    sub-int/2addr p1, v2

    const/4 v2, 0x2

    new-array v2, v2, [I

    aput v1, v2, v0

    const/4 v0, 0x1

    aput p1, v2, v0

    return-object v2

    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Input has not yet been read"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getSessionContext()Luk/ac/ed/ph/snuggletex/internal/SessionContext;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/SnuggleInputReader;->sessionContext:Luk/ac/ed/ph/snuggletex/internal/SessionContext;

    return-object v0
.end method
