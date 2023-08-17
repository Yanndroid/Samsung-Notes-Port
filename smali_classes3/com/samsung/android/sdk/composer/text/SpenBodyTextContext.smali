.class public Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenBodyTextContext"


# instance fields
.field private mConfiguration:Lcom/samsung/android/sdk/pen/view/SpenConfiguration;

.field private mDisplay:Lcom/samsung/android/sdk/pen/view/SpenDisplay;

.field private mNativeHandle:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->mDisplay:Lcom/samsung/android/sdk/pen/view/SpenDisplay;

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->mConfiguration:Lcom/samsung/android/sdk/pen/view/SpenConfiguration;

    new-instance v0, Lcom/samsung/android/sdk/pen/view/SpenDisplay;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/pen/view/SpenDisplay;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->mDisplay:Lcom/samsung/android/sdk/pen/view/SpenDisplay;

    new-instance v0, Lcom/samsung/android/sdk/pen/view/SpenConfiguration;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/pen/view/SpenConfiguration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->mConfiguration:Lcom/samsung/android/sdk/pen/view/SpenConfiguration;

    iget-object v1, p0, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->mDisplay:Lcom/samsung/android/sdk/pen/view/SpenDisplay;

    iget-wide v1, v1, Lcom/samsung/android/sdk/pen/view/SpenDisplay;->handle:J

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/view/SpenConfiguration;->getNativeHandle()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->Native_init(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->mNativeHandle:J

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/engine/resource/SpenResources;->setResources(Landroid/content/res/Resources;)V

    return-void
.end method

.method private static native Native_cancel(J)V
.end method

.method private static native Native_finalize(J)V
.end method

.method private static native Native_getLineCount(J)I
.end method

.method private static native Native_getLineCountFromTextBottom(JFZ)I
.end method

.method private static native Native_getLineEndIndex(JI)I
.end method

.method private static native Native_getLinePosition(JI)Landroid/graphics/RectF;
.end method

.method private static native Native_getLineStartIndex(JI)I
.end method

.method private static native Native_getMeasuredFitRect(JI)Landroid/graphics/RectF;
.end method

.method private static native Native_getMeasuredHeight(J)I
.end method

.method private static native Native_getObjectDrawnRect(JLcom/samsung/android/sdk/pen/document/SpenObjectBase;)Landroid/graphics/RectF;
.end method

.method private static native Native_getObjectRect(JLcom/samsung/android/sdk/pen/document/SpenObjectBase;)Landroid/graphics/RectF;
.end method

.method private static native Native_init(JJ)J
.end method

.method private static native Native_insertBodyTextTo(JILcom/samsung/android/sdk/pen/document/SpenObjectBase;I)Z
.end method

.method private static native Native_insertEmptyBodyTextTo(JI)Z
.end method

.method private static native Native_lockBodyTextPage(J)Z
.end method

.method private static native Native_measureText(J)V
.end method

.method private static native Native_measureTextToPage(JI)V
.end method

.method private static native Native_setDocument(JLcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V
.end method

.method private static native Native_unlockBodyTextPage(J)V
.end method


# virtual methods
.method public cancel()V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->Native_cancel(J)V

    return-void
.end method

.method public close()V
    .locals 5

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->Native_finalize(J)V

    iput-wide v2, p0, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->mNativeHandle:J

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->mConfiguration:Lcom/samsung/android/sdk/pen/view/SpenConfiguration;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/view/SpenConfiguration;->close()V

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->mDisplay:Lcom/samsung/android/sdk/pen/view/SpenDisplay;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/view/SpenDisplay;->close()V

    return-void
.end method

.method public getLineCount()I
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->Native_getLineCount(J)I

    move-result v0

    return v0
.end method

.method public getLineCountFromTextBottom(FZ)I
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {v0, v1, p1, p2}, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->Native_getLineCountFromTextBottom(JFZ)I

    move-result p1

    return p1
.end method

.method public getLineEndIndex(I)I
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->Native_getLineEndIndex(JI)I

    move-result p1

    return p1
.end method

.method public getLinePosition(I)Landroid/graphics/RectF;
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    return-object p1

    :cond_0
    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->Native_getLinePosition(JI)Landroid/graphics/RectF;

    move-result-object p1

    return-object p1
.end method

.method public getLineStartIndex(I)I
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->Native_getLineStartIndex(JI)I

    move-result p1

    return p1
.end method

.method public getMeasuredFitRect(I)Landroid/graphics/RectF;
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    return-object p1

    :cond_0
    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->Native_getMeasuredFitRect(JI)Landroid/graphics/RectF;

    move-result-object p1

    return-object p1
.end method

.method public getMeasuredHeight()I
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->Native_getMeasuredHeight(J)I

    move-result v0

    return v0
.end method

.method public getObjectDrawnRect(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Landroid/graphics/RectF;
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    return-object p1

    :cond_0
    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->Native_getObjectDrawnRect(JLcom/samsung/android/sdk/pen/document/SpenObjectBase;)Landroid/graphics/RectF;

    move-result-object p1

    return-object p1
.end method

.method public getObjectRect(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Landroid/graphics/RectF;
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    return-object p1

    :cond_0
    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->Native_getObjectRect(JLcom/samsung/android/sdk/pen/document/SpenObjectBase;)Landroid/graphics/RectF;

    move-result-object p1

    return-object p1
.end method

.method public insertBodyTextTo(ILcom/samsung/android/sdk/pen/document/SpenObjectTextBox;I)Z
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {v0, v1, p1, p2, p3}, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->Native_insertBodyTextTo(JILcom/samsung/android/sdk/pen/document/SpenObjectBase;I)Z

    move-result p1

    return p1
.end method

.method public insertEmptyBodyTextTo(I)Z
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->Native_insertEmptyBodyTextTo(JI)Z

    move-result p1

    return p1
.end method

.method public lockBodyTextPage()Z
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->Native_lockBodyTextPage(J)Z

    move-result v0

    return v0
.end method

.method public measureText()V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->Native_measureText(J)V

    return-void
.end method

.method public measureTextToPage(I)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->Native_measureTextToPage(JI)V

    return-void
.end method

.method public setDocument(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->Native_setDocument(JLcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    return-void
.end method

.method public unlockBodyTextPage()V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->Native_unlockBodyTextPage(J)V

    return-void
.end method
