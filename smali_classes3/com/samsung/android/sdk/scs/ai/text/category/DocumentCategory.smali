.class public Lcom/samsung/android/sdk/scs/ai/text/category/DocumentCategory;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private categoryId:J

.field private categoryName:Ljava/lang/String;

.field private categoryScore:D


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/samsung/android/sdk/scs/ai/text/category/DocumentCategory;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/text/category/DocumentCategory;

    invoke-direct {v0}, Lcom/samsung/android/sdk/scs/ai/text/category/DocumentCategory;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/scs/ai/text/category/DocumentCategory;->categoryId:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/text/category/DocumentCategory;->categoryName:Ljava/lang/String;

    return-object v0
.end method

.method public getScore()D
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/scs/ai/text/category/DocumentCategory;->categoryScore:D

    return-wide v0
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/scs/ai/text/category/DocumentCategory;->categoryId:J

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/text/category/DocumentCategory;->categoryName:Ljava/lang/String;

    return-void
.end method

.method public setScore(D)V
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    iput-wide p1, p0, Lcom/samsung/android/sdk/scs/ai/text/category/DocumentCategory;->categoryScore:D

    return-void
.end method
