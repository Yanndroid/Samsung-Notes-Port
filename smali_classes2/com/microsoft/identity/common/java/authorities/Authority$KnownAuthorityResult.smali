.class public Lcom/microsoft/identity/common/java/authorities/Authority$KnownAuthorityResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/common/java/authorities/Authority;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KnownAuthorityResult"
.end annotation


# instance fields
.field private mClientException:Lcom/microsoft/identity/common/java/exception/ClientException;

.field private mKnown:Z


# direct methods
.method public constructor <init>(ZLcom/microsoft/identity/common/java/exception/ClientException;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/microsoft/identity/common/java/authorities/Authority$KnownAuthorityResult;->mKnown:Z

    iput-object p2, p0, Lcom/microsoft/identity/common/java/authorities/Authority$KnownAuthorityResult;->mClientException:Lcom/microsoft/identity/common/java/exception/ClientException;

    return-void
.end method


# virtual methods
.method public getClientException()Lcom/microsoft/identity/common/java/exception/ClientException;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/authorities/Authority$KnownAuthorityResult;->mClientException:Lcom/microsoft/identity/common/java/exception/ClientException;

    return-object v0
.end method

.method public getKnown()Z
    .locals 1

    iget-boolean v0, p0, Lcom/microsoft/identity/common/java/authorities/Authority$KnownAuthorityResult;->mKnown:Z

    return v0
.end method
