.class public Lcom/samsung/android/model/contractimpl/RequestSCloudContractImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSCloudContract;


# static fields
.field private static final TAG:Ljava/lang/String; = "RequestSCloudContractImpl"


# instance fields
.field private mAppContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/model/contractimpl/RequestSCloudContractImpl;->mAppContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getAuthorizationSync(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/model/contractimpl/RequestSCloudContractImpl;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lh2/a;->g(Landroid/content/Context;)Lh2/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lh2/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isDataNetworkAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/model/contractimpl/RequestSCloudContractImpl;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lc3/h;->e(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
