.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/ActivityResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mData:Landroid/content/Intent;

.field private mRequestCode:I

.field private mResultCode:I


# direct methods
.method public constructor <init>(IILandroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/ActivityResult;->mRequestCode:I

    iput p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/ActivityResult;->mResultCode:I

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/ActivityResult;->mData:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public getData()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/ActivityResult;->mData:Landroid/content/Intent;

    return-object v0
.end method

.method public getRequestCode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/ActivityResult;->mRequestCode:I

    return v0
.end method

.method public getResultCode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/ActivityResult;->mResultCode:I

    return v0
.end method
