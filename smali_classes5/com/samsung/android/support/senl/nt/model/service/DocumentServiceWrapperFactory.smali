.class public Lcom/samsung/android/support/senl/nt/model/service/DocumentServiceWrapperFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "DocumentServiceWrapperFactory"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/samsung/android/support/senl/nt/model/service/IDocumentService;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/nt/model/service/IDocumentService;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/samsung/android/support/senl/nt/model/service/DocumentServiceWrapperFactory;->create(Lcom/samsung/android/support/senl/nt/model/service/IDocumentService;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper$DocumentSubscriptionListener;)Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;

    move-result-object p1

    return-object p1
.end method

.method public create(Lcom/samsung/android/support/senl/nt/model/service/IDocumentService;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper$DocumentSubscriptionListener;)Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;
    .locals 2
    .param p1    # Lcom/samsung/android/support/senl/nt/model/service/IDocumentService;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper$DocumentSubscriptionListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "create, service : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", userName : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", restoredId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", listener : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DocumentServiceWrapperFactory"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/model/service/DocumentServiceWrapper;

    invoke-static {p2, p3}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;->create(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    move-result-object p2

    invoke-direct {v0, p1, p2, p4}, Lcom/samsung/android/support/senl/nt/model/service/DocumentServiceWrapper;-><init>(Lcom/samsung/android/support/senl/nt/model/service/IDocumentService;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper$DocumentSubscriptionListener;)V

    return-object v0
.end method
