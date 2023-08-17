.class public interface abstract Lcom/microsoft/identity/common/adal/internal/tokensharing/ITokenShareResultInternal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/identity/common/adal/internal/tokensharing/ITokenShareResultInternal$TokenShareExportFormatInternal;
    }
.end annotation


# virtual methods
.method public abstract getCacheRecord()Lcom/microsoft/identity/common/java/cache/ICacheRecord;
.end method

.method public abstract getFormat()Ljava/lang/String;
.end method

.method public abstract getRefreshToken()Ljava/lang/String;
.end method
