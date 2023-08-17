.class public Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerPdfCheckerTask$Result;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerPdfCheckerTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field public mDownloadedPdfPath:Ljava/lang/String;

.field public mErrorCode:I

.field public mIsOpenReader:Z

.field public mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerPdfCheckerTask$Result;->mUri:Landroid/net/Uri;

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerPdfCheckerTask$Result;->mErrorCode:I

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerPdfCheckerTask$Result;->mDownloadedPdfPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDownloadedPdfPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerPdfCheckerTask$Result;->mDownloadedPdfPath:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerPdfCheckerTask$Result;->mErrorCode:I

    return v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerPdfCheckerTask$Result;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isOpenReader()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerPdfCheckerTask$Result;->mIsOpenReader:Z

    return v0
.end method

.method public setErrorCode(I)V
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/AddPdfUtil;->getConvertErrorCode(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerPdfCheckerTask$Result;->mErrorCode:I

    return-void
.end method

.method public setOpenReader(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerPdfCheckerTask$Result;->mIsOpenReader:Z

    return-void
.end method

.method public showErrorToast(Landroid/content/Context;)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerPdfCheckerTask$Result;->mErrorCode:I

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/AddPdfUtil;->showErrorToast(Landroid/content/Context;IZ)V

    return-void
.end method
