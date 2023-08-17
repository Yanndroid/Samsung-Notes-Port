.class public Lcom/sec/android/app/voicenote/common/util/TextData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/sec/android/app/voicenote/common/util/TextData;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x622d451692fc707dL


# instance fields
.field public ConfidenceScore:D

.field public dataType:I

.field public duration:J

.field public elapsedTime:J

.field public mText:[Ljava/lang/String;

.field public timeStamp:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/voicenote/common/util/TextData;->dataType:I

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/voicenote/common/util/TextData;->mText:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/voicenote/common/util/TextData;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/voicenote/common/util/TextData;->dataType:I

    iget-object v1, p1, Lcom/sec/android/app/voicenote/common/util/TextData;->mText:[Ljava/lang/String;

    array-length v1, v1

    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/android/app/voicenote/common/util/TextData;->mText:[Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/android/app/voicenote/common/util/TextData;->mText:[Ljava/lang/String;

    invoke-static {v3, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-wide v0, p1, Lcom/sec/android/app/voicenote/common/util/TextData;->ConfidenceScore:D

    iput-wide v0, p0, Lcom/sec/android/app/voicenote/common/util/TextData;->ConfidenceScore:D

    iget-wide v0, p1, Lcom/sec/android/app/voicenote/common/util/TextData;->timeStamp:J

    iput-wide v0, p0, Lcom/sec/android/app/voicenote/common/util/TextData;->timeStamp:J

    iget-wide v0, p1, Lcom/sec/android/app/voicenote/common/util/TextData;->elapsedTime:J

    iput-wide v0, p0, Lcom/sec/android/app/voicenote/common/util/TextData;->elapsedTime:J

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public compareTo(Lcom/sec/android/app/voicenote/common/util/TextData;)I
    .locals 4
    .param p1    # Lcom/sec/android/app/voicenote/common/util/TextData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-wide v0, p0, Lcom/sec/android/app/voicenote/common/util/TextData;->timeStamp:J

    iget-wide v2, p1, Lcom/sec/android/app/voicenote/common/util/TextData;->timeStamp:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    cmp-long p1, v0, v2

    if-gez p1, :cond_1

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

    check-cast p1, Lcom/sec/android/app/voicenote/common/util/TextData;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/voicenote/common/util/TextData;->compareTo(Lcom/sec/android/app/voicenote/common/util/TextData;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    instance-of v0, p1, Lcom/sec/android/app/voicenote/common/util/TextData;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/sec/android/app/voicenote/common/util/TextData;

    iget-object v0, p0, Lcom/sec/android/app/voicenote/common/util/TextData;->mText:[Ljava/lang/String;

    iget-object v2, p1, Lcom/sec/android/app/voicenote/common/util/TextData;->mText:[Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v2, p0, Lcom/sec/android/app/voicenote/common/util/TextData;->ConfidenceScore:D

    iget-wide v4, p1, Lcom/sec/android/app/voicenote/common/util/TextData;->ConfidenceScore:D

    cmpl-double v0, v2, v4

    if-nez v0, :cond_1

    iget-wide v2, p0, Lcom/sec/android/app/voicenote/common/util/TextData;->timeStamp:J

    iget-wide v4, p1, Lcom/sec/android/app/voicenote/common/util/TextData;->timeStamp:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    iget-wide v2, p0, Lcom/sec/android/app/voicenote/common/util/TextData;->elapsedTime:J

    iget-wide v4, p1, Lcom/sec/android/app/voicenote/common/util/TextData;->elapsedTime:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
