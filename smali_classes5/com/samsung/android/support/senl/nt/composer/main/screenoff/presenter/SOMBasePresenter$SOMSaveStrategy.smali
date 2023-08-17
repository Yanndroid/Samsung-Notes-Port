.class Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/SOMBasePresenter$SOMSaveStrategy;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CustomSaveStrategy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/SOMBasePresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SOMSaveStrategy"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CustomSaveStrategy;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/SOMBasePresenter$SOMSaveStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method public onCacheLoadFailed(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;)V
    .locals 1

    const v0, 0x10808

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->setSaveStrategy(I)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    return-void
.end method

.method public onClose(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;",
            "Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument<",
            "Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;",
            ">;)V"
        }
    .end annotation

    const/16 p2, 0xc40

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->setSaveStrategy(I)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    return-void
.end method

.method public onOpen(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;)V
    .locals 1

    const v0, 0x10808

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->setSaveStrategy(I)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    return-void
.end method

.method public onSave(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;)V
    .locals 1

    const v0, 0x10808

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->setSaveStrategy(I)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    return-void
.end method

.method public onSaveCache(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;)V
    .locals 1

    const/16 v0, 0x440

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->setSaveStrategy(I)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    return-void
.end method
