.class public interface abstract Lcom/samsung/android/support/senl/nt/data/contract/RequestCollectContract;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract cancelCollect()V
.end method

.method public abstract getSourceType(I)I
    .param p1    # I
        .annotation build Lcom/samsung/android/support/senl/nt/data/common/constants/SearchConstants$Source;
        .end annotation
    .end param
.end method

.method public abstract pausePdfCollect()V
.end method

.method public abstract resumePdfCollect()V
.end method

.method public abstract startCollect(Ljava/lang/String;Ljava/lang/String;JLjava/util/List;IZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IZ)V"
        }
    .end annotation
.end method
