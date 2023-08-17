.class public Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mHandle:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;->NoteOpFileData_construct()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;->mHandle:J

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;->mHandle:J

    return-void
.end method

.method private native NoteOpFileData_construct()J
.end method

.method private native NoteOpFileData_finalize(J)V
.end method

.method private native NoteOpFileData_getBinaryData(J)[B
.end method

.method private native NoteOpFileData_getBinarySize(J)J
.end method

.method private native NoteOpFileData_getFilePath(J)Ljava/lang/String;
.end method

.method private native NoteOpFileData_getHash(J)Ljava/lang/String;
.end method

.method private native NoteOpFileData_getId(J)Ljava/lang/String;
.end method

.method private native NoteOpFileData_getMimeType(J)Ljava/lang/String;
.end method

.method private native NoteOpFileData_getModifiedTime(J)Ljava/lang/String;
.end method

.method private native NoteOpFileData_getXmlIndex(J)I
.end method

.method private native NoteOpFileData_loadCoeditCache(JLjava/lang/String;)V
.end method

.method private native NoteOpFileData_saveCoeditCache(JLjava/lang/String;)V
.end method

.method private native NoteOpFileData_setBinaryData(J[B)V
.end method

.method private native NoteOpFileData_setBinarySize(JJ)V
.end method

.method private native NoteOpFileData_setFilePath(JLjava/lang/String;)V
.end method

.method private native NoteOpFileData_setHash(JLjava/lang/String;)V
.end method

.method private native NoteOpFileData_setId(JLjava/lang/String;)V
.end method

.method private native NoteOpFileData_setMimeType(JLjava/lang/String;)V
.end method

.method private native NoteOpFileData_setModifiedTime(JLjava/lang/String;)V
.end method

.method private native NoteOpFileData_setXmlIndex(JI)V
.end method


# virtual methods
.method public finalize()V
    .locals 5

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;->NoteOpFileData_finalize(J)V

    iput-wide v2, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;->mHandle:J

    return-void
.end method

.method public getBinaryData()[B
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;->mHandle:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;->NoteOpFileData_getBinaryData(J)[B

    move-result-object v0

    return-object v0
.end method

.method public getBinarySize()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;->mHandle:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;->NoteOpFileData_getBinarySize(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;->mHandle:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;->NoteOpFileData_getFilePath(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHandle()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;->mHandle:J

    return-wide v0
.end method

.method public getHash()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;->mHandle:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;->NoteOpFileData_getHash(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;->mHandle:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;->NoteOpFileData_getId(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;->mHandle:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;->NoteOpFileData_getMimeType(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModifiedTime()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;->mHandle:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;->NoteOpFileData_getModifiedTime(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getXmlIndex()I
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;->mHandle:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;->NoteOpFileData_getXmlIndex(J)I

    move-result v0

    return v0
.end method

.method public loadCoeditCache(Ljava/lang/String;)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;->mHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;->NoteOpFileData_loadCoeditCache(JLjava/lang/String;)V

    return-void
.end method

.method public saveCoeditCache(Ljava/lang/String;)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;->mHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;->NoteOpFileData_saveCoeditCache(JLjava/lang/String;)V

    return-void
.end method

.method public setBinaryData([B)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;->mHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;->NoteOpFileData_setBinaryData(J[B)V

    return-void
.end method

.method public setBinarySize(J)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;->mHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;->NoteOpFileData_setBinarySize(JJ)V

    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;->mHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;->NoteOpFileData_setFilePath(JLjava/lang/String;)V

    return-void
.end method

.method public setHash(Ljava/lang/String;)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;->mHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;->NoteOpFileData_setHash(JLjava/lang/String;)V

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;->mHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;->NoteOpFileData_setId(JLjava/lang/String;)V

    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;->mHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;->NoteOpFileData_setMimeType(JLjava/lang/String;)V

    return-void
.end method

.method public setModifiedTime(Ljava/lang/String;)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;->mHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;->NoteOpFileData_setModifiedTime(JLjava/lang/String;)V

    return-void
.end method

.method public setXmlIndex(I)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;->mHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;->NoteOpFileData_setXmlIndex(JI)V

    return-void
.end method
