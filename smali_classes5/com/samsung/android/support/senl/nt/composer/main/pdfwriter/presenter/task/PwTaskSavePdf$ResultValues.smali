.class public Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSavePdf$ResultValues;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareCommon$ResultValues;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSavePdf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResultValues"
.end annotation


# instance fields
.field private mErrorCode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareCommon$ResultValues;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareCommon$ResultValues;-><init>(Landroid/content/Context;)V

    iput p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSavePdf$ResultValues;->mErrorCode:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareCommon$ResultValues;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method public isIOError()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSavePdf$ResultValues;->mErrorCode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
