.class Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/SOMBasePresenter$SOMDocumentServiceManager;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/SOMBasePresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SOMDocumentServiceManager"
.end annotation


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/ServiceContract;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/ServiceContract<",
            "Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/ServiceContract;)V

    return-void
.end method


# virtual methods
.method public createCustomSaveStrategy()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CustomSaveStrategy;
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/SOMBasePresenter$SOMSaveStrategy;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/SOMBasePresenter$SOMSaveStrategy;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/a;)V

    return-object v0
.end method
