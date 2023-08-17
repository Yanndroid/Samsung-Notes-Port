.class interface abstract Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$Contract;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Contract"
.end annotation


# virtual methods
.method public abstract attachLoadedDoc(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument<",
            "Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;",
            ">;)V"
        }
    .end annotation
.end method

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

.method public abstract clearStateForChangeDoc(ZZ)V
.end method

.method public abstract connectCoeditService(Z)V
.end method

.method public abstract getView()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerSubContract$IView;
.end method
