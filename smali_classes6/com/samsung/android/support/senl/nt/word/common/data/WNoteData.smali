.class public Lcom/samsung/android/support/senl/nt/word/common/data/WNoteData;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_FONT_SIZE:I = 0xf


# instance fields
.field private final captureEngine:Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;

.field private final mContext:Landroid/content/Context;

.field private final mSpenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/word/common/data/WNoteData;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/word/common/data/WNoteData;->mSpenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    new-instance p2, Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;

    invoke-direct {p2, p1}, Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/word/common/data/WNoteData;->captureEngine:Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;

    return-void
.end method


# virtual methods
.method public getCaptureEngine()Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/common/data/WNoteData;->captureEngine:Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/common/data/WNoteData;->mSpenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getHeight()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getObjectsPage(I)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/common/data/WNoteData;->mSpenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/common/data/WNoteData;->mSpenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPage(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getObjectList()Ljava/util/ArrayList;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPage(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/common/data/WNoteData;->mSpenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/common/data/WNoteData;->mSpenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPage(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPageCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/common/data/WNoteData;->mSpenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageCount()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getSpenWNoteP()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/common/data/WNoteData;->mSpenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/common/data/WNoteData;->mSpenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getWidth()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasPdf(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->hasPDF()Z

    move-result p1

    return p1
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/common/data/WNoteData;->captureEngine:Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;->close()V

    return-void
.end method
