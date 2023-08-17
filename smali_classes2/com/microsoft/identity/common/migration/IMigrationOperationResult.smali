.class public interface abstract Lcom/microsoft/identity/common/migration/IMigrationOperationResult;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getCountOfFailedRecords()I
.end method

.method public abstract getCountOfTotalRecords()I
.end method

.method public abstract getFailures()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method
