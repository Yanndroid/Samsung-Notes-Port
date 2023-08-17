.class public Lcom/samsung/android/sdk/pen/engine/writingview/document/SpenWritingPageDocDocument;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/engine/writingview/document/SpenWritingDocument;


# instance fields
.field private mHandle:J

.field private mPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/document/SpenPageDoc;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/engine/writingview/document/SpenWritingPageDocDocument;->Native_init(Lcom/samsung/android/sdk/pen/document/SpenPageDoc;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/document/SpenWritingPageDocDocument;->mHandle:J

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/writingview/document/SpenWritingPageDocDocument;->mPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    return-void
.end method

.method private static native Native_finalize(J)V
.end method

.method private static native Native_init(Lcom/samsung/android/sdk/pen/document/SpenPageDoc;)J
.end method


# virtual methods
.method public close()V
    .locals 5

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/document/SpenWritingPageDocDocument;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/engine/writingview/document/SpenWritingPageDocDocument;->Native_finalize(J)V

    :cond_0
    iput-wide v2, p0, Lcom/samsung/android/sdk/pen/engine/writingview/document/SpenWritingPageDocDocument;->mHandle:J

    return-void
.end method

.method public getHandle()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/document/SpenWritingPageDocDocument;->mHandle:J

    return-wide v0
.end method

.method public getHeight()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/document/SpenWritingPageDocDocument;->mPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getWidth()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/document/SpenWritingPageDocDocument;->mPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isValid()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/document/SpenWritingPageDocDocument;->mPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->isValid()Z

    move-result v0

    return v0
.end method
