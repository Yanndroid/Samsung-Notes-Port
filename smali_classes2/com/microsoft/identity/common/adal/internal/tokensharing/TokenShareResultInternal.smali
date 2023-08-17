.class public Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareResultInternal;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/common/adal/internal/tokensharing/ITokenShareResultInternal;


# instance fields
.field private final mCacheRecord:Lcom/microsoft/identity/common/java/cache/ICacheRecord;

.field private final mFormat:Ljava/lang/String;

.field private final mRefreshToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/java/cache/ICacheRecord;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Lcom/microsoft/identity/common/java/cache/ICacheRecord;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareResultInternal;->mCacheRecord:Lcom/microsoft/identity/common/java/cache/ICacheRecord;

    iput-object p2, p0, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareResultInternal;->mRefreshToken:Ljava/lang/String;

    iput-object p3, p0, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareResultInternal;->mFormat:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCacheRecord()Lcom/microsoft/identity/common/java/cache/ICacheRecord;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareResultInternal;->mCacheRecord:Lcom/microsoft/identity/common/java/cache/ICacheRecord;

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareResultInternal;->mFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getRefreshToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareResultInternal;->mRefreshToken:Ljava/lang/String;

    return-object v0
.end method
