.class public Lcom/samsung/android/sdk/scs/ai/suggestion/AppCategoryResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mCategoryId:I

.field private mCategoryString:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/samsung/android/sdk/scs/ai/suggestion/AppCategoryResult;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/suggestion/AppCategoryResult;

    invoke-direct {v0}, Lcom/samsung/android/sdk/scs/ai/suggestion/AppCategoryResult;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getCategoryId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/scs/ai/suggestion/AppCategoryResult;->mCategoryId:I

    return v0
.end method

.method public getCategoryString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/suggestion/AppCategoryResult;->mCategoryString:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/suggestion/AppCategoryResult;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public setCategoryId(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/scs/ai/suggestion/AppCategoryResult;->mCategoryId:I

    return-void
.end method

.method public setCategoryString(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/suggestion/AppCategoryResult;->mCategoryString:Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/suggestion/AppCategoryResult;->mPackageName:Ljava/lang/String;

    return-void
.end method
