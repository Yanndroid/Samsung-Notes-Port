.class public interface abstract Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/common/IConvertStatus;


# virtual methods
.method public abstract getDstType()I
.end method

.method public abstract getFailedCount()I
.end method

.method public abstract getPathList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getProgressCount()I
.end method

.method public abstract getSrcType()I
.end method

.method public abstract getState()I
.end method

.method public abstract getStorageFailedCount()I
.end method

.method public abstract getSuccessCount()I
.end method

.method public abstract getTotalCount()I
.end method

.method public abstract getUuid()Ljava/lang/String;
.end method

.method public abstract getUuidList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasMultipleUuids()Z
.end method
