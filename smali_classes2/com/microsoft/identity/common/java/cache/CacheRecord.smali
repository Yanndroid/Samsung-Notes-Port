.class public final Lcom/microsoft/identity/common/java/cache/CacheRecord;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/common/java/cache/ICacheRecord;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/identity/common/java/cache/CacheRecord$CacheRecordBuilder;
    }
.end annotation


# instance fields
.field private final mAccessToken:Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;

.field private final mAccount:Lcom/microsoft/identity/common/java/dto/AccountRecord;
    .annotation build Llombok/NonNull;
    .end annotation
.end field

.field private final mIdToken:Lcom/microsoft/identity/common/java/dto/IdTokenRecord;

.field private final mRefreshToken:Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;

.field private final mV1IdToken:Lcom/microsoft/identity/common/java/dto/IdTokenRecord;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/java/dto/AccountRecord;Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;Lcom/microsoft/identity/common/java/dto/IdTokenRecord;Lcom/microsoft/identity/common/java/dto/IdTokenRecord;)V
    .locals 1
    .param p1    # Lcom/microsoft/identity/common/java/dto/AccountRecord;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "account is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/microsoft/identity/common/java/cache/CacheRecord;->mAccount:Lcom/microsoft/identity/common/java/dto/AccountRecord;

    iput-object p2, p0, Lcom/microsoft/identity/common/java/cache/CacheRecord;->mAccessToken:Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;

    iput-object p3, p0, Lcom/microsoft/identity/common/java/cache/CacheRecord;->mRefreshToken:Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;

    iput-object p4, p0, Lcom/microsoft/identity/common/java/cache/CacheRecord;->mIdToken:Lcom/microsoft/identity/common/java/dto/IdTokenRecord;

    iput-object p5, p0, Lcom/microsoft/identity/common/java/cache/CacheRecord;->mV1IdToken:Lcom/microsoft/identity/common/java/dto/IdTokenRecord;

    return-void
.end method

.method public static builder()Lcom/microsoft/identity/common/java/cache/CacheRecord$CacheRecordBuilder;
    .locals 1

    new-instance v0, Lcom/microsoft/identity/common/java/cache/CacheRecord$CacheRecordBuilder;

    invoke-direct {v0}, Lcom/microsoft/identity/common/java/cache/CacheRecord$CacheRecordBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_a

    const-class v2, Lcom/microsoft/identity/common/java/cache/CacheRecord;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_4

    :cond_1
    check-cast p1, Lcom/microsoft/identity/common/java/cache/CacheRecord;

    iget-object v2, p0, Lcom/microsoft/identity/common/java/cache/CacheRecord;->mAccount:Lcom/microsoft/identity/common/java/dto/AccountRecord;

    if-eqz v2, :cond_2

    iget-object v3, p1, Lcom/microsoft/identity/common/java/cache/CacheRecord;->mAccount:Lcom/microsoft/identity/common/java/dto/AccountRecord;

    invoke-virtual {v2, v3}, Lcom/microsoft/identity/common/java/dto/AccountRecord;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/microsoft/identity/common/java/cache/CacheRecord;->mAccount:Lcom/microsoft/identity/common/java/dto/AccountRecord;

    if-eqz v2, :cond_3

    :goto_0
    return v1

    :cond_3
    iget-object v2, p0, Lcom/microsoft/identity/common/java/cache/CacheRecord;->mAccessToken:Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;

    if-eqz v2, :cond_4

    iget-object v3, p1, Lcom/microsoft/identity/common/java/cache/CacheRecord;->mAccessToken:Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;

    invoke-virtual {v2, v3}, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_4
    iget-object v2, p1, Lcom/microsoft/identity/common/java/cache/CacheRecord;->mAccessToken:Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;

    if-eqz v2, :cond_5

    :goto_1
    return v1

    :cond_5
    iget-object v2, p0, Lcom/microsoft/identity/common/java/cache/CacheRecord;->mRefreshToken:Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;

    if-eqz v2, :cond_6

    iget-object v3, p1, Lcom/microsoft/identity/common/java/cache/CacheRecord;->mRefreshToken:Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;

    invoke-virtual {v2, v3}, Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_2

    :cond_6
    iget-object v2, p1, Lcom/microsoft/identity/common/java/cache/CacheRecord;->mRefreshToken:Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;

    if-eqz v2, :cond_7

    :goto_2
    return v1

    :cond_7
    iget-object v2, p0, Lcom/microsoft/identity/common/java/cache/CacheRecord;->mIdToken:Lcom/microsoft/identity/common/java/dto/IdTokenRecord;

    iget-object p1, p1, Lcom/microsoft/identity/common/java/cache/CacheRecord;->mIdToken:Lcom/microsoft/identity/common/java/dto/IdTokenRecord;

    if-eqz v2, :cond_8

    invoke-virtual {v2, p1}, Lcom/microsoft/identity/common/java/dto/IdTokenRecord;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3

    :cond_8
    if-nez p1, :cond_9

    goto :goto_3

    :cond_9
    move v0, v1

    :goto_3
    return v0

    :cond_a
    :goto_4
    return v1
.end method

.method public getAccessToken()Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/cache/CacheRecord;->mAccessToken:Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;

    return-object v0
.end method

.method public getAccount()Lcom/microsoft/identity/common/java/dto/AccountRecord;
    .locals 1
    .annotation build Llombok/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/microsoft/identity/common/java/cache/CacheRecord;->mAccount:Lcom/microsoft/identity/common/java/dto/AccountRecord;

    return-object v0
.end method

.method public getIdToken()Lcom/microsoft/identity/common/java/dto/IdTokenRecord;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/cache/CacheRecord;->mIdToken:Lcom/microsoft/identity/common/java/dto/IdTokenRecord;

    return-object v0
.end method

.method public getRefreshToken()Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/cache/CacheRecord;->mRefreshToken:Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;

    return-object v0
.end method

.method public getV1IdToken()Lcom/microsoft/identity/common/java/dto/IdTokenRecord;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/cache/CacheRecord;->mV1IdToken:Lcom/microsoft/identity/common/java/dto/IdTokenRecord;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/microsoft/identity/common/java/cache/CacheRecord;->mAccount:Lcom/microsoft/identity/common/java/dto/AccountRecord;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/dto/AccountRecord;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/microsoft/identity/common/java/cache/CacheRecord;->mAccessToken:Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/microsoft/identity/common/java/cache/CacheRecord;->mRefreshToken:Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/microsoft/identity/common/java/cache/CacheRecord;->mIdToken:Lcom/microsoft/identity/common/java/dto/IdTokenRecord;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/dto/IdTokenRecord;->hashCode()I

    move-result v1

    :cond_3
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CacheRecord(mAccount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/cache/CacheRecord;->getAccount()Lcom/microsoft/identity/common/java/dto/AccountRecord;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mAccessToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/cache/CacheRecord;->getAccessToken()Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mRefreshToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/cache/CacheRecord;->getRefreshToken()Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mIdToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/cache/CacheRecord;->getIdToken()Lcom/microsoft/identity/common/java/dto/IdTokenRecord;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mV1IdToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/cache/CacheRecord;->getV1IdToken()Lcom/microsoft/identity/common/java/dto/IdTokenRecord;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
