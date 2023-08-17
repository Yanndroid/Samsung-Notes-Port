.class public Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSaveBackup$InputValues;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSaveBackup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputValues"
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mCacheList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager$CacheInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPageHeight:I

.field private final mPageWidth:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager$CacheInfo;",
            ">;II)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSaveBackup$InputValues;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSaveBackup$InputValues;->mCacheList:Ljava/util/List;

    iput p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSaveBackup$InputValues;->mPageWidth:I

    iput p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSaveBackup$InputValues;->mPageHeight:I

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSaveBackup$InputValues;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSaveBackup$InputValues;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSaveBackup$InputValues;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSaveBackup$InputValues;->mCacheList:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSaveBackup$InputValues;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSaveBackup$InputValues;->mPageHeight:I

    return p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSaveBackup$InputValues;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSaveBackup$InputValues;->mPageWidth:I

    return p0
.end method
