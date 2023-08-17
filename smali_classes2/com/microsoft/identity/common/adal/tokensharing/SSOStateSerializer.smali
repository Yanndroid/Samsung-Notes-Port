.class public final Lcom/microsoft/identity/common/adal/tokensharing/SSOStateSerializer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final GSON:Lcom/google/gson/Gson;


# instance fields
.field private final mTokenCacheItems:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tokenCacheItems"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;",
            ">;"
        }
    .end annotation
.end field

.field private final version:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "version"
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    const-class v1, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;

    new-instance v2, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenCacheItemSerializationAdapater;

    invoke-direct {v2}, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenCacheItemSerializationAdapater;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    sput-object v0, Lcom/microsoft/identity/common/adal/tokensharing/SSOStateSerializer;->GSON:Lcom/google/gson/Gson;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/microsoft/identity/common/adal/tokensharing/SSOStateSerializer;->version:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/microsoft/identity/common/adal/tokensharing/SSOStateSerializer;->mTokenCacheItems:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/microsoft/identity/common/adal/tokensharing/SSOStateSerializer;->version:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/microsoft/identity/common/adal/tokensharing/SSOStateSerializer;->mTokenCacheItems:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "tokenItem is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static deserialize(Ljava/lang/String;)Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;
    .locals 1

    new-instance v0, Lcom/microsoft/identity/common/adal/tokensharing/SSOStateSerializer;

    invoke-direct {v0}, Lcom/microsoft/identity/common/adal/tokensharing/SSOStateSerializer;-><init>()V

    invoke-direct {v0, p0}, Lcom/microsoft/identity/common/adal/tokensharing/SSOStateSerializer;->internalDeserialize(Ljava/lang/String;)Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;

    move-result-object p0

    return-object p0
.end method

.method private getTokenItem()Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;
    .locals 3

    iget-object v0, p0, Lcom/microsoft/identity/common/adal/tokensharing/SSOStateSerializer;->mTokenCacheItems:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/identity/common/adal/tokensharing/SSOStateSerializer;->mTokenCacheItems:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;

    return-object v0

    :cond_0
    new-instance v0, Lcom/microsoft/identity/common/java/exception/ClientException;

    const-string/jumbo v1, "token_cache_item_not_found"

    const-string v2, "There is no token cache item in the SSOStateContainer."

    invoke-direct {v0, v1, v2}, Lcom/microsoft/identity/common/java/exception/ClientException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method private getVersion()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private internalDeserialize(Ljava/lang/String;)Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;
    .locals 5

    const-string/jumbo v0, "version"

    const-string/jumbo v1, "token_sharing_deserialization_error"

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0}, Lcom/microsoft/identity/common/adal/tokensharing/SSOStateSerializer;->getVersion()I

    move-result v4

    if-ne v3, v4, :cond_0

    sget-object v0, Lcom/microsoft/identity/common/adal/tokensharing/SSOStateSerializer;->GSON:Lcom/google/gson/Gson;

    const-class v2, Lcom/microsoft/identity/common/adal/tokensharing/SSOStateSerializer;

    invoke-virtual {v0, p1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/identity/common/adal/tokensharing/SSOStateSerializer;

    invoke-direct {p1}, Lcom/microsoft/identity/common/adal/tokensharing/SSOStateSerializer;->getTokenItem()Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Lcom/microsoft/identity/common/java/exception/ClientException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail to deserialize because the blob version is incompatible. The version of the serializedBlob is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ". And the target class version is "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/microsoft/identity/common/adal/tokensharing/SSOStateSerializer;->getVersion()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Lcom/microsoft/identity/common/java/exception/ClientException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lcom/google/gson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    new-instance v0, Lcom/microsoft/identity/common/java/exception/ClientException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/microsoft/identity/common/java/exception/ClientException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method private internalSerialize()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/microsoft/identity/common/adal/tokensharing/SSOStateSerializer;->GSON:Lcom/google/gson/Gson;

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static serialize(Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;)Ljava/lang/String;
    .locals 1

    new-instance v0, Lcom/microsoft/identity/common/adal/tokensharing/SSOStateSerializer;

    invoke-direct {v0, p0}, Lcom/microsoft/identity/common/adal/tokensharing/SSOStateSerializer;-><init>(Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;)V

    invoke-direct {v0}, Lcom/microsoft/identity/common/adal/tokensharing/SSOStateSerializer;->internalSerialize()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
