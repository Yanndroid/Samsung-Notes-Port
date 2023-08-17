.class public Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private engine:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;->engine:J

    return-void
.end method

.method private native VIHW_AddStroke(J[F[FI)V
.end method

.method private native VIHW_AddStroke(J[I[II)V
.end method

.method private native VIHW_ClearStrokes(J)V
.end method

.method private native VIHW_GenerateAndSave(JLjava/lang/String;Ljava/lang/String;)I
.end method

.method private native VIHW_GetCharResultInfo(J)Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerResultInfo;
.end method

.method private native VIHW_GetDBVersion(Ljava/lang/String;)J
.end method

.method private native VIHW_GetResult(JI)Ljava/lang/String;
.end method

.method private native VIHW_GetResultCount(J)I
.end method

.method private native VIHW_GetResultList(J)[Ljava/lang/String;
.end method

.method private native VIHW_GetScoreList(J)[F
.end method

.method private native VIHW_GetWordInfo(JI[I[I[I)V
.end method

.method private native VIHW_Init()J
.end method

.method private native VIHW_IsValidDB(Ljava/lang/String;)Z
.end method

.method private native VIHW_Recognize(J)I
.end method

.method private native VIHW_Release(J)V
.end method

.method private native VIHW_RemoveStroke(JI)V
.end method

.method private native VIHW_SetAsyncMode(JZ)V
.end method

.method private native VIHW_SetBaseline(JII)V
.end method

.method private native VIHW_SetLanguage(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native VIHW_SetLanguage(J[B[BLjava/lang/String;)I
.end method

.method private native VIHW_SetListener(JLcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl$TextRecognizerImplListener;)V
.end method

.method private native VIHW_SetRecogMode(JLjava/lang/String;)I
.end method

.method private native VIHW_SetRecogType(JLjava/lang/String;)I
.end method

.method private native VIHW_SetStopAsync(J)V
.end method

.method private native VIHW_SetStrokeMode(JZ)V
.end method

.method private native VIHW_SetUserDictMode(JLjava/lang/String;)I
.end method

.method private native VIHW_SetUserDictionary(J[Ljava/lang/String;)I
.end method


# virtual methods
.method public addStroke([F[FI)V
    .locals 6

    iget-wide v1, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;->engine:J

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;->VIHW_AddStroke(J[F[FI)V

    return-void
.end method

.method public addStroke([I[II)V
    .locals 6

    iget-wide v1, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;->engine:J

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;->VIHW_AddStroke(J[I[II)V

    return-void
.end method

.method public clearStrokes()V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;->engine:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;->VIHW_ClearStrokes(J)V

    return-void
.end method

.method public getCharResultInfo()Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerResultInfo;
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;->engine:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;->VIHW_GetCharResultInfo(J)Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerResultInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDBVersion(Ljava/lang/String;)J
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;->VIHW_GetDBVersion(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getResult(I)Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;->engine:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;->VIHW_GetResult(JI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getResultCount()I
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;->engine:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;->VIHW_GetResultCount(J)I

    move-result v0

    return v0
.end method

.method public getResultList()[Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;->engine:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;->VIHW_GetResultList(J)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScoreList()[F
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;->engine:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;->VIHW_GetScoreList(J)[F

    move-result-object v0

    return-object v0
.end method

.method public init()J
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;->VIHW_Init()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;->engine:J

    return-wide v0
.end method

.method public isValidDB(Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;->VIHW_IsValidDB(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public recognize()I
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;->engine:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;->VIHW_Recognize(J)I

    move-result v0

    return v0
.end method

.method public release()V
    .locals 5

    iget-wide v0, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;->engine:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;->VIHW_Release(J)V

    :cond_0
    iput-wide v2, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;->engine:J

    return-void
.end method

.method public removeStroke(I)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;->engine:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;->VIHW_RemoveStroke(JI)V

    return-void
.end method

.method public setAsyncMode(Z)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;->engine:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;->VIHW_SetAsyncMode(JZ)V

    return-void
.end method

.method public setBaseline(II)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;->engine:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;->VIHW_SetBaseline(JII)V

    return-void
.end method

.method public setLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    iget-wide v1, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;->engine:J

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;->VIHW_SetLanguage(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public setLanguage([B[BLjava/lang/String;)I
    .locals 6

    iget-wide v1, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;->engine:J

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;->VIHW_SetLanguage(J[B[BLjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public setListener(Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl$TextRecognizerImplListener;)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;->engine:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;->VIHW_SetListener(JLcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl$TextRecognizerImplListener;)V

    return-void
.end method

.method public setRecogMode(Ljava/lang/String;)I
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;->engine:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;->VIHW_SetRecogMode(JLjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public setRecogType(Ljava/lang/String;)I
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;->engine:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;->VIHW_SetRecogType(JLjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public setStopAsync()V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;->engine:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;->VIHW_SetStopAsync(J)V

    return-void
.end method

.method public setStrokeMode(Z)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;->engine:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;->VIHW_SetStrokeMode(JZ)V

    return-void
.end method

.method public setUserDictionary([Ljava/lang/String;)I
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;->engine:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;->VIHW_SetUserDictionary(J[Ljava/lang/String;)I

    move-result p1

    return p1
.end method
