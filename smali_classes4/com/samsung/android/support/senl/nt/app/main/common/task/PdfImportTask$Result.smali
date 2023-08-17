.class public Lcom/samsung/android/support/senl/nt/app/main/common/task/PdfImportTask$Result;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager$TaskResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/common/task/PdfImportTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field public final mErrorCode:I

.field public final mIsCancelled:Z

.field public final mSuccessCount:I


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/task/PdfImportTask$Result;->mSuccessCount:I

    iput p2, p0, Lcom/samsung/android/support/senl/nt/app/main/common/task/PdfImportTask$Result;->mErrorCode:I

    iput-boolean p3, p0, Lcom/samsung/android/support/senl/nt/app/main/common/task/PdfImportTask$Result;->mIsCancelled:Z

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/task/PdfImportTask$Result;->mErrorCode:I

    return v0
.end method

.method public getSuccessCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/task/PdfImportTask$Result;->mSuccessCount:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const-string v0, "PdfImportTask"

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/task/PdfImportTask$Result;->mIsCancelled:Z

    return v0
.end method
