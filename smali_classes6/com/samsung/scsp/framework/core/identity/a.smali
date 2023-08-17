.class public final synthetic Lcom/samsung/scsp/framework/core/identity/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/samsung/scsp/framework/core/identity/AccountInfoSupplier;)Z
    .locals 1

    invoke-interface {p0}, Lcom/samsung/scsp/framework/core/identity/AccountInfoSupplier;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/scsp/framework/core/util/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lcom/samsung/scsp/framework/core/identity/AccountInfoSupplier;->getUserId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/scsp/framework/core/util/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static b(Lcom/samsung/scsp/framework/core/identity/AccountInfoSupplier;)V
    .locals 0

    invoke-static {}, Lcom/samsung/scsp/framework/core/identity/ScspIdentity;->signOut()V

    return-void
.end method

.method public static c(Lcom/samsung/scsp/framework/core/identity/AccountInfoSupplier;)V
    .locals 0

    invoke-static {}, Lcom/samsung/scsp/framework/core/identity/ScspIdentity;->updateAccount()V

    return-void
.end method
