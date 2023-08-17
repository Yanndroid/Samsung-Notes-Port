.class public interface abstract Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/ReloadDocListener$Contract;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/ReloadDocListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Contract"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onFailedToReload()V
.end method

.method public abstract onReloaded(Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument<",
            "TT;>;)V"
        }
    .end annotation
.end method
