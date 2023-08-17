.class public Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$AttachOption;,
        Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$PageMode;,
        Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;
    }
.end annotation


# static fields
.field public static ANNOTATION_HIGHLIGHT:I = 0x0

.field public static ANNOTATION_STRIKEOUT:I = 0x2

.field public static ANNOTATION_UNDERLINE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SpenNotePdfManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfListener;

.field private mNativeHandle:J


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;->mNativeHandle:J

    iput-object p1, p0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private static native Native_attachFile(JLjava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)I
.end method

.method private static native Native_cancelAttachFile(J)V
.end method

.method private static native Native_clearSelection(J)V
.end method

.method private static native Native_copyFile(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private static native Native_finalize(J)V
.end method

.method private static native Native_getPageCount(JLjava/lang/String;Ljava/lang/String;)I
.end method

.method private static native Native_getPageMode(JLjava/lang/String;Ljava/lang/String;)I
.end method

.method private static native Native_getSelectedImage(JLandroid/graphics/Bitmap;)Z
.end method

.method private static native Native_getSelectedImageRect(J)Landroid/graphics/RectF;
.end method

.method private static native Native_getSelectedText(J)Ljava/lang/String;
.end method

.method private static native Native_getText(J)Ljava/lang/String;
.end method

.method private static native Native_hasAnnotationPermission(J)Z
.end method

.method private static native Native_hasContentsCopyPermission(J)Z
.end method

.method private static native Native_hasOwnerPermission(JLjava/lang/String;Ljava/lang/String;)I
.end method

.method private static native Native_hasPassword(JLjava/lang/String;)Z
.end method

.method private static native Native_hasSelectedAnnotation(J)Z
.end method

.method private static native Native_hasSelectedImage(J)Z
.end method

.method private static native Native_hasSelectedText(J)Z
.end method

.method private static native Native_init(JLcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;)V
.end method

.method private static native Native_removeSelectedAnnotation(J)Z
.end method

.method private static native Native_setAnnotation(JI)Z
.end method

.method private static native Native_setColorAnnotation(JII)Z
.end method

.method private static native Native_verifyPassword(JLjava/lang/String;Ljava/lang/String;)I
.end method

.method private onCompleted()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;->mListener:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfListener;->onCompleted()V

    :cond_0
    return-void
.end method

.method private onProgressChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;->mListener:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfListener;->onProgressChanged(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public attachFile(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$AttachOption;)Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;
    .locals 8

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    sget-object p1, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;->RESULT_TYPE_ERROR_UNKNOWN:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;

    return-object p1

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/4 v7, 0x0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;->Native_attachFile(JLjava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)I

    move-result p1

    invoke-static {}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;->values()[Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;

    move-result-object p2

    aget-object p1, p2, p1

    return-object p1
.end method

.method public attachFile(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$AttachOption;Z)Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;
    .locals 8

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    sget-object p1, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;->RESULT_TYPE_ERROR_UNKNOWN:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;

    return-object p1

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;->Native_attachFile(JLjava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)I

    move-result p1

    invoke-static {}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;->values()[Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;

    move-result-object p2

    aget-object p1, p2, p1

    return-object p1
.end method

.method public attachFile(ILjava/lang/String;Ljava/lang/String;ZZ)Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long p4, v0, v2

    if-nez p4, :cond_0

    sget-object p1, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;->RESULT_TYPE_ERROR_UNKNOWN:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;

    return-object p1

    :cond_0
    sget-object p4, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$AttachOption;->NONE:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$AttachOption;

    if-eqz p5, :cond_1

    sget-object p4, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$AttachOption;->APPLY_TEMPLATE:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$AttachOption;

    :cond_1
    iget-object p5, p0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;->mContext:Landroid/content/Context;

    invoke-virtual {p5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p5

    invoke-virtual {p5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/4 v7, 0x0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;->Native_attachFile(JLjava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)I

    move-result p1

    invoke-static {}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;->values()[Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;

    move-result-object p2

    aget-object p1, p2, p1

    return-object p1
.end method

.method public cancelAttachFile()V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;->Native_cancelAttachFile(J)V

    return-void
.end method

.method public clearSelection()V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;->Native_clearSelection(J)V

    :cond_0
    return-void
.end method

.method public close()V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;->mNativeHandle:J

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;->Native_finalize(J)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;->mNativeHandle:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public copyFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1, p1, p2, p3}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;->Native_copyFile(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getPageCount(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-static {v0, v1, p1, p2}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;->Native_getPageCount(JLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getPageMode(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$PageMode;
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    sget-object p1, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$PageMode;->PAGE_MODE_NONE:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$PageMode;

    return-object p1

    :cond_0
    invoke-static {v0, v1, p1, p2}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;->Native_getPageMode(JLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$PageMode;->values()[Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$PageMode;

    move-result-object p2

    aget-object p1, p2, p1

    return-object p1
.end method

.method public getSelectedImage(Landroid/graphics/Bitmap;)Z
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;->Native_getSelectedImage(JLandroid/graphics/Bitmap;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getSelectedImageRect()Landroid/graphics/RectF;
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;->Native_getSelectedImageRect(J)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedText()Ljava/lang/String;
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;->Native_getSelectedText(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;->Native_getText(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasAnnotationPermission()Z
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;->Native_hasAnnotationPermission(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasContentsCopyPermission()Z
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;->Native_hasContentsCopyPermission(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasOwnerPermission(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    sget-object p1, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;->RESULT_TYPE_ERROR_UNKNOWN:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;

    return-object p1

    :cond_0
    invoke-static {v0, v1, p1, p2}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;->Native_hasOwnerPermission(JLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;->values()[Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;

    move-result-object p2

    aget-object p1, p2, p1

    return-object p1
.end method

.method public hasPassword(Ljava/lang/String;)Z
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;->Native_hasPassword(JLjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hasSelectedAnnotation()Z
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;->Native_hasSelectedAnnotation(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSelectedImage()Z
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;->Native_hasSelectedImage(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSelectedText()Z
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;->Native_hasSelectedText(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public removeSelectedAnnotation()Z
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;->Native_removeSelectedAnnotation(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setAnnotation(I)Z
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;->Native_setAnnotation(JI)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setAnnotation(II)Z
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1, p1, p2}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;->Native_setColorAnnotation(JII)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setListener(Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;->mListener:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfListener;

    return-void
.end method

.method public setNativeHandle(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;->mNativeHandle:J

    invoke-static {p1, p2, p0}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;->Native_init(JLcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;)V

    return-void
.end method

.method public verifyPassword(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    sget-object p1, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;->RESULT_TYPE_ERROR_UNKNOWN:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;

    return-object p1

    :cond_0
    invoke-static {v0, v1, p1, p2}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;->Native_verifyPassword(JLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;->values()[Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;

    move-result-object p2

    aget-object p1, p2, p1

    return-object p1
.end method
