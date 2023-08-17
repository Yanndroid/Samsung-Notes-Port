.class public Lcom/samsung/android/support/senl/nt/base/common/sync/CAServerKeyHelper$Result;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/base/common/sync/CAServerKeyHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field public mErrorReason:I

.field public mKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/base/common/sync/CAServerKeyHelper$Result;->mErrorReason:I

    return-void
.end method


# virtual methods
.method public getCAKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/sync/CAServerKeyHelper$Result;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorReason()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/common/sync/CAServerKeyHelper$Result;->mErrorReason:I

    return v0
.end method
