.class public Lcom/microsoft/identity/common/java/cache/CacheRecord$CacheRecordBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/common/java/cache/CacheRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CacheRecordBuilder"
.end annotation


# instance fields
.field private accessToken:Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;

.field private account:Lcom/microsoft/identity/common/java/dto/AccountRecord;

.field private idToken:Lcom/microsoft/identity/common/java/dto/IdTokenRecord;

.field private refreshToken:Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;

.field private v1IdToken:Lcom/microsoft/identity/common/java/dto/IdTokenRecord;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accessToken(Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;)Lcom/microsoft/identity/common/java/cache/CacheRecord$CacheRecordBuilder;
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/cache/CacheRecord$CacheRecordBuilder;->accessToken:Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;

    return-object p0
.end method

.method public account(Lcom/microsoft/identity/common/java/dto/AccountRecord;)Lcom/microsoft/identity/common/java/cache/CacheRecord$CacheRecordBuilder;
    .locals 1
    .param p1    # Lcom/microsoft/identity/common/java/dto/AccountRecord;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    const-string v0, "account is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/microsoft/identity/common/java/cache/CacheRecord$CacheRecordBuilder;->account:Lcom/microsoft/identity/common/java/dto/AccountRecord;

    return-object p0
.end method

.method public build()Lcom/microsoft/identity/common/java/cache/CacheRecord;
    .locals 7

    new-instance v6, Lcom/microsoft/identity/common/java/cache/CacheRecord;

    iget-object v1, p0, Lcom/microsoft/identity/common/java/cache/CacheRecord$CacheRecordBuilder;->account:Lcom/microsoft/identity/common/java/dto/AccountRecord;

    iget-object v2, p0, Lcom/microsoft/identity/common/java/cache/CacheRecord$CacheRecordBuilder;->accessToken:Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;

    iget-object v3, p0, Lcom/microsoft/identity/common/java/cache/CacheRecord$CacheRecordBuilder;->refreshToken:Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;

    iget-object v4, p0, Lcom/microsoft/identity/common/java/cache/CacheRecord$CacheRecordBuilder;->idToken:Lcom/microsoft/identity/common/java/dto/IdTokenRecord;

    iget-object v5, p0, Lcom/microsoft/identity/common/java/cache/CacheRecord$CacheRecordBuilder;->v1IdToken:Lcom/microsoft/identity/common/java/dto/IdTokenRecord;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/identity/common/java/cache/CacheRecord;-><init>(Lcom/microsoft/identity/common/java/dto/AccountRecord;Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;Lcom/microsoft/identity/common/java/dto/IdTokenRecord;Lcom/microsoft/identity/common/java/dto/IdTokenRecord;)V

    return-object v6
.end method

.method public idToken(Lcom/microsoft/identity/common/java/dto/IdTokenRecord;)Lcom/microsoft/identity/common/java/cache/CacheRecord$CacheRecordBuilder;
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/cache/CacheRecord$CacheRecordBuilder;->idToken:Lcom/microsoft/identity/common/java/dto/IdTokenRecord;

    return-object p0
.end method

.method public mAccount(Lcom/microsoft/identity/common/java/dto/AccountRecord;)Lcom/microsoft/identity/common/java/cache/CacheRecord$CacheRecordBuilder;
    .locals 1
    .param p1    # Lcom/microsoft/identity/common/java/dto/AccountRecord;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "The account record for a CacheRecord may not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/microsoft/identity/common/java/cache/CacheRecord$CacheRecordBuilder;->account:Lcom/microsoft/identity/common/java/dto/AccountRecord;

    return-object p0
.end method

.method public refreshToken(Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;)Lcom/microsoft/identity/common/java/cache/CacheRecord$CacheRecordBuilder;
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/cache/CacheRecord$CacheRecordBuilder;->refreshToken:Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CacheRecord.CacheRecordBuilder(account="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/microsoft/identity/common/java/cache/CacheRecord$CacheRecordBuilder;->account:Lcom/microsoft/identity/common/java/dto/AccountRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", accessToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/microsoft/identity/common/java/cache/CacheRecord$CacheRecordBuilder;->accessToken:Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", refreshToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/microsoft/identity/common/java/cache/CacheRecord$CacheRecordBuilder;->refreshToken:Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", idToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/microsoft/identity/common/java/cache/CacheRecord$CacheRecordBuilder;->idToken:Lcom/microsoft/identity/common/java/dto/IdTokenRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", v1IdToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/microsoft/identity/common/java/cache/CacheRecord$CacheRecordBuilder;->v1IdToken:Lcom/microsoft/identity/common/java/dto/IdTokenRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v1IdToken(Lcom/microsoft/identity/common/java/dto/IdTokenRecord;)Lcom/microsoft/identity/common/java/cache/CacheRecord$CacheRecordBuilder;
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/cache/CacheRecord$CacheRecordBuilder;->v1IdToken:Lcom/microsoft/identity/common/java/dto/IdTokenRecord;

    return-object p0
.end method
