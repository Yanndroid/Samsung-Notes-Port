.class public Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenDocumentRepositoryFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mCaller:Ljava/lang/String;

.field private final mDocumentSubscriptionId:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

.field private final mLoadPath:Ljava/lang/String;

.field private final mLockConfirm:Ljava/lang/String;

.field private final mSavePath:Ljava/lang/String;

.field private final mUuid:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenDocumentRepositoryFactory;->mUuid:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenDocumentRepositoryFactory;->mLoadPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenDocumentRepositoryFactory;->mSavePath:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenDocumentRepositoryFactory;->mLockConfirm:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenDocumentRepositoryFactory;->mCaller:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenDocumentRepositoryFactory;->mDocumentSubscriptionId:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenDocumentRepositoryFactory;
    .locals 8
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v7, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenDocumentRepositoryFactory;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenDocumentRepositoryFactory;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)V

    return-object v7
.end method


# virtual methods
.method public createWordDocRepository()Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenWordDocRepository;
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenDocumentRepositoryFactory;->mUuid:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenDocumentRepositoryFactory;->mLoadPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenDocumentRepositoryFactory;->mSavePath:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenDocumentRepositoryFactory;->mLockConfirm:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenDocumentRepositoryFactory;->mCaller:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenDocumentRepositoryFactory;->mDocumentSubscriptionId:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenWordDocRepository;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenWordDocRepository;

    move-result-object v0

    return-object v0
.end method
