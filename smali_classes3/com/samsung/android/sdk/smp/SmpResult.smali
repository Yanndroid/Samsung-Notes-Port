.class public Lcom/samsung/android/sdk/smp/SmpResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private resultData:Landroid/os/Bundle;

.field private success:Z


# direct methods
.method public constructor <init>(ZLandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/samsung/android/sdk/smp/SmpResult;->success:Z

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    :goto_0
    iput-object p2, p0, Lcom/samsung/android/sdk/smp/SmpResult;->resultData:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public getResultData()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/SmpResult;->resultData:Landroid/os/Bundle;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/smp/SmpResult;->success:Z

    return v0
.end method
