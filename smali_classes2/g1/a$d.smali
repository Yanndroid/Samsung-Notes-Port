.class public Lg1/a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg1/a;->t(Lcom/microsoft/identity/client/IMultipleAccountPublicClientApplication$RemoveAccountCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/microsoft/identity/client/IMultipleAccountPublicClientApplication$RemoveAccountCallback;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lg1/a;


# direct methods
.method public constructor <init>(Lg1/a;Lcom/microsoft/identity/client/IMultipleAccountPublicClientApplication$RemoveAccountCallback;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lg1/a$d;->c:Lg1/a;

    iput-object p2, p0, Lg1/a$d;->a:Lcom/microsoft/identity/client/IMultipleAccountPublicClientApplication$RemoveAccountCallback;

    iput-object p3, p0, Lg1/a$d;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lk1/b;->d()Lk1/b;

    move-result-object v0

    invoke-virtual {v0}, Lk1/b;->c()Lcom/microsoft/identity/client/IAccount;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg1/a$d;->c:Lg1/a;

    invoke-static {v0}, Lg1/a;->b(Lg1/a;)Lcom/microsoft/identity/client/IPublicClientApplication;

    move-result-object v0

    check-cast v0, Lcom/microsoft/identity/client/IMultipleAccountPublicClientApplication;

    invoke-static {}, Lk1/b;->d()Lk1/b;

    move-result-object v1

    invoke-virtual {v1}, Lk1/b;->c()Lcom/microsoft/identity/client/IAccount;

    move-result-object v1

    iget-object v2, p0, Lg1/a$d;->a:Lcom/microsoft/identity/client/IMultipleAccountPublicClientApplication$RemoveAccountCallback;

    invoke-interface {v0, v1, v2}, Lcom/microsoft/identity/client/IMultipleAccountPublicClientApplication;->removeAccount(Lcom/microsoft/identity/client/IAccount;Lcom/microsoft/identity/client/IMultipleAccountPublicClientApplication$RemoveAccountCallback;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lg1/a$d;->c:Lg1/a;

    invoke-static {v0}, Lg1/a;->f(Lg1/a;)I

    move-result v0

    const-string v1, "AuthenticationHelper"

    if-lez v0, :cond_2

    const-string v0, "account id : 1"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lg1/a$d;->c:Lg1/a;

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

    const-string v3, "getAccounts. id : Ok"

    invoke-static {v1, v3}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/microsoft/identity/client/IAccount;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lg1/a$d;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "removeAccount id : equals"

    invoke-static {v1, v3}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lg1/a$d;->c:Lg1/a;

    invoke-static {v3}, Lg1/a;->b(Lg1/a;)Lcom/microsoft/identity/client/IPublicClientApplication;

    move-result-object v3

    check-cast v3, Lcom/microsoft/identity/client/IMultipleAccountPublicClientApplication;

    iget-object v4, p0, Lg1/a$d;->a:Lcom/microsoft/identity/client/IMultipleAccountPublicClientApplication$RemoveAccountCallback;

    invoke-interface {v3, v2, v4}, Lcom/microsoft/identity/client/IMultipleAccountPublicClientApplication;->removeAccount(Lcom/microsoft/identity/client/IAccount;Lcom/microsoft/identity/client/IMultipleAccountPublicClientApplication$RemoveAccountCallback;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lg1/a$d;->c:Lg1/a;

    invoke-static {v0}, Lg1/a;->f(Lg1/a;)I

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "getAccounts is empty (login info lost)"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lg1/a$d;->a:Lcom/microsoft/identity/client/IMultipleAccountPublicClientApplication$RemoveAccountCallback;

    invoke-interface {v0}, Lcom/microsoft/identity/client/IMultipleAccountPublicClientApplication$RemoveAccountCallback;->onRemoved()V

    :cond_3
    :goto_1
    return-void
.end method
