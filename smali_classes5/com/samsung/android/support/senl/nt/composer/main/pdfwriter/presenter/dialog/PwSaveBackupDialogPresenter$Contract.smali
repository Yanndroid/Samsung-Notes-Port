.class public interface abstract Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/dialog/PwSaveBackupDialogPresenter$Contract;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/dialog/PwSaveBackupDialogPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Contract"
.end annotation


# virtual methods
.method public abstract clearData()V
.end method

.method public abstract getCacheList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager$CacheInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPageSize([I)V
.end method
