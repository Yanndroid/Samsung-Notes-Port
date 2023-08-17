.class public interface abstract Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl$Contract;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Contract"
.end annotation


# virtual methods
.method public abstract attachLoadedDoc(Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument<",
            "Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract closeOldDoc()V
.end method

.method public abstract connectCoeditService(Z)V
.end method

.method public abstract getView()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerSubContract$IView;
.end method

.method public abstract openDocument(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract resetOldNote()V
.end method

.method public abstract setUuidToHandoffSender()V
.end method
