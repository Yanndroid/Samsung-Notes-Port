.class public Lcom/samsung/android/sdk/smp/marketing/MarketingFilter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mInstallCount:I

.field private mInstallPkg:Lorg/json/JSONArray;

.field private mNotInstallCount:I

.field private mNotInstallPkg:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInstallCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/smp/marketing/MarketingFilter;->mInstallCount:I

    return v0
.end method

.method public getInstallPkg()Lorg/json/JSONArray;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/MarketingFilter;->mInstallPkg:Lorg/json/JSONArray;

    return-object v0
.end method

.method public getNotInstallCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/smp/marketing/MarketingFilter;->mNotInstallCount:I

    return v0
.end method

.method public getNotInstallPkg()Lorg/json/JSONArray;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/MarketingFilter;->mNotInstallPkg:Lorg/json/JSONArray;

    return-object v0
.end method

.method public setInstallCount(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/smp/marketing/MarketingFilter;->mInstallCount:I

    return-void
.end method

.method public setInstallPkg(Lorg/json/JSONArray;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/smp/marketing/MarketingFilter;->mInstallPkg:Lorg/json/JSONArray;

    return-void
.end method

.method public setNotInstallCount(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/smp/marketing/MarketingFilter;->mNotInstallCount:I

    return-void
.end method

.method public setNotInstallPkg(Lorg/json/JSONArray;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/smp/marketing/MarketingFilter;->mNotInstallPkg:Lorg/json/JSONArray;

    return-void
.end method
