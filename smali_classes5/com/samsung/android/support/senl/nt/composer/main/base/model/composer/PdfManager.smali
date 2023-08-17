.class public Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager$SpenNotePdfListenerImpl;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager$AttachPdfStateListener;
    }
.end annotation


# static fields
.field public static ANNOTATION_HIGHLIGHT:I

.field public static ANNOTATION_STRIKEOUT:I

.field public static ANNOTATION_UNDERLINE:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAttachPdfStateListener:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager$AttachPdfStateListener;

.field private mCacheDirPath:Ljava/lang/String;

.field private mIsReadOnlyNoteData:Z

.field private mSpenNotePdfListenerImpl:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager$SpenNotePdfListenerImpl;

.field private mSpenPdfManager:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "PdfManager"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;->TAG:Ljava/lang/String;

    sget v0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;->ANNOTATION_HIGHLIGHT:I

    sput v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;->ANNOTATION_HIGHLIGHT:I

    sget v0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;->ANNOTATION_UNDERLINE:I

    sput v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;->ANNOTATION_UNDERLINE:I

    sget v0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;->ANNOTATION_STRIKEOUT:I

    sput v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;->ANNOTATION_STRIKEOUT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager$AttachPdfStateListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;->mAttachPdfStateListener:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager$AttachPdfStateListener;

    return-object p0
.end method


# virtual methods
.method public attach(ILjava/lang/String;Ljava/lang/String;Z)Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;
    .locals 7

    sget-object v0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$AttachOption;->NONE:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$AttachOption;

    if-eqz p4, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$AttachOption;->APPLY_TEMPLATE:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$AttachOption;

    :cond_0
    move-object v5, v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;->mSpenPdfManager:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;

    iget-boolean v6, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;->mIsReadOnlyNoteData:Z

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;->attachFile(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$AttachOption;Z)Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;

    move-result-object p1

    return-object p1
.end method

.method public cancelToAttach()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;->mSpenPdfManager:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;->cancelAttachFile()V

    return-void
.end method

.method public clearSelection()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;->mSpenPdfManager:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;->clearSelection()V

    return-void
.end method

.method public convertPageMode(Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$PageMode;)Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$PageMode;->PAGE_MODE_LIST:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$PageMode;

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;->LIST:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    return-object p1

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$PageMode;->PAGE_MODE_SINGLE:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$PageMode;

    if-ne p1, v0, :cond_1

    sget-object p1, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;->SINGLE:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCacheDirPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;->mCacheDirPath:Ljava/lang/String;

    return-object v0
.end method

.method public getPageCount(Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;->mSpenPdfManager:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;->getPageCount(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getPageMode(Ljava/lang/String;)Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$PageMode;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;->mSpenPdfManager:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;->getPageMode(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$PageMode;

    move-result-object p1

    return-object p1
.end method

.method public getSelectedImage(Landroid/graphics/Bitmap;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;->mSpenPdfManager:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;->getSelectedImage(Landroid/graphics/Bitmap;)Z

    move-result p1

    return p1
.end method

.method public getSelectedImageRect()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;->mSpenPdfManager:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;->getSelectedImageRect()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;->mSpenPdfManager:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;->getSelectedText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasAnnotationPermission()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;->mSpenPdfManager:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;->hasAnnotationPermission()Z

    move-result v0

    return v0
.end method

.method public hasOwnerPermission(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;->mSpenPdfManager:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;->hasOwnerPermission(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;->RESULT_TYPE_ERROR_PROTECTED:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hasPassword(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;->mSpenPdfManager:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;->hasPassword(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public hasSelectedAnnotation()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;->mSpenPdfManager:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;->hasSelectedAnnotation()Z

    move-result v0

    return v0
.end method

.method public hasSelectedImage()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;->mSpenPdfManager:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;->hasSelectedImage()Z

    move-result v0

    return v0
.end method

.method public hasSelectedPDF()Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;->hasSelectedImage()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;->hasSelectedText()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;->getSelectedText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public hasSelectedText()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;->mSpenPdfManager:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;->hasSelectedText()Z

    move-result v0

    return v0
.end method

.method public init(Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;->mCacheDirPath:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;->mIsReadOnlyNoteData:Z

    return-void
.end method

.method public removeSelectedAnnotation()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;->mSpenPdfManager:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;->removeSelectedAnnotation()Z

    move-result v0

    return v0
.end method

.method public setAnnotation(I)Z
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAnnotation# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;->mSpenPdfManager:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;->setAnnotation(I)Z

    move-result p1

    return p1
.end method

.method public setAnnotation(II)Z
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAnnotation# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;->mSpenPdfManager:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;->setAnnotation(II)Z

    move-result p1

    return p1
.end method

.method public setListener(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager$AttachPdfStateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;->mAttachPdfStateListener:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager$AttachPdfStateListener;

    return-void
.end method

.method public setSpenNotePdfManager(Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;->mSpenPdfManager:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager$SpenNotePdfListenerImpl;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager$SpenNotePdfListenerImpl;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/a;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;->mSpenNotePdfListenerImpl:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager$SpenNotePdfListenerImpl;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;->mSpenPdfManager:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;->setListener(Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfListener;)V

    return-void
.end method

.method public unlock(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;->mSpenPdfManager:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;

    invoke-virtual {v0, p1, p3, p2}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;->copyFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public verifyPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;->mSpenPdfManager:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;->verifyPassword(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;->RESULT_TYPE_SUCCESS:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
