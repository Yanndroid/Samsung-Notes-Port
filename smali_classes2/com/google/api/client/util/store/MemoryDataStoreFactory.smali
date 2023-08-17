.class public Lcom/google/api/client/util/store/MemoryDataStoreFactory;
.super Lcom/google/api/client/util/store/AbstractDataStoreFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/util/store/MemoryDataStoreFactory$MemoryDataStore;,
        Lcom/google/api/client/util/store/MemoryDataStoreFactory$InstanceHolder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/api/client/util/store/AbstractDataStoreFactory;-><init>()V

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/api/client/util/store/MemoryDataStoreFactory;
    .locals 1

    sget-object v0, Lcom/google/api/client/util/store/MemoryDataStoreFactory$InstanceHolder;->INSTANCE:Lcom/google/api/client/util/store/MemoryDataStoreFactory;

    return-object v0
.end method


# virtual methods
.method public createDataStore(Ljava/lang/String;)Lcom/google/api/client/util/store/DataStore;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V::",
            "Ljava/io/Serializable;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/api/client/util/store/DataStore<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/api/client/util/store/MemoryDataStoreFactory$MemoryDataStore;

    invoke-direct {v0, p0, p1}, Lcom/google/api/client/util/store/MemoryDataStoreFactory$MemoryDataStore;-><init>(Lcom/google/api/client/util/store/MemoryDataStoreFactory;Ljava/lang/String;)V

    return-object v0
.end method
