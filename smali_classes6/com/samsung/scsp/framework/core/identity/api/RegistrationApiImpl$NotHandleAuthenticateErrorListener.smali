.class Lcom/samsung/scsp/framework/core/identity/api/RegistrationApiImpl$NotHandleAuthenticateErrorListener;
.super Lcom/samsung/scsp/framework/core/DefaultErrorListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/scsp/framework/core/identity/api/RegistrationApiImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotHandleAuthenticateErrorListener"
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/scsp/framework/core/DefaultErrorListener;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/samsung/scsp/framework/core/identity/api/RegistrationApiImpl$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/scsp/framework/core/identity/api/RegistrationApiImpl$NotHandleAuthenticateErrorListener;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleRegistrationRequired(Lcom/samsung/scsp/framework/core/ScspException;)V
    .locals 0

    return-void
.end method

.method public handleUnauthenticatedForSC(Lcom/samsung/scsp/framework/core/ScspException;Lcom/samsung/scsp/framework/core/network/HttpRequest;)V
    .locals 0

    return-void
.end method
