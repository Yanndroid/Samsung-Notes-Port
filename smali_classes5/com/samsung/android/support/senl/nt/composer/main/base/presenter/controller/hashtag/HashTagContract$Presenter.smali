.class public interface abstract Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagContract$Presenter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Presenter"
.end annotation


# virtual methods
.method public abstract getTagList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getView()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagContract$View;
.end method

.method public abstract onHashTagAdded(Ljava/lang/String;)V
.end method

.method public abstract onHashTagClicked(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public abstract onHashTagRemoved(Ljava/lang/String;)V
.end method

.method public abstract onHashTagRenamed(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract saveTagList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/TagData;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setTagListToComposerView(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setView(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagContract$View;)V
.end method
