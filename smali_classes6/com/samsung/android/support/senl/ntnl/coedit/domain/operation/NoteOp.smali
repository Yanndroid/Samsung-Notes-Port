.class public Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private fileData:Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;

.field private mHandle:J

.field private replaceAttributes:Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpReplaceAttributes;

.field private setAnnotations:Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpSetAnnotations;

.field private updateAttributes:Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpUpdateAttributes;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->NoteOp_construct()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->mHandle:J

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->mHandle:J

    return-void
.end method

.method private native NoteOp_addAllDeleteElements(JI[J)V
.end method

.method private native NoteOp_addAllInsertElements(JI[J)V
.end method

.method private native NoteOp_construct()J
.end method

.method private native NoteOp_finalize(J)V
.end method

.method private native NoteOp_getBinaryHash(J)Ljava/lang/String;
.end method

.method private native NoteOp_getBinaryMimeType(J)Ljava/lang/String;
.end method

.method private native NoteOp_getBinarySize(J)J
.end method

.method private native NoteOp_getDeleteCharacters(J)Ljava/lang/String;
.end method

.method private native NoteOp_getDeleteElementName(JI)Ljava/lang/String;
.end method

.method private native NoteOp_getDeleteElements(J)[J
.end method

.method private native NoteOp_getDeleteElementsSize(J)I
.end method

.method private native NoteOp_getDeleteObjectSpan(J)Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method private native NoteOp_getFileData(J)J
.end method

.method private native NoteOp_getId(J)J
.end method

.method private native NoteOp_getInsertCharacters(J)Ljava/lang/String;
.end method

.method private native NoteOp_getInsertElementName(JI)Ljava/lang/String;
.end method

.method private native NoteOp_getInsertElements(J)[J
.end method

.method private native NoteOp_getInsertElementsSize(J)I
.end method

.method private native NoteOp_getInsertObjectSpan(J)Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method private native NoteOp_getObjectId(J)Ljava/lang/String;
.end method

.method private native NoteOp_getPos(J)I
.end method

.method private native NoteOp_getReplaceAttributes(J)J
.end method

.method private native NoteOp_getSetAnnotations(J)J
.end method

.method private native NoteOp_getSize(J)I
.end method

.method private native NoteOp_getType(J)I
.end method

.method private native NoteOp_getUpdateAttributes(J)J
.end method

.method private native NoteOp_getXmlData(J)Ljava/lang/String;
.end method

.method private native NoteOp_isDeleteElementEnd(JI)Z
.end method

.method private native NoteOp_isInsertElementEnd(JI)Z
.end method

.method private native NoteOp_isTransformed(J)Z
.end method

.method private native NoteOp_removeDeleteElement(JI)V
.end method

.method private native NoteOp_removeInsertElement(JI)V
.end method

.method private native NoteOp_setBinaryHash(JLjava/lang/String;)V
.end method

.method private native NoteOp_setBinaryMimeType(JLjava/lang/String;)V
.end method

.method private native NoteOp_setBinarySize(JJ)V
.end method

.method private native NoteOp_setDeleteCharacters(JLjava/lang/String;)V
.end method

.method private native NoteOp_setDeleteElementEnd(JIZ)V
.end method

.method private native NoteOp_setDeleteElements(J[J)V
.end method

.method private native NoteOp_setDeleteObjectSpan(JLandroid/util/Pair;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method private native NoteOp_setFileData(JJ)V
.end method

.method private native NoteOp_setFileDataXmlIndex(JI)V
.end method

.method private native NoteOp_setId(JJ)V
.end method

.method private native NoteOp_setInsertCharacters(JLjava/lang/String;)V
.end method

.method private native NoteOp_setInsertElementEnd(JIZ)V
.end method

.method private native NoteOp_setInsertElements(J[J)V
.end method

.method private native NoteOp_setInsertObjectSpan(JLandroid/util/Pair;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method private native NoteOp_setObjectId(JLjava/lang/String;)V
.end method

.method private native NoteOp_setPos(JI)V
.end method

.method private native NoteOp_setReplaceAttributes(JJ)V
.end method

.method private native NoteOp_setSetAnnotations(JJ)V
.end method

.method private native NoteOp_setSize(JI)V
.end method

.method private native NoteOp_setTransformed(JZ)V
.end method

.method private native NoteOp_setType(JI)V
.end method

.method private native NoteOp_setUpdateAttributes(JJ)V
.end method

.method private native NoteOp_setXmlData(JLjava/lang/String;)V
.end method


# virtual methods
.method public addAllDeleteElements(ILjava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/ntnl/coedit/common/raw/Element;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [J

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/senl/ntnl/coedit/common/raw/Element;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/ntnl/coedit/common/raw/Element;->getHandle()J

    move-result-wide v3

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->mHandle:J

    invoke-direct {p0, v2, v3, p1, v1}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->NoteOp_addAllDeleteElements(JI[J)V

    return-void
.end method

.method public addAllInsertElements(ILjava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/ntnl/coedit/common/raw/Element;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [J

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/senl/ntnl/coedit/common/raw/Element;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/ntnl/coedit/common/raw/Element;->getHandle()J

    move-result-wide v3

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->mHandle:J

    invoke-direct {p0, v2, v3, p1, v1}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->NoteOp_addAllInsertElements(JI[J)V

    return-void
.end method

.method public finalize()V
    .locals 5

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->NoteOp_finalize(J)V

    iput-wide v2, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->mHandle:J

    return-void
.end method

.method public getBinaryHash()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->mHandle:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->NoteOp_getBinaryHash(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBinaryMimeType()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->mHandle:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->NoteOp_getBinaryMimeType(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBinarySize()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->mHandle:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->NoteOp_getBinarySize(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDeleteCharacters()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->mHandle:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->NoteOp_getDeleteCharacters(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeleteElementName(I)Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->mHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->NoteOp_getDeleteElementName(JI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDeleteElements()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/ntnl/coedit/common/raw/Element;",
            ">;"
        }
    .end annotation

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->mHandle:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->NoteOp_getDeleteElements(J)[J

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-wide v4, v0, v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/support/senl/ntnl/coedit/common/raw/Element;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Lcom/samsung/android/support/senl/ntnl/coedit/common/raw/Element;-><init>(J)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getDeleteElementsSize()I
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->mHandle:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->NoteOp_getDeleteElementsSize(J)I

    move-result v0

    return v0
.end method

.method public getDeleteObjectSpan()Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->mHandle:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->NoteOp_getDeleteObjectSpan(J)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public getFileData()Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->fileData:Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->mHandle:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->NoteOp_getFileData(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v2, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;

    invoke-direct {v2, v0, v1}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;-><init>(J)V

    iput-object v2, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->fileData:Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->fileData:Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;

    return-object v0
.end method

.method public getHandle()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->mHandle:J

    return-wide v0
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->mHandle:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->NoteOp_getId(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getInsertCharacters()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->mHandle:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->NoteOp_getInsertCharacters(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInsertElementName(I)Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->mHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->NoteOp_getInsertElementName(JI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getInsertElements()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/ntnl/coedit/common/raw/Element;",
            ">;"
        }
    .end annotation

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->mHandle:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->NoteOp_getInsertElements(J)[J

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-wide v4, v0, v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/support/senl/ntnl/coedit/common/raw/Element;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Lcom/samsung/android/support/senl/ntnl/coedit/common/raw/Element;-><init>(J)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getInsertElementsSize()I
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->mHandle:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->NoteOp_getInsertElementsSize(J)I

    move-result v0

    return v0
.end method

.method public getInsertObjectSpan()Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->mHandle:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->NoteOp_getInsertObjectSpan(J)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public getObjectId()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->mHandle:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->NoteOp_getObjectId(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPos()I
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->mHandle:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->NoteOp_getPos(J)I

    move-result v0

    return v0
.end method

.method public getReplaceAttributes()Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpReplaceAttributes;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->replaceAttributes:Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpReplaceAttributes;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpReplaceAttributes;

    iget-wide v1, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->mHandle:J

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->NoteOp_getReplaceAttributes(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpReplaceAttributes;-><init>(J)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->replaceAttributes:Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpReplaceAttributes;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->replaceAttributes:Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpReplaceAttributes;

    return-object v0
.end method

.method public getSetAnnotations()Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpSetAnnotations;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->setAnnotations:Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpSetAnnotations;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpSetAnnotations;

    iget-wide v1, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->mHandle:J

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->NoteOp_getSetAnnotations(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpSetAnnotations;-><init>(J)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->setAnnotations:Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpSetAnnotations;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->setAnnotations:Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpSetAnnotations;

    return-object v0
.end method

.method public getSize()I
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->mHandle:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->NoteOp_getSize(J)I

    move-result v0

    return v0
.end method

.method public getType()I
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->mHandle:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->NoteOp_getType(J)I

    move-result v0

    return v0
.end method

.method public getUpdateAttributes()Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpUpdateAttributes;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->updateAttributes:Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpUpdateAttributes;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpUpdateAttributes;

    iget-wide v1, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->mHandle:J

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->NoteOp_getUpdateAttributes(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpUpdateAttributes;-><init>(J)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->updateAttributes:Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpUpdateAttributes;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->updateAttributes:Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpUpdateAttributes;

    return-object v0
.end method

.method public getXmlData()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->mHandle:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->NoteOp_getXmlData(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isDeleteElementEnd(I)Z
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->mHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->NoteOp_isDeleteElementEnd(JI)Z

    move-result p1

    return p1
.end method

.method public isInsertElementEnd(I)Z
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->mHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->NoteOp_isInsertElementEnd(JI)Z

    move-result p1

    return p1
.end method

.method public isTransformed()Z
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->mHandle:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->NoteOp_isTransformed(J)Z

    move-result v0

    return v0
.end method

.method public removeDeleteElement(I)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->mHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->NoteOp_removeDeleteElement(JI)V

    return-void
.end method

.method public removeInsertElement(I)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->mHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->NoteOp_removeInsertElement(JI)V

    return-void
.end method

.method public setBinaryHash(Ljava/lang/String;)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->mHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->NoteOp_setBinaryHash(JLjava/lang/String;)V

    return-void
.end method

.method public setBinaryMimeType(Ljava/lang/String;)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->mHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->NoteOp_setBinaryMimeType(JLjava/lang/String;)V

    return-void
.end method

.method public setBinarySize(J)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->mHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->NoteOp_setBinarySize(JJ)V

    return-void
.end method

.method public setDeleteCharacters(Ljava/lang/String;)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->mHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->NoteOp_setDeleteCharacters(JLjava/lang/String;)V

    return-void
.end method

.method public setDeleteElementEnd(IZ)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->mHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->NoteOp_setDeleteElementEnd(JIZ)V

    return-void
.end method

.method public setDeleteElements(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/ntnl/coedit/common/raw/Element;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [J

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/senl/ntnl/coedit/common/raw/Element;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/ntnl/coedit/common/raw/Element;->getHandle()J

    move-result-wide v3

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->mHandle:J

    invoke-direct {p0, v2, v3, v1}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->NoteOp_setDeleteElements(J[J)V

    return-void
.end method

.method public setDeleteObjectSpan(Landroid/util/Pair;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->mHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->NoteOp_setDeleteObjectSpan(JLandroid/util/Pair;)V

    return-void
.end method

.method public setFileData(Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->fileData:Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->mHandle:J

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;->getHandle()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->NoteOp_setFileData(JJ)V

    return-void
.end method

.method public setFileDataXmlIndex(I)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->mHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->NoteOp_setFileDataXmlIndex(JI)V

    return-void
.end method

.method public setId(J)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->mHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->NoteOp_setId(JJ)V

    return-void
.end method

.method public setInsertCharacters(Ljava/lang/String;)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->mHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->NoteOp_setInsertCharacters(JLjava/lang/String;)V

    return-void
.end method

.method public setInsertElementEnd(IZ)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->mHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->NoteOp_setInsertElementEnd(JIZ)V

    return-void
.end method

.method public setInsertElements(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/ntnl/coedit/common/raw/Element;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [J

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/senl/ntnl/coedit/common/raw/Element;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/ntnl/coedit/common/raw/Element;->getHandle()J

    move-result-wide v3

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->mHandle:J

    invoke-direct {p0, v2, v3, v1}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->NoteOp_setInsertElements(J[J)V

    return-void
.end method

.method public setInsertObjectSpan(Landroid/util/Pair;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->mHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->NoteOp_setInsertObjectSpan(JLandroid/util/Pair;)V

    return-void
.end method

.method public setObjectId(Ljava/lang/String;)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->mHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->NoteOp_setObjectId(JLjava/lang/String;)V

    return-void
.end method

.method public setPos(I)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->mHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->NoteOp_setPos(JI)V

    return-void
.end method

.method public setReplaceAttributes(Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpReplaceAttributes;)V
    .locals 4

    iput-object p1, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->replaceAttributes:Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpReplaceAttributes;

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->mHandle:J

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpAttributes;->getHandle()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->NoteOp_setReplaceAttributes(JJ)V

    return-void
.end method

.method public setSetAnnotations(Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpSetAnnotations;)V
    .locals 4

    iput-object p1, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->setAnnotations:Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpSetAnnotations;

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->mHandle:J

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpSetAnnotations;->getHandle()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->NoteOp_setSetAnnotations(JJ)V

    return-void
.end method

.method public setSize(I)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->mHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->NoteOp_setSize(JI)V

    return-void
.end method

.method public setTransformed(Z)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->mHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->NoteOp_setTransformed(JZ)V

    return-void
.end method

.method public setType(I)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->mHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->NoteOp_setType(JI)V

    return-void
.end method

.method public setUpdateAttributes(Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpUpdateAttributes;)V
    .locals 4

    iput-object p1, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->updateAttributes:Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpUpdateAttributes;

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->mHandle:J

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpAttributes;->getHandle()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->NoteOp_setUpdateAttributes(JJ)V

    return-void
.end method

.method public setXmlData(Ljava/lang/String;)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->mHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->NoteOp_setXmlData(JLjava/lang/String;)V

    return-void
.end method
