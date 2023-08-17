.class public Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfExport;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static PDF_EXPORT_TYPE_RASTER:I = 0x0

.field public static PDF_EXPORT_TYPE_VECTOR:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SpenPdfExport"


# instance fields
.field private mConfiguration:Lcom/samsung/android/sdk/pen/view/SpenConfiguration;

.field private mDisplay:Lcom/samsung/android/sdk/pen/view/SpenDisplay;

.field private mNativeHandle:J


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    sget v0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfExport;->PDF_EXPORT_TYPE_RASTER:I

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfExport;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfExport;->mDisplay:Lcom/samsung/android/sdk/pen/view/SpenDisplay;

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfExport;->mConfiguration:Lcom/samsung/android/sdk/pen/view/SpenConfiguration;

    new-instance v0, Lcom/samsung/android/sdk/pen/view/SpenDisplay;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/pen/view/SpenDisplay;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfExport;->mDisplay:Lcom/samsung/android/sdk/pen/view/SpenDisplay;

    new-instance v0, Lcom/samsung/android/sdk/pen/view/SpenConfiguration;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/pen/view/SpenConfiguration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfExport;->mConfiguration:Lcom/samsung/android/sdk/pen/view/SpenConfiguration;

    iget-object v1, p0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfExport;->mDisplay:Lcom/samsung/android/sdk/pen/view/SpenDisplay;

    iget-wide v1, v1, Lcom/samsung/android/sdk/pen/view/SpenDisplay;->handle:J

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/view/SpenConfiguration;->getNativeHandle()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4, p2}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfExport;->Native_init(JJI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfExport;->mNativeHandle:J

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/engine/resource/SpenResources;->setResources(Landroid/content/res/Resources;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "SpenPdfExport : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SpenPdfExport"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static native Native_cancelExportFile(J)V
.end method

.method private static native Native_exportFile(JILjava/lang/String;)I
.end method

.method private static native Native_exportFileWithCreationDate(JILjava/lang/String;Ljava/lang/String;)I
.end method

.method private static native Native_finalize(J)V
.end method

.method private static native Native_init(JJI)J
.end method

.method private static native Native_setDocument(JJ)Z
.end method

.method private static native Native_setTransparentBackgroundColor(JI)Z
.end method


# virtual methods
.method public cancelExportFile()V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfExport;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfExport;->Native_cancelExportFile(J)V

    return-void
.end method

.method public close()V
    .locals 5

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfExport;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfExport;->Native_finalize(J)V

    iput-wide v2, p0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfExport;->mNativeHandle:J

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfExport;->mConfiguration:Lcom/samsung/android/sdk/pen/view/SpenConfiguration;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/view/SpenConfiguration;->close()V

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfExport;->mDisplay:Lcom/samsung/android/sdk/pen/view/SpenDisplay;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/view/SpenDisplay;->close()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpenPdfExport close: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenPdfExport"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public exportFile(ILjava/lang/String;)Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfExport;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    sget-object p1, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;->RESULT_TYPE_ERROR_UNKNOWN:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;

    return-object p1

    :cond_0
    invoke-static {v0, v1, p1, p2}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfExport;->Native_exportFile(JILjava/lang/String;)I

    move-result p1

    invoke-static {}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;->values()[Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;

    move-result-object p2

    aget-object p1, p2, p1

    return-object p1
.end method

.method public exportFile(ILjava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfExport;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    sget-object p1, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;->RESULT_TYPE_ERROR_UNKNOWN:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;

    return-object p1

    :cond_0
    invoke-static {v0, v1, p1, p2, p3}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfExport;->Native_exportFileWithCreationDate(JILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;->values()[Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;

    move-result-object p2

    aget-object p1, p2, p1

    return-object p1
.end method

.method public setDocument(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfExport;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getHandle()I

    move-result p1

    int-to-long v2, p1

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfExport;->Native_setDocument(JJ)Z

    return-void
.end method

.method public setTransparentBackgroundColor(I)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfExport;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfExport;->Native_setTransparentBackgroundColor(JI)Z

    return-void
.end method
