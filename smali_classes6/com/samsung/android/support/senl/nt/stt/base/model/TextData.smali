.class Lcom/samsung/android/support/senl/nt/stt/base/model/TextData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/samsung/android/support/senl/nt/stt/base/model/TextData;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private final mEndTime:I

.field private final mStartTime:I

.field private mText:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/base/model/TextData;->mText:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/support/senl/nt/stt/base/model/TextData;->mStartTime:I

    iput p3, p0, Lcom/samsung/android/support/senl/nt/stt/base/model/TextData;->mEndTime:I

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public compareTo(Lcom/samsung/android/support/senl/nt/stt/base/model/TextData;)I
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/nt/stt/base/model/TextData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/model/TextData;->mStartTime:I

    iget p1, p1, Lcom/samsung/android/support/senl/nt/stt/base/model/TextData;->mStartTime:I

    if-le v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-ge v0, p1, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/samsung/android/support/senl/nt/stt/base/model/TextData;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/stt/base/model/TextData;->compareTo(Lcom/samsung/android/support/senl/nt/stt/base/model/TextData;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/samsung/android/support/senl/nt/stt/base/model/TextData;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/samsung/android/support/senl/nt/stt/base/model/TextData;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/model/TextData;->mText:Ljava/lang/String;

    iget-object v2, p1, Lcom/samsung/android/support/senl/nt/stt/base/model/TextData;->mText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/model/TextData;->mStartTime:I

    iget v2, p1, Lcom/samsung/android/support/senl/nt/stt/base/model/TextData;->mStartTime:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/model/TextData;->mEndTime:I

    iget p1, p1, Lcom/samsung/android/support/senl/nt/stt/base/model/TextData;->mEndTime:I

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getEndTime()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/model/TextData;->mEndTime:I

    return v0
.end method

.method public getStartTime()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/model/TextData;->mStartTime:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/model/TextData;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getTextLength()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/model/TextData;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public trimText()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/model/TextData;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/model/TextData;->mText:Ljava/lang/String;

    return-void
.end method
