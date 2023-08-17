.class public Lcom/samsung/android/support/senl/nt/stt/base/model/paint/PaintIndexInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final UNSET:I = -0x1


# instance fields
.field private mEndIndex:I

.field private mStartIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/model/paint/PaintIndexInfo;->mStartIndex:I

    iput v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/model/paint/PaintIndexInfo;->mEndIndex:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/support/senl/nt/stt/base/model/paint/PaintIndexInfo;->mStartIndex:I

    iput p2, p0, Lcom/samsung/android/support/senl/nt/stt/base/model/paint/PaintIndexInfo;->mEndIndex:I

    return-void
.end method


# virtual methods
.method public getEndIndex()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/model/paint/PaintIndexInfo;->mEndIndex:I

    return v0
.end method

.method public getStartIndex()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/model/paint/PaintIndexInfo;->mStartIndex:I

    return v0
.end method

.method public setEndIndex(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/stt/base/model/paint/PaintIndexInfo;->mEndIndex:I

    return-void
.end method

.method public setStartIndex(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/stt/base/model/paint/PaintIndexInfo;->mStartIndex:I

    return-void
.end method
