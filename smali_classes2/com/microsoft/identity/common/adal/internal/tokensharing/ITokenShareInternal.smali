.class public interface abstract Lcom/microsoft/identity/common/adal/internal/tokensharing/ITokenShareInternal;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getMsaFamilyRefreshToken(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getMsaFamilyRefreshTokenWithMetadata(Ljava/lang/String;)Lcom/microsoft/identity/common/adal/internal/tokensharing/ITokenShareResultInternal;
.end method

.method public abstract getOrgIdFamilyRefreshToken(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getOrgIdFamilyRefreshTokenWithMetadata(Ljava/lang/String;)Lcom/microsoft/identity/common/adal/internal/tokensharing/ITokenShareResultInternal;
.end method

.method public abstract saveMsaFamilyRefreshToken(Ljava/lang/String;)V
.end method

.method public abstract saveOrgIdFamilyRefreshToken(Ljava/lang/String;)V
.end method
