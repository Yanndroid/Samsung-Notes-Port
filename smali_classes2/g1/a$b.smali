.class public Lg1/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/client/IPublicClientApplication$ISingleAccountApplicationCreatedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg1/a;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lg1/a;


# direct methods
.method public constructor <init>(Lg1/a;)V
    .locals 0

    iput-object p1, p0, Lg1/a$b;->a:Lg1/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreated(Lcom/microsoft/identity/client/ISingleAccountPublicClientApplication;)V
    .locals 1

    iget-object v0, p0, Lg1/a$b;->a:Lg1/a;

    invoke-static {v0, p1}, Lg1/a;->d(Lg1/a;Lcom/microsoft/identity/client/IPublicClientApplication;)V

    iget-object p1, p0, Lg1/a$b;->a:Lg1/a;

    invoke-static {p1}, Lg1/a;->g(Lg1/a;)V

    return-void
.end method

.method public onError(Lcom/microsoft/identity/client/exception/MsalException;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error creating MSAL application"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/microsoft/identity/client/exception/MsalException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AuthenticationHelper"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lg1/a$b;->a:Lg1/a;

    invoke-static {p1}, Lg1/a;->g(Lg1/a;)V

    return-void
.end method
