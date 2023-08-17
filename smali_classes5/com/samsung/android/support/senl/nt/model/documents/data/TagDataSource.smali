.class public interface abstract Lcom/samsung/android/support/senl/nt/model/documents/data/TagDataSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# virtual methods
.method public abstract cloneChangedSortedList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/TagData;",
            ">;"
        }
    .end annotation
.end method

.method public abstract cloneOriginalSortedList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/TagData;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isChanged()Z
.end method

.method public abstract save(Landroid/content/Context;Ljava/lang/String;)Z
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setChangedSortedList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/TagData;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setOriginalSortedList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/TagData;",
            ">;)V"
        }
    .end annotation
.end method
