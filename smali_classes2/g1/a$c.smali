.class public Lg1/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg1/a;->i(Lcom/microsoft/identity/client/AuthenticationCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/microsoft/identity/client/AuthenticationCallback;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lg1/a;


# direct methods
.method public constructor <init>(Lg1/a;Ljava/lang/String;Lcom/microsoft/identity/client/AuthenticationCallback;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lg1/a$c;->d:Lg1/a;

    iput-object p2, p0, Lg1/a$c;->a:Ljava/lang/String;

    iput-object p3, p0, Lg1/a$c;->b:Lcom/microsoft/identity/client/AuthenticationCallback;

    iput-object p4, p0, Lg1/a$c;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    invoke-static {}, Lk1/b;->d()Lk1/b;

    move-result-object v0

    invoke-virtual {v0}, Lk1/b;->c()Lcom/microsoft/identity/client/IAccount;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg1/a$c;->d:Lg1/a;

    invoke-static {v0}, Lg1/a;->b(Lg1/a;)Lcom/microsoft/identity/client/IPublicClientApplication;

    move-result-object v0

    check-cast v0, Lcom/microsoft/identity/client/IMultipleAccountPublicClientApplication;

    iget-object v1, p0, Lg1/a$c;->d:Lg1/a;

    invoke-static {v1}, Lg1/a;->c(Lg1/a;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lk1/b;->d()Lk1/b;

    move-result-object v2

    invoke-virtual {v2}, Lk1/b;->c()Lcom/microsoft/identity/client/IAccount;

    move-result-object v2

    iget-object v3, p0, Lg1/a$c;->a:Ljava/lang/String;

    iget-object v4, p0, Lg1/a$c;->b:Lcom/microsoft/identity/client/AuthenticationCallback;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/microsoft/identity/client/IMultipleAccountPublicClientApplication;->acquireTokenSilentAsync([Ljava/lang/String;Lcom/microsoft/identity/client/IAccount;Ljava/lang/String;Lcom/microsoft/identity/client/SilentAuthenticationCallback;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lg1/a$c;->d:Lg1/a;

    invoke-static {v0}, Lg1/a;->f(Lg1/a;)I

    move-result v0

    const-string v1, "AuthenticationHelper"

    if-lez v0, :cond_2

    const-string v0, "account id : 1"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lg1/a$c;->d:Lg1/a;

    invoke-static {v0}, Lg1/a;->a(Lg1/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/identity/client/IAccount;

    const-string v3, "getAccounts. id : OK"

    invoke-static {v1, v3}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/microsoft/identity/client/IAccount;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lg1/a$c;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "acquireTokenSilentAsync. id : equals OK"

    invoke-static {v1, v3}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lg1/a$c;->d:Lg1/a;

    invoke-static {v3}, Lg1/a;->b(Lg1/a;)Lcom/microsoft/identity/client/IPublicClientApplication;

    move-result-object v3

    check-cast v3, Lcom/microsoft/identity/client/IMultipleAccountPublicClientApplication;

    iget-object v4, p0, Lg1/a$c;->d:Lg1/a;

    invoke-static {v4}, Lg1/a;->c(Lg1/a;)[Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lg1/a$c;->a:Ljava/lang/String;

    iget-object v6, p0, Lg1/a$c;->b:Lcom/microsoft/identity/client/AuthenticationCallback;

    invoke-interface {v3, v4, v2, v5, v6}, Lcom/microsoft/identity/client/IMultipleAccountPublicClientApplication;->acquireTokenSilentAsync([Ljava/lang/String;Lcom/microsoft/identity/client/IAccount;Ljava/lang/String;Lcom/microsoft/identity/client/SilentAuthenticationCallback;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lg1/a$c;->d:Lg1/a;

    invoke-static {v0}, Lg1/a;->f(Lg1/a;)I

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "getAccounts is empty (login info lost)"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lg1/a$c;->d:Lg1/a;

    invoke-static {v0}, Lg1/a;->e(Lg1/a;)V

    :cond_3
    :goto_1
    return-void
.end method
