.class public Lcom/samsung/android/support/senl/document/memoconverter/SPDConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SPDConverter"


# instance fields
.field private mSNoteConverter:Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/SPDConverter;->mSNoteConverter:Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;

    new-instance v0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/SPDConverter;->mSNoteConverter:Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;

    const-string p1, "SPDConverter"

    const-string v0, "SPDConverter()"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public convertToSDoc(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/SPDConverter;->mSNoteConverter:Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->convertSPDToSDoc(Ljava/lang/String;ILjava/lang/String;Landroid/util/ArrayMap;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public convertToSDoc(Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/SPDConverter;->mSNoteConverter:Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->convertSPDToSDoc(Ljava/lang/String;ILjava/lang/String;Landroid/util/ArrayMap;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public convertToSDocFile(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/SPDConverter;->mSNoteConverter:Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->convertSPDToSDocFile(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getLastModifiedTime(Ljava/lang/String;)J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/SPDConverter;->mSNoteConverter:Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->getLastModifiedTime(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public isAlreadyConverted(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/SPDConverter;->mSNoteConverter:Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->isAlreadyConverted(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isLocked(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/SPDConverter;->mSNoteConverter:Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->isSPDLocked(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isRightPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/SPDConverter;->mSNoteConverter:Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->isRightSPDPassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setFinishListener(Lcom/samsung/android/support/senl/document/memoconverter/FinishListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/SPDConverter;->mSNoteConverter:Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->setFinishListener(Lcom/samsung/android/support/senl/document/memoconverter/FinishListener;)V

    return-void
.end method

.method public setKMemoProgressListener(Lcom/samsung/android/support/senl/document/memoconverter/ProgressListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/SPDConverter;->mSNoteConverter:Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->setKMemoProgressListener(Lcom/samsung/android/support/senl/document/memoconverter/ProgressListener;)V

    return-void
.end method

.method public setMaxPageCountForSDoc(I)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/SPDConverter;->mSNoteConverter:Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->setMaxPageCountForSDoc(I)Z

    move-result p1

    return p1
.end method

.method public unlockSPD(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/SPDConverter;->mSNoteConverter:Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->unlockSPD(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
