.class public Lcom/samsung/android/model/contractimpl/RequestSamsungAccountContractImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSamsungAccountContract;


# instance fields
.field private mAppContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/model/contractimpl/RequestSamsungAccountContractImpl;->mAppContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/model/contractimpl/RequestSamsungAccountContractImpl;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lf/a;->m(Landroid/content/Context;)Lf/a;

    move-result-object v0

    invoke-virtual {v0}, Lf/a;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/model/contractimpl/RequestSamsungAccountContractImpl;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lf/a;->m(Landroid/content/Context;)Lf/a;

    move-result-object v0

    invoke-virtual {v0}, Lf/a;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isLogined()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/model/contractimpl/RequestSamsungAccountContractImpl;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lf/a;->m(Landroid/content/Context;)Lf/a;

    move-result-object v0

    invoke-virtual {v0}, Lf/a;->r()Z

    move-result v0

    return v0
.end method

.method public requestAuthInfo(Lcom/samsung/android/support/senl/nt/base/common/sync/IAuthInfoReqListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/model/contractimpl/RequestSamsungAccountContractImpl;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lf/a;->m(Landroid/content/Context;)Lf/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lf/a;->w(Lcom/samsung/android/support/senl/nt/base/common/sync/IAuthInfoReqListener;)V

    return-void
.end method
