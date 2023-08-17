.class public Lcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

.field private mTextIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;->mTextIndex:I

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;->mTextIndex:I

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;->set(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;I)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;->mTextIndex:I

    iget-object v0, p1, Lcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    iget p1, p1, Lcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;->mTextIndex:I

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;->set(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;I)V

    return-void
.end method


# virtual methods
.method public getObject()Lcom/samsung/android/sdk/pen/document/SpenObjectBase;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    return-object v0
.end method

.method public getTextIndex()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;->mTextIndex:I

    return v0
.end method

.method public set(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;I)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    iput p2, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;->mTextIndex:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid source"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
