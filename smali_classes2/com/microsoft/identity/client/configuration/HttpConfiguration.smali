.class public Lcom/microsoft/identity/client/configuration/HttpConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mConnectTimeout:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "connect_timeout"
    .end annotation
.end field

.field private mReadTimeout:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "read_timeout"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConnectTimeout()I
    .locals 1

    iget v0, p0, Lcom/microsoft/identity/client/configuration/HttpConfiguration;->mConnectTimeout:I

    return v0
.end method

.method public getReadTimeout()I
    .locals 1

    iget v0, p0, Lcom/microsoft/identity/client/configuration/HttpConfiguration;->mReadTimeout:I

    return v0
.end method

.method public setConnectTimeout(I)V
    .locals 0

    iput p1, p0, Lcom/microsoft/identity/client/configuration/HttpConfiguration;->mConnectTimeout:I

    return-void
.end method

.method public setReadTimeout(I)V
    .locals 0

    iput p1, p0, Lcom/microsoft/identity/client/configuration/HttpConfiguration;->mReadTimeout:I

    return-void
.end method
