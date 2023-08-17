.class public Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate$ResultValues;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResultValues"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mErrorCode:I

.field private final mPathList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate$ResultValues;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate$ResultValues;->mPathList:Ljava/util/List;

    iput p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate$ResultValues;->mErrorCode:I

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate$ResultValues;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate$ResultValues;->mErrorCode:I

    return v0
.end method

.method public getPathList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate$ResultValues;->mPathList:Ljava/util/List;

    return-object v0
.end method

.method public showErrorToast(Z)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;->h()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showErrorToast#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate$ResultValues;->mErrorCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate$ResultValues;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate$ResultValues;->mErrorCode:I

    invoke-static {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/AddPdfUtil;->showErrorToast(Landroid/content/Context;IZ)V

    return-void
.end method
