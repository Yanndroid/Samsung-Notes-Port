.class public Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocComposerUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenSDocComposerUtil"


# instance fields
.field private mHandle:J


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocComposerUtil;->mHandle:J

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocComposerUtil;->SDocComposerUtil_init(Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocComposerUtil;->mHandle:J

    cmp-long p1, v2, v0

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "doc can not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static native SDocComposerUtil_DivideTaskStyleByEnter(J)Z
.end method

.method private static native SDocComposerUtil_DivideTextContentByEnter(JII)Z
.end method

.method private static native SDocComposerUtil_PerformEnter(J)Z
.end method

.method private static native SDocComposerUtil_finalize(J)V
.end method

.method private static native SDocComposerUtil_init(Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;)J
.end method

.method private static native SDocComposerUtil_insertContentUnit(JLjava/util/ArrayList;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;",
            ">;)Z"
        }
    .end annotation
.end method

.method private static native SDocComposerUtil_insertContentUnitEnd(J)Z
.end method

.method private static native SDocComposerUtil_insertContentUnitNext(JLjava/util/ArrayList;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;",
            ">;)Z"
        }
    .end annotation
.end method

.method private static native SDocComposerUtil_insertContents(JLjava/util/ArrayList;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;",
            ">;)Z"
        }
    .end annotation
.end method

.method private static native SDocComposerUtil_removeContents(JIIII)Z
.end method

.method private static native SDocComposerUtil_setAlignment(JI)Z
.end method

.method private static native SDocComposerUtil_setBold(JZIIII)Z
.end method

.method private static native SDocComposerUtil_setFontSize(JFIIII)Z
.end method

.method private static native SDocComposerUtil_setItalic(JZIIII)Z
.end method

.method private static native SDocComposerUtil_setTaskStyle(JI)Z
.end method

.method private static native SDocComposerUtil_setTextBackgroundColor(JIIIII)Z
.end method

.method private static native SDocComposerUtil_setTextColor(JIIIII)Z
.end method

.method private static native SDocComposerUtil_setUnderline(JZIIII)Z
.end method

.method private throwUncheckedException(I)V
    .locals 2

    const/16 v0, 0x13

    if-eq p1, v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    return-void

    :cond_0
    new-instance p1, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpenSDoc("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") is already closed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public divideTaskStyleByEnter()V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocComposerUtil;->mHandle:J

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocComposerUtil;->SDocComposerUtil_DivideTaskStyleByEnter(J)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocComposerUtil;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public divideTextContentByEnter(II)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocComposerUtil;->mHandle:J

    invoke-static {v0, v1, p1, p2}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocComposerUtil;->SDocComposerUtil_DivideTextContentByEnter(JII)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocComposerUtil;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public finalize()V
    .locals 5

    const-wide/16 v0, 0x0

    :try_start_0
    iget-wide v2, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocComposerUtil;->mHandle:J

    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocComposerUtil;->SDocComposerUtil_finalize(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    iput-wide v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocComposerUtil;->mHandle:J

    return-void

    :catchall_0
    move-exception v2

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    iput-wide v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocComposerUtil;->mHandle:J

    throw v2
.end method

.method public insertContent(Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocComposerUtil;->insertContents(Ljava/util/ArrayList;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "content can not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public insertContentUnit(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocComposerUtil;->mHandle:J

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocComposerUtil;->SDocComposerUtil_insertContentUnit(JLjava/util/ArrayList;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocComposerUtil;->throwUncheckedException(I)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "content list can not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public insertContentUnitEnd()V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocComposerUtil;->mHandle:J

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocComposerUtil;->SDocComposerUtil_insertContentUnitEnd(J)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocComposerUtil;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public insertContentUnitNext(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocComposerUtil;->mHandle:J

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocComposerUtil;->SDocComposerUtil_insertContentUnitNext(JLjava/util/ArrayList;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocComposerUtil;->throwUncheckedException(I)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "content list can not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public insertContents(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocComposerUtil;->mHandle:J

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocComposerUtil;->SDocComposerUtil_insertContents(JLjava/util/ArrayList;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocComposerUtil;->throwUncheckedException(I)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "content list can not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public performEnter()V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocComposerUtil;->mHandle:J

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocComposerUtil;->SDocComposerUtil_PerformEnter(J)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocComposerUtil;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public removeContents(IIII)V
    .locals 6

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocComposerUtil;->mHandle:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocComposerUtil;->SDocComposerUtil_removeContents(JIIII)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocComposerUtil;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setAlignment(I)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocComposerUtil;->mHandle:J

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocComposerUtil;->SDocComposerUtil_setAlignment(JI)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocComposerUtil;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setBold(ZIIII)V
    .locals 7

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocComposerUtil;->mHandle:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocComposerUtil;->SDocComposerUtil_setBold(JZIIII)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocComposerUtil;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setFontSize(FIIII)V
    .locals 7

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocComposerUtil;->mHandle:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocComposerUtil;->SDocComposerUtil_setFontSize(JFIIII)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocComposerUtil;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setItalic(ZIIII)V
    .locals 7

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocComposerUtil;->mHandle:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocComposerUtil;->SDocComposerUtil_setItalic(JZIIII)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocComposerUtil;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setTaskStyle(I)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocComposerUtil;->mHandle:J

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocComposerUtil;->SDocComposerUtil_setTaskStyle(JI)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocComposerUtil;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setTextBackgroundColor(IIIII)V
    .locals 7

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocComposerUtil;->mHandle:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocComposerUtil;->SDocComposerUtil_setTextBackgroundColor(JIIIII)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocComposerUtil;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setTextColor(IIIII)V
    .locals 7

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocComposerUtil;->mHandle:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocComposerUtil;->SDocComposerUtil_setTextColor(JIIIII)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocComposerUtil;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setUnderline(ZIIII)V
    .locals 7

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocComposerUtil;->mHandle:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocComposerUtil;->SDocComposerUtil_setUnderline(JZIIII)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocComposerUtil;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method
