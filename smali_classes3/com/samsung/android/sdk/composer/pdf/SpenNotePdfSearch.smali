.class public Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfSearch;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenNotePdfSearch"


# instance fields
.field private mNativeHandle:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfSearch;->Native_init()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfSearch;->mNativeHandle:J

    return-void
.end method

.method private static native Native_finalize(J)V
.end method

.method private static native Native_getPageText(JLcom/samsung/android/sdk/pen/worddoc/SpenWPage;)Ljava/lang/String;
.end method

.method private static native Native_getText(J)Ljava/lang/String;
.end method

.method private static native Native_init()J
.end method

.method private static native Native_setDocument(JJ)Z
.end method


# virtual methods
.method public close()V
    .locals 5

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfSearch;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfSearch;->Native_finalize(J)V

    iput-wide v2, p0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfSearch;->mNativeHandle:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpenNotePdfSearch close: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenNotePdfSearch"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getPageText(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;)Ljava/lang/String;
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfSearch;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfSearch;->Native_getPageText(JLcom/samsung/android/sdk/pen/worddoc/SpenWPage;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getText()Ljava/lang/String;
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfSearch;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfSearch;->Native_getText(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setDocument(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfSearch;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getHandle()I

    move-result p1

    int-to-long v2, p1

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfSearch;->Native_setDocument(JJ)Z

    return-void
.end method
