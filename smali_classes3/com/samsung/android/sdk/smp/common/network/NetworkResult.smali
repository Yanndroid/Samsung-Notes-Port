.class public Lcom/samsung/android/sdk/smp/common/network/NetworkResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mIsSuccess:Z

.field private final mResponseCode:I

.field private final mResponseMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/samsung/android/sdk/smp/common/network/NetworkResult;->mIsSuccess:Z

    iput p2, p0, Lcom/samsung/android/sdk/smp/common/network/NetworkResult;->mResponseCode:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/sdk/smp/common/network/NetworkResult;->mResponseMsg:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ZILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/samsung/android/sdk/smp/common/network/NetworkResult;->mIsSuccess:Z

    iput p2, p0, Lcom/samsung/android/sdk/smp/common/network/NetworkResult;->mResponseCode:I

    iput-object p3, p0, Lcom/samsung/android/sdk/smp/common/network/NetworkResult;->mResponseMsg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getResponseCode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/smp/common/network/NetworkResult;->mResponseCode:I

    return v0
.end method

.method public getResponseMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/common/network/NetworkResult;->mResponseMsg:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/smp/common/network/NetworkResult;->mIsSuccess:Z

    return v0
.end method
