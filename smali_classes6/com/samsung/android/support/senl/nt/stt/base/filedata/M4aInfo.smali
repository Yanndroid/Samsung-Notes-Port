.class Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "M4aInfo"


# instance fields
.field private final mAtomMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/stt/base/filedata/AtomProperties;",
            ">;"
        }
    .end annotation
.end field

.field private mFileMoovLength:I

.field private mFileUdtaLength:I

.field private mMoovPos:J

.field private mPath:Ljava/lang/String;

.field private mUdtaPos:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aInfo;->mFileMoovLength:I

    iput v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aInfo;->mFileUdtaLength:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aInfo;->mMoovPos:J

    iput-wide v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aInfo;->mUdtaPos:J

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aInfo;->mPath:Ljava/lang/String;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aInfo;->mAtomMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public getAtomLength(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aInfo;->mAtomMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/stt/base/filedata/AtomProperties;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/stt/base/filedata/AtomProperties;->getLength()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getAtomPosition(Ljava/lang/String;)J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aInfo;->mAtomMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/stt/base/filedata/AtomProperties;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/stt/base/filedata/AtomProperties;->getPosition()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFileMoovLength()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aInfo;->mFileMoovLength:I

    return v0
.end method

.method public getFileUdtaLength()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aInfo;->mFileUdtaLength:I

    return v0
.end method

.method public getMoovPos()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aInfo;->mMoovPos:J

    return-wide v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aInfo;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getUdtaPos()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aInfo;->mUdtaPos:J

    return-wide v0
.end method

.method public hasAtom(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aInfo;->mAtomMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public putAtom(Ljava/lang/String;IJ)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aInfo;->mAtomMap:Ljava/util/HashMap;

    new-instance v1, Lcom/samsung/android/support/senl/nt/stt/base/filedata/AtomProperties;

    invoke-direct {v1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/stt/base/filedata/AtomProperties;-><init>(IJ)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setFileMoovLength(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aInfo;->mFileMoovLength:I

    return-void
.end method

.method public setFileUdtaLength(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aInfo;->mFileUdtaLength:I

    return-void
.end method

.method public setMoovPos(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aInfo;->mMoovPos:J

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aInfo;->mPath:Ljava/lang/String;

    return-void
.end method

.method public setUdtaPos(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aInfo;->mUdtaPos:J

    return-void
.end method
