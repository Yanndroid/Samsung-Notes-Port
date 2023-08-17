.class public Lcom/microsoft/identity/client/TokenShareResult;
.super Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareResultInternal;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/identity/client/TokenShareResult$TokenShareExportFormat;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/adal/internal/tokensharing/ITokenShareResultInternal;)V
    .locals 2
    .param p1    # Lcom/microsoft/identity/common/adal/internal/tokensharing/ITokenShareResultInternal;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-interface {p1}, Lcom/microsoft/identity/common/adal/internal/tokensharing/ITokenShareResultInternal;->getCacheRecord()Lcom/microsoft/identity/common/java/cache/ICacheRecord;

    move-result-object v0

    invoke-interface {p1}, Lcom/microsoft/identity/common/adal/internal/tokensharing/ITokenShareResultInternal;->getRefreshToken()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/microsoft/identity/common/adal/internal/tokensharing/ITokenShareResultInternal;->getFormat()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareResultInternal;-><init>(Lcom/microsoft/identity/common/java/cache/ICacheRecord;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getFormat()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareResultInternal;->getFormat()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
