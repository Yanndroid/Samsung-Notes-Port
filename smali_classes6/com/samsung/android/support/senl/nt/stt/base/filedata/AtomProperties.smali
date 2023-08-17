.class public Lcom/samsung/android/support/senl/nt/stt/base/filedata/AtomProperties;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mLength:I

.field private mPosition:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/AtomProperties;->mLength:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/AtomProperties;->mPosition:J

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/AtomProperties;->mLength:I

    iput-wide p2, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/AtomProperties;->mPosition:J

    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/AtomProperties;->mLength:I

    return v0
.end method

.method public getPosition()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/AtomProperties;->mPosition:J

    return-wide v0
.end method

.method public setLength(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/AtomProperties;->mLength:I

    return-void
.end method

.method public setPosition(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/AtomProperties;->mPosition:J

    return-void
.end method
